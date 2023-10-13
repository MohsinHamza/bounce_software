 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/style.dart';

class ListResultView extends StatelessWidget {
  final String title;
  final List<dynamic> items;
  const ListResultView({Key? key, required this.title, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          SafeArea(
              bottom: false,
              child: Container(
                // color: ColorPallet.white,
                padding: EdgeInsets.symmetric(horizontal: 11),
                height: 11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 40,
                      child: CupertinoButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Center(
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 12,
                                color: AppColors.accentColor,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Back',
                              style: AppTextStyle.h1Regular.copyWith(color: AppColors.accentColor),
                            )
                          ],
                        ),
                      ),
                    ),
                    Text(
                      title,
                      style: AppTextStyle.h1Bold,
                    ),
                    SizedBox(
                      width: 40,
                    )
                  ],
                ),
              )),
          Container(
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.search,
                  size: 12,
                  color: AppColors.hintColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Center(
                    child: TextField(
                      style: AppTextStyle.h1Regular.copyWith(color: AppColors.greyColor),
                      textAlignVertical: TextAlignVertical.center,
                      cursorColor: AppColors.hintColor,
                      cursorHeight: 11,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        hintStyle: AppTextStyle.h1Regular.copyWith(color: AppColors.hintColor),
                        hintText: 'Search',
                        isDense: true,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
            padding: EdgeInsets.fromLTRB(7, 7, 7, 5),
            height: 29,
            decoration: (BoxDecoration(color: AppColors.containerBgColor, borderRadius: BorderRadius.circular(8))),
            margin: EdgeInsets.symmetric(vertical: 19, horizontal: 11),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppTextStyle.h1Regular.copyWith(color: AppColors.lightWhite),
                ),
                Text(
                  '${items.length} ${title.toUpperCase()}',
                  style: AppTextStyle.h1Regular.copyWith(color: AppColors.lightWhite),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 10 + MediaQuery.of(context).padding.bottom),
              child: Container(
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => title == "Roles" ? RoleTile() : UserTile(),
                    separatorBuilder: (context, index) => Container(
                          height: .5,
                          color: AppColors.hintColor,
                        ),
                    itemCount: items.length),
                padding: EdgeInsets.fromLTRB(10, 7, 10, 5),
                // height: items.length * 34,
                decoration: (BoxDecoration(color: AppColors.containerBgColor, borderRadius: BorderRadius.circular(8))),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 11),
              ),
            ),
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
