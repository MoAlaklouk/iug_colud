import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iug_cloud/Modules/Trainers_side/myTrainee/myTraineeDetails_screen.dart';

import '../../../Helpers/assets_color.dart';
import '../../../Helpers/style_manager.dart';

class MyTraineeScreen extends StatelessWidget {
  const MyTraineeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'My Trainee',
            style: getBoldStyle(fontSize: 40),
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: GridView.count(
                padding: EdgeInsets.all(20),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: 3,
                children: List.generate(6, (index) => childItem())),
          ),
        ],
      ),
    );
  }
}

childItem() {
  return Container(
    height: 300,
    width: 500,
    decoration: BoxDecoration(
        color: AssetsColors.secondaryColor,
        borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.w600.comps.canstockphoto.com/todays-lesson-words-on-school-stock-photo_csp7882734.jpg'),
                  fit: BoxFit.cover)),
          padding: EdgeInsets.all(16.w),
        )),
        Expanded(
            child: Container(
          alignment: AlignmentDirectional.centerStart,
          padding: EdgeInsets.all(16.w),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'title',
                  style: getBoldStyle(fontSize: 40),
                ),
                Text(
                  'Des',
                  style: getMediumStyle(fontSize: 30),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: GestureDetector(
                    onTap: () => {Get.to(() => MyTraineeDetailsScreen())},
                    child: Container(
                      width: 100,
                      alignment: AlignmentDirectional.center,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.amber[900],
                          borderRadius: BorderRadius.circular(16.r)),
                      child: Text('show'),
                    ),
                  ),
                )
              ]),
        )),
      ],
    ),
  );
}
