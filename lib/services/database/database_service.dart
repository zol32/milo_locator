import 'dart:developer';
import '/services/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart' as auth;
import '/models/models.dart';

class DatabaseService extends BaseDatabaseService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Stream<dynamic> getStatus() {
    print('Getting status from DB');
    return _firebaseFirestore
        .collection('Status')
        .doc("TiEzcepAAAzbdYj0bxyW")
        .snapshots()
        .map((snap) => User.fromSnapshot(snap));
  }
}
