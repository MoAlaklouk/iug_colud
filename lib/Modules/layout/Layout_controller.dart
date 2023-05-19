import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../Home/home_screen.dart';
import '../change_password/change_password_screen.dart';
import '../trainers/create_trainers_screen.dart';
import '../trainers/trainers_screen.dart';

class LayoutController extends GetxController {
  Widget page = HomeScreen();

  Widget getlayoutpage(PAGES pages) {
    switch (pages) {
      case PAGES.HOME:
        page = HomeScreen();
        break;
      case PAGES.NEWS:
        page = TrainersScreen();
        break;
      case PAGES.CREATENEWS:
        page = CreateNewsScreen();
        break;
      case PAGES.CHANGEPASSWORD:
        page = ChangePasswordScreen();
        break;
      default:
        return HomeScreen();
    }
    update();

    return page;
  }
}

enum PAGES { HOME, NEWS, CREATENEWS, CHANGEPASSWORD }
