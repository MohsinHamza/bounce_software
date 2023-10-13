
import 'package:bonus_software/views/create_notification_rule/widget/bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/style.dart';
import '../role/role_view.dart';
import '../user/user_view.dart';

class CreateNotificationRuleView extends StatefulWidget {
    const CreateNotificationRuleView({Key? key}) : super(key: key);

  @override
  State<CreateNotificationRuleView> createState() => _CreateNotificationRuleViewState();
}

class _CreateNotificationRuleViewState extends State<CreateNotificationRuleView> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Text('cancel', style: AppTextStyle.backSemiBold
              ),
            ),
          ],
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Notification Rule', style: AppTextStyle.bodyText),
          ],
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text('Save', style: AppTextStyle.greyBodyText,),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Text(" NAME", style: AppTextStyle.greyBodyText,),
            const SizedBox(height: 10,),

            ContainerWidget(text:  'Notification Name',
              widget:  Text('Add name',style: AppTextStyle.greyBodyText,),),
            const SizedBox(height: 10,),
            Text(" TOPIC TYPE", style: AppTextStyle.greyBodyText,),
            const SizedBox(height: 10,),

            ContainerWidget(text:  'Topic',widget:  InkWell(

              onTap: (){
                showModalBottomSheet (
                  context: context,
                  builder: (BuildContext context) {
                    return MyBottomSheet();
                  },
                );
              },
              child: Row(
                children: [
                  Text('Select ',style: AppTextStyle.greyBodyText,),
                  Icon(Icons.arrow_forward_ios , color: AppColors.greyColor,size: 16,)
                ],
              ),
            ),),
            SizedBox(height: 10,),
            Text(" FILTER", style: AppTextStyle.greyBodyText,),
            SizedBox(height: 10,),

            ContainerWidget(text:  'Roles',widget:  InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return RoleView();

                }));
              },
              child: Row(
                children: [
                  Text('Select ',style: AppTextStyle.greyBodyText,),
                  Icon(Icons.arrow_forward_ios , color: AppColors.greyColor,size: 16,)
                ],
              ),
            ),),
            SizedBox(height: 10,),

            ContainerWidget(text:  'Users',widget:  InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return UserView();

                }));
              },
              child: Row(
                children: [
                  Text('Select ',style: AppTextStyle.greyBodyText,),
                  Icon(Icons.arrow_forward_ios , color: AppColors.greyColor,size: 16,)
                ],
              ),
            ),),
            SizedBox(height: 10,),
            Text(" KEYWORDS", style: AppTextStyle.greyBodyText,),
            SizedBox(height: 10,),
            ContainerWidget(text:  'KEYWORDS',widget:  Row(
              children: [
                Text('Add ',style: AppTextStyle.greyBodyText,),
                Icon(Icons.arrow_forward_ios , color: AppColors.greyColor,size: 16,)
              ],
            ),),
            SizedBox(height: 10,),
            Text(" SOUNDS", style: AppTextStyle.greyBodyText,),
            SizedBox(height: 10,),
            ContainerWidget(text:  'Custom sounds',widget:  Row(
              children: [
                Text('Add ',style: AppTextStyle.greyBodyText,),
                Icon(Icons.arrow_forward_ios , color: AppColors.greyColor,size: 16,)
              ],
            ),),
            SizedBox(height: 10,),
            Text(" Status", style: AppTextStyle.greyBodyText,),
            SizedBox(height: 10,),
            ContainerWidget(text:  'Notification 3 ',
              widget:  CupertinoSwitch(
                activeColor: AppColors.accentColor,
             value: switchValue,
            onChanged: (value) {
              setState(() {
                switchValue = value;
              });
             } )),


          ],
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
    ContainerWidget({
    super.key,
    this.text,
      this.widget
  });

  final String? text;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: height * 0.06,
      decoration: BoxDecoration(
        color: AppColors.containerBgColor,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text ?? '' , style: AppTextStyle.bodyText,),
             widget!,

          ],
        ),
      ),
    );
  }
}
