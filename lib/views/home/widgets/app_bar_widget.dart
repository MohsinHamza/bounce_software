import 'package:flutter/material.dart';

import '../../../core/style.dart';




class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  AppBarWidgetState createState() =>  AppBarWidgetState();
}

class  AppBarWidgetState extends State<AppBarWidget> {
  String _selectedItem = 'Item 1';
  final List<String> _dropdownItems = ['Notify', 'Notify', 'Notify', 'Notify'];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black12,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: SizedBox(
        height: kToolbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/pngs/bounce2.png'),
                PopupMenuButton(
                  color: AppColors.bgColor,

                  onSelected: (String selectedItem) {
                    setState(() {
                      _selectedItem = selectedItem;
                    });
                  },
                  itemBuilder: (BuildContext context) {
                    return _dropdownItems.map((String item) {
                      return PopupMenuItem<String>(
                        value: item,
                        child: Text(item,style: AppTextStyle.bodyText,),
                      );
                    }).toList();
                  },
                  child: Row(
                    children: [
                      Text(
                        'Select Server',
                        style: AppTextStyle.greyBodyText,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                border: Border.all(
                  color: AppColors.accentColor,
                  width: 1.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}