


 import 'package:flutter/material.dart';

import '../../core/style.dart';


class RoleView extends StatelessWidget {
  const RoleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios,size: 16,color: AppColors.accentColor,),
              Text("Back", style: AppTextStyle.backSemiBold,),
            ],
          ),
        ),
      ),
      title: Text("Roles", style: AppTextStyle.bodyText,),
    ),

      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [

            TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search)
              ),
            ),
        SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Text('Roles' , style: AppTextStyle.greyBodyText,)  ,
               Text('6 Roles' , style: AppTextStyle.greyBodyText,)
              ],
            ),
            SizedBox(height: 10,),

            RoleContainerWidget()

           ],
        ),
      ),
    );
  }
}



class RoleContainerWidget extends StatefulWidget {
  @override
  _RoleContainerWidgetState createState() => _RoleContainerWidgetState();
}

class _RoleContainerWidgetState extends State<RoleContainerWidget> {
  List<bool> isSelected = List.generate(7, (index) => false);

  List<String> roleList = [

    '@admin',
    '@staff',
    '@role'
    '@role'
    '@role'
    '@role'
    '@role'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.containerBgColor,
        borderRadius: BorderRadius.circular(8)

      ),
      child: Column(
        children: List.generate(7, (index) {
          return Column(
            children: [
              Container(
                height: 40,
                child: ListTile(
                  title: Text('@admin ${index + 1}',style: AppTextStyle.bodyText,),
                  onTap: () {
                    setState(() {
                      isSelected[index] = !isSelected[index];
                    });
                  },
                  trailing: index == 6 && isSelected.contains(false)
                      ? null
                      : isSelected[index]
                      ? Icon(Icons.check, color: Colors.green)
                      : null,
                ),
              ),
              Divider(color: AppColors.greyColor,thickness: 0.2,),
            ],
          );
        }),
      ),
    );
  }
}
