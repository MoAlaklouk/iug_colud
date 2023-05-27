import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iug_cloud/Helpers/assets_color.dart';
import 'package:iug_cloud/Helpers/style_manager.dart';

class TraineeScreen extends StatelessWidget {
  const TraineeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Traine',
            style: getMediumStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.all(16),
                      decoration:
                          BoxDecoration(color: AssetsColors.secondaryColor),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor:
                                AssetsColors.bgColor.withOpacity(.5),
                            child: SvgPicture.asset(
                              'icons/menu_profile.svg',
                              height: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'name',
                            style: getMediumStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'email',
                            style: getMediumStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'phone',
                            style: getMediumStyle(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'description',
                            style: getMediumStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: 3),
          ),
        ],
      ),
    );
  }
}
