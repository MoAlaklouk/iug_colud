import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';

import '../Helpers/constant.dart';

class FirebaseUtiles {
  static late CollectionReference fireStore;
  static late CollectionReference fireStoreTrainR;

  static late Reference refStorge;

  static init() {
    fireStore = FirebaseFirestore.instance.collection('Trainers');
    fireStoreTrainR = FirebaseFirestore.instance.collection('TrainersReqeust');

    refStorge = firebase_storage.FirebaseStorage.instance.ref();
  }
}
