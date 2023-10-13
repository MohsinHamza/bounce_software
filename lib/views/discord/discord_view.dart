 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/style.dart';



class DiscordView extends StatelessWidget {
  const DiscordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child:SingleChildScrollView(
            child: Column(
              children: [
                const DiscordWidget(image: 'assets/pngs/footLocker.png',title: "FootLocker",),
                Divider(color: AppColors.greyColor,thickness: 0.3,),
                const DiscordWidget(image: 'assets/pngs/snkrs.png',title:  'Snkrs Exclusive',),
                Divider(color: AppColors.greyColor,thickness: 0.3,),

                const DiscordWidget(image: 'assets/pngs/footLocker.png',title: "FootLocker",),
                Divider(color: AppColors.greyColor,thickness: 0.3,),


                const DiscordWidget(
                  image: 'assets/pngs/snkrs.png',
                  title:  'Snkrs Exclusive',
                  iconImage: 'assets/pngs/discord.png',
                  imageHeight: 80,

                ),
                Divider(color: AppColors.greyColor,thickness: 0.3,),

                const DiscordWidget(image: 'assets/pngs/footLocker.png',title: "FootLocker",),
                Divider(color: AppColors.greyColor,thickness: 0.3,),


                const DiscordWidget(
                  image: 'assets/pngs/snkrs.png',
                  title:  'Snkrs Exclusive',
                  iconImage: 'assets/pngs/discord.png',
                  imageHeight: 80,

                ),
                Divider(color: AppColors.greyColor,thickness: 0.3,),


              ],
            ),
          )
        ),
      ),
    );
  }
}

class DiscordWidget extends StatelessWidget {
  const DiscordWidget({
    super.key,
    this.image,
    this.title,
    this.iconImage,
    this.imageHeight

  });
  final String? image;
  final String? title;
  final String? iconImage;
  final double? imageHeight;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(image ?? '', height: 70,

              width: 60,),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title ?? '', style: AppTextStyle.bodyText),

                      Text("#channel", style: AppTextStyle.h1SemiBold),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("@everyone", style: AppTextStyle.h1SemiBold),
                       Text("10 minutes ago", style: AppTextStyle.greyBodyText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),
        Text("SNKRS just dropped the new Dunk Low...", style: AppTextStyle.greyBodyText),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
              Text("https://www.footlocker.com/product/adidas", style: AppTextStyle.h1SemiBold),
              SizedBox(height: 10,),

              Text("https://www.footlocker.com/product/adidas-superstar", style: AppTextStyle.h1SemiBold),
            ],
          ),
           Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              iconImage ?? 'assets/pngs/arrow.png',
              height: imageHeight ?? 30,width : 60,),
          )
        ],),


      ],
    );
  }
}
