import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iug_cloud/Model/TAdvisor.dart';
import 'package:iug_cloud/Modules/base/baseGetxController.dart';

import '../../Utils/firebase.dart';

class AdvisorController  extends BaseGetxController {
  
  @override
  void onInit() async {
    fetchDataFromFirebase();
    super.onInit();
  }

  List<TAdvisor> newsData = [];
  List<dynamic> key = [];
  fetchDataFromFirebase() async {
    newsData = [];
    setLoading(true);

    var starCountRef = FirebaseUtiles.fireStoreAdvisor;
    starCountRef.get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((element) {
        key.add(element.id);
        newsData
            .add(TAdvisor.fromJson(element.data() as Map<String, dynamic>));
      });

      update();
    });
    setLoading(false);
  }
  
}