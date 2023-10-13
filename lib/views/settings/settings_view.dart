  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/style.dart';
import '../create_notification_rule/create_notification_rule_view.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {

  bool switchValue = true;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.sizeOf(context).height ;
    double width = MediaQuery.sizeOf(context).width ;

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: ListView(
        children: [
          SafeArea(
              bottom: false,
              child: Center(
                child: Container(
                  // color: ColorPallet.white,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 12,
                  child: Text(
                    "Settings",
                    style: AppTextStyle.h1Bold,
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 19, bottom: 7, left: 28),
            child: Text(
              'User Profile',
              style: AppTextStyle.h2Regular.copyWith(
                fontSize: 14
              ),
            ),
          ),
          SizedBox(
            height: height *  0.1,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              children: List.generate(
                5,
                (index) => InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const CreateNotificationRuleView();
                    }));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                     width: 118,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff9877F7).withOpacity(.1)),
                        borderRadius: BorderRadius.circular(8),
                        gradient: RadialGradient(
                          radius: .8,
                          center: Alignment.topCenter,
                          colors: [
                            Color(0xff8973E9).withOpacity(.256),
                            Color(0xff8973E9).withOpacity(.1),
                            Color(0xffCE81FB).withOpacity(.0),
                          ],
                        )
                    ),
                    child: Center(
                      child:  index == 0 ? Image.asset('assets/pngs/bounce.png') : Image.asset('assets/pngs/bounce2.png') ,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            decoration: (BoxDecoration(color: AppColors.containerBgColor, borderRadius: BorderRadius.circular(8))),
            margin: EdgeInsets.symmetric(horizontal: 11),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            index == 0 ? 'All Notifications' : 'Notification $index',
                            style: index == 0 ? AppTextStyle.h1Bold : AppTextStyle.h1Regular,
                          ),
                          CupertinoSwitch(

                              activeColor: AppColors.accentColor, value: switchValue, onChanged: (value) {
                            setState(() {
                               switchValue = value;
                            });

                          })
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => Container(
                      height: .5,
                      color: AppColors.hintColor,
                    ),
                itemCount: 4),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'User Profile',
                  style: AppTextStyle.h2Regular.copyWith(fontSize: 14),
                ),
                Icon(
                  CupertinoIcons.add,
                  size: 16,
                  color: AppColors.accentColor,
                )
              ],
            ),
          ),
          const SizedBox(height: 8),

            Container(

               decoration: (BoxDecoration(color: AppColors.containerBgColor, borderRadius: BorderRadius.circular(8))),
              margin: const EdgeInsets.symmetric(horizontal: 11),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
               child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 9),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  index == 0 ? 'Sneaker ' : 'NFTs',
                                  style: AppTextStyle.h1Bold,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Last notification 24 hours ago',
                                  style: AppTextStyle.h2Regular.copyWith(
                                    fontSize: 10,

                                      color: AppColors.greyColor),
                                ),
                              ],
                            ),
                            Container(
                              height: height * 0.04,
                              width: width * 0.1,
                              decoration: (BoxDecoration(
                                color: AppColors.accentColor.withOpacity(.1),
                                borderRadius: BorderRadius.circular(6),
                              )),
                              child: Icon(
                                Icons.edit_outlined,
                                size: 16,
                                color: AppColors.accentColor,
                              ),
                            )
                          ],
                        ),
                      ),
                  separatorBuilder: (context, index) => Container(
                        height: 0.5,
                        color: AppColors.hintColor,
                      ),
                  itemCount: 4),
            ),
          const SizedBox(height: 12),
          Container(
            height: height * 0.05,
            child: Center(
              child: Text(
                'Logout',
                style: AppTextStyle.h1Bold.copyWith(
                  fontSize: 14
                ),
              ),
            ),
            decoration: (BoxDecoration(color: AppColors.containerBgColor, borderRadius: BorderRadius.circular(8))),
            margin: EdgeInsets.symmetric(horizontal: 11),
            padding: EdgeInsets.symmetric(vertical: 9),
          ),
          SizedBox(
            height: 10 + MediaQuery.of(context).padding.bottom,
          )
        ],
      ),
    );
  }
}

class RoleTile extends StatelessWidget {
  const RoleTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 6, bottom: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '@Roles',
            style: AppTextStyle.h1Regular,
          ),
          Icon(
            CupertinoIcons.checkmark_alt,
            color: AppColors.accentColor,
            size: 14,
          ),
        ],
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  const UserTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 6, bottom: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.hintColor,
                radius: 7,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'User',
                style: AppTextStyle.h1Regular,
              ),
            ],
          ),
          Icon(
            CupertinoIcons.checkmark_alt,
            color: AppColors.accentColor,
            size: 14,
          ),
        ],
      ),
    );
  }
}
