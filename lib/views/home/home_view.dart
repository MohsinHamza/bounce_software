import 'package:bonus_software/views/home/widgets/app_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../core/style.dart';
import '../../widgets/common_button.dart';
import '../discord/discord_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    style: AppTextStyle.greyBodyText
                        .copyWith(color: Colors.white, fontSize: 16),
                    decoration: const InputDecoration(
                        hintText: 'Filter for messages',
                        prefixIcon: Icon(Icons.search)),
                  )),
                  SizedBox(
                    width: 60,
                    child: SvgPicture.asset(
                      'assets/pngs/filter.svg',
                      height: 30,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.pin_fill,
                    color: AppColors.accentColor,
                    size: 20,
                  ),
                  Text(
                    '  Pinned Messages',
                    style: AppTextStyle.h1SemiBold.copyWith(fontSize: 16),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              HomeCardWidget(),
              SizedBox(
                height: 10,
              ),
              Text(
                '01/08/2023',
                style: AppTextStyle.greyBodyText.copyWith(fontSize: 16),
              ),
              HomeCardWidget(),
              SizedBox(
                height: 10,
              ),
              Text(
                '01/08/2023',
                style: AppTextStyle.greyBodyText.copyWith(fontSize: 16),
              ),
              HomeCardWidget(),
              const SizedBox(
                height: 10,
              ),
              Text(
                '01/08/2023',
                style: AppTextStyle.greyBodyText.copyWith(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.containerBgColor,
          borderRadius: BorderRadius.circular(6)),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
                // Replace with your profile image
                ),
            title: Text(
              'Welcome Member',
              style: AppTextStyle.bodyText,
            ),
            subtitle: Text(
              'Notification Role',
              style: AppTextStyle.h1SemiBold.copyWith(fontSize: 14),
            ),
            trailing: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const HomeBottomSheet();
                    });
              },
              child: Container(
                  height: 25,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      gradient: RadialGradient(
                        radius: 4,
                        center: Alignment.bottomCenter,
                        colors: [
                          Color(0xff8973E9).withOpacity(.256),
                          Color(0xff8973E9).withOpacity(.1),
                          Color(0xffCE81FB).withOpacity(.0),
                        ],
                      )),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.accentColor,
                  )),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '10 min ago',
            style: AppTextStyle.bodyText.copyWith(fontSize: 12),
          ),
          SizedBox(height: 8),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur'
            ' adipiscing elit, sed do eiusmod tempor'
            ' incididunt ut labore et dolore magna aliqua.'
            ' Ut enim ad minim veniam, quis nostrud exercitation ullamco.',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          Divider(),

          // Add more ListTile widgets as needed
        ],
      ),
    );
  }
}

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      alignment: Alignment.bottomCenter,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: AppColors.bgColor,
      insetPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      content: Builder(builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Notification Rule 12',
                style: AppTextStyle.bodyText,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: CircleAvatar(),
              title: Text(
                'Cattus#9999',
                style: AppTextStyle.bodyText,
              ),
              subtitle: Text(
                '#Channel',
                style: AppTextStyle.h1SemiBold.copyWith(fontSize: 10),
              ),
              trailing: Text('10 min ago', style: AppTextStyle.bodyText),
            ),
            SizedBox(height: 8),
            Text(
              'Text Messages',
              style: AppTextStyle.greyBodyText,
            ),
            SizedBox(height: 8),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.bodyText),
            SizedBox(height: 10),
            Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.bodyText),
            SizedBox(height: 10),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: AppColors.containerBgColor,
                  borderRadius: BorderRadius.circular(8)),
            ),
            SizedBox(height: 16),
            Text('Links', style: AppTextStyle.greyBodyText),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () async {
                launchUrlString(
                    'https://www.nike.com/de/launch/t/acg-moc-anthracite');
              },
              child: Text('https://www.nike.com/de/launch/t/acg-moc-anthracite',
                  style: AppTextStyle.h1SemiBold.copyWith(
                      fontSize: 14, decoration: TextDecoration.underline)),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () async {
                launchUrlString(
                    'https://www.nike.com/de/launch/t/acg-moc-anthracite');
              },
              child: Text('https://www.nike.com/de/launch/t/acg-moc-anthracite',
                  style: AppTextStyle.h1SemiBold.copyWith(
                      fontSize: 14, decoration: TextDecoration.underline)),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () async {
                launchUrlString(
                    'https://www.nike.com/de/launch/t/acg-moc-anthracite');
              },
              child: Text('https://www.nike.com/de/launch/t/acg-moc-anthracite',
                  style: AppTextStyle.h1SemiBold.copyWith(
                      fontSize: 14, decoration: TextDecoration.underline)),
            ),
            const SizedBox(height: 8),
            const SizedBox(height: 16),
            ElevatedButtonWidget(
              buttonText: 'Open in Discord',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const DiscordView();
                }));
              },
            )
          ],
        );
      }),
    );
  }
}
