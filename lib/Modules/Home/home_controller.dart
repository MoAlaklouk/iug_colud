import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iug_cloud/Model/TActivity.dart';
import 'package:iug_cloud/Modules/base/baseGetxController.dart';

import '../../Model/TAdvisor.dart';
import '../../Utils/firebase.dart';

class HomeController extends BaseGetxController {
  @override
  void onInit() async {
    // fetchDataFromFirebase();
    super.onInit();
  }

  List<TActivity> data = [];
  List<dynamic> key = [];
  fetchDataFromFirebase() async {
    data = [];
    setLoading(true);

    var starCountRef = FirebaseUtiles.fireStoreActivity;
    starCountRef.get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((element) {
        key.add(element.id);
        data
            .add(TActivity.fromJson(element.data() as Map<String, dynamic>));
      });

      update();
    });
    setLoading(false);
  }
}
