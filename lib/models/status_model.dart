import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Status extends Equatable {
  // final String? id;
  final Bool inGarage;

  const Status({
    // this.id,
    required this.inGarage,
  });

  @override
  List<Object?> get props => [
        // id,
        inGarage,
      ];

  static Status fromSnapshot(DocumentSnapshot snap) {
    Status status = Status(
      // id: snap.id,
      inGarage: snap['inGarage'],
    );
    return status;
  }

  Map<String, dynamic> toMap() {
    return {
      'inGarage': inGarage,
    };
  }
}
