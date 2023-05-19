import 'package:get/get.dart';

import 'Modules/layout/Layout_controller.dart';
import 'Modules/login/login_controller.dart';
import 'Modules/trainers/edit_trainers.dart';
import 'Modules/trainers/trainers_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LayoutController(), fenix: true);
    Get.lazyPut(() => TrainersController(), fenix: true);
    Get.lazyPut(() => EditNewsScreen(), fenix: true);
    Get.lazyPut(() => LoginController(), fenix: true);
  }
}