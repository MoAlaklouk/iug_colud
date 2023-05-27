import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iug_cloud/Helpers/assets_color.dart';
import 'package:iug_cloud/Helpers/style_manager.dart';

import '../addSubject/addSubject_screen.dart';

class TrHomeScreen extends StatelessWidget {
  const TrHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'My Trainee',
            style: getBoldStyle(fontSize: 40),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 330,
            child: ListView.separated(
              shrinkWrap: true,

              // physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => childItem(),
              separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Suggest for you',
            style: getBoldStyle(fontSize: 40),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 330,
            child: ListView.separated(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => childItem(),
              separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
            ),
          )
        ],
      ),
    );
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
                      onTap: () => Get.to(() => AddTraineeScreen()),
                      child: Container(
                        width: 100,
                        alignment: AlignmentDirectional.center,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: AssetsColors.primaryColor,
                            borderRadius: BorderRadius.circular(16.r)),
                        child: Text('Add'),
                      ),
                    ),
                  )
                ]),
          )),
        ],
      ),
    );
  }
}
