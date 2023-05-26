import 'package:get/get.dart';
import 'package:iug_cloud/Modules/Home/home_controller.dart';
import 'package:iug_cloud/Modules/SendEmail/sendEmail_controller.dart';
import 'package:iug_cloud/Modules/trainers/trainingRequests/controller.dart';

import '../Modules/Advisor/Advisor_controller.dart';
import '../Modules/layout/Layout_controller.dart';
import '../Modules/login/login_controller.dart';
import '../Modules/trainers/edit_trainers.dart';
import '../Modules/trainers/trainers_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LayoutController(), fenix: true);
    Get.lazyPut(() => TrainersController(), fenix: true);
    Get.lazyPut(() => EditNewsScreen(), fenix: true);
    Get.lazyPut(() => LoginController(), fenix: true);
    Get.lazyPut(() => TrainingRequestsController(), fenix: true);
    Get.lazyPut(() => AdvisorController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => SendEmailController(), fenix: true);
  }
}
