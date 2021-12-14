import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class StatusService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseFirestore _firestore2 = FirebaseFirestore.instance;
  //veri gösterme

  Stream<QuerySnapshot> getStatus() {
    var ref = _firestore.collection("favourite").snapshots();
    return ref;
  }

  Stream<QuerySnapshot> getStatus2() {
    var ref = _firestore2.collection("sepet").snapshots();
    return ref;
  }
}
