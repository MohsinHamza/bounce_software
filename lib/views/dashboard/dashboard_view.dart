
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/style.dart';
 import '../home/home_view.dart';
import '../settings/settings_view.dart';
class MainPageView extends StatefulWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  final PageController _controller = PageController(initialPage: 0);
  int _selectedMenu = 0;

  // @override
  // void initState() {
  //   NotificationService().getExistingNotificationRole().then((value) {
  //     mySubscribtions = value;
  //     setState(() {});
  //   });
  //
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: AppColors.containerBgColor,
        height: 50 + MediaQuery.of(context).padding.bottom,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                _selectedMenu = 0;
                _controller.jumpToPage(0);
                setState(() {});
              },
              child: Container(
                margin: const EdgeInsets.only(top: 7),
                decoration: BoxDecoration(
                  color: _selectedMenu == 0 ? AppColors.accentColor.withOpacity(.1) : AppColors.containerBgColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                height: 36,
                width: 68,
                child: Center(
                  child: SvgPicture.asset(
                    _selectedMenu == 0 ? 'assets/icons/homefill.svg' : 'assets/icons/home.svg',
                    height: 16.5,
                  ),
                ),
              ),
            ),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                _selectedMenu = 1;
                _controller.jumpToPage(1);
                setState(() {});
              },
              child: Container(
                margin: EdgeInsets.only(top: 7),
                decoration: BoxDecoration(
                  color: _selectedMenu == 1 ? AppColors.accentColor.withOpacity(.1) : AppColors.containerBgColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                height: 36,
                width: 68,
                child: Center(
                  child: SvgPicture.asset(
                    _selectedMenu == 1 ? 'assets/icons/settingsFill.svg' : 'assets/icons/settings.svg',
                    height: 16.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _controller,
        children: const [

          HomeView(),
          SettingsView()],
      ),
    );
  }
}