import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:iug_cloud/Model/TTrainers.dart';

import '../../../../Utils/firebase.dart';
import '../../../base/baseGetxController.dart';

class TrainingRequestsController extends BaseGetxController {
  List<TTrainersRequest> newsData = [];
  List key = [];

  fetchDataFromFirebase() async {
    newsData = [];
    setLoading(true);
    update();

    var starCountRef = FirebaseUtiles.fireStoreTrainR;
    starCountRef.get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((element) {
        key.add(element.id);
        newsData.add(
            TTrainersRequest.fromJson(element.data() as Map<String, dynamic>));
      });

      update();
    });
    setLoading(false);
    update();
  }

  @override
  void onInit() {
    fetchDataFromFirebase();
    super.onInit();
  }
}
