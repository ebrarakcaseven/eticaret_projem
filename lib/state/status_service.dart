import 'package:cloud_firestore/cloud_firestore.dart';

class StatusService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseFirestore _firestore2 = FirebaseFirestore.instance;
  final FirebaseFirestore _firestore3 = FirebaseFirestore.instance;
  //veri gösterme
  Stream<QuerySnapshot> getFavourite() {
    var ref = _firestore.collection("favourite").snapshots();
    return ref;
  }

  Stream<QuerySnapshot> getSepet() {
    var ref = _firestore2.collection("sepet").snapshots();
    return ref;
  }

  Stream<QuerySnapshot> getVegatable() {
    var ref = _firestore3.collection("vegatables_fruits").snapshots();
    return ref;
  }

  //veri silme
  Future<void> removeStatus(String docId) {
    var ref = _firestore.collection("favourite").doc(docId).delete();
    return ref;
  }
}
