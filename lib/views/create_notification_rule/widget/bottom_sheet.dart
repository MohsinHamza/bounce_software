  import 'package:flutter/material.dart';

import '../../../core/style.dart';
import '../../../widgets/common_button.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgColor,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Select Topic',
            style: AppTextStyle.h1Bold.copyWith(fontSize: 18),
          ),
          SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              color: AppColors.containerBgColor,
              borderRadius: BorderRadius.circular(8)

            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 10,top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text('Role' , style: AppTextStyle.bodyText,),
                  SizedBox(height: 10,),
                  Divider(color: AppColors.greyColor,thickness: 0.1,),
                  SizedBox(height: 10,),
                  Text('Channel' , style: AppTextStyle.bodyText,),
                  SizedBox(height: 10,),
                  Divider(color: AppColors.greyColor,thickness: 0.1,),
                  SizedBox(height: 10,),
                  Text('Category' , style: AppTextStyle.bodyText,),
                  SizedBox(height: 10,),
                   SizedBox(height: 10,),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
         ElevatedButtonWidget(buttonText: 'Save'),
          SizedBox(height: 30,),
        ],
      ),
    );
  }

  Widget _buildItem(String text) {
    return Column(
      children: [
        Text(text),
        SizedBox(height: 8),
      ],
    );
  }

  Widget _buildLine() {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey,
      margin: EdgeInsets.symmetric(vertical: 8),
    );
  }
}
