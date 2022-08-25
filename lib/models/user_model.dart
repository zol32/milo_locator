import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String? id;
  final String name;
  // final String location;

  const User({
    this.id,
    required this.name,
    // required this.location,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        // location,
      ];

  static User fromSnapshot(DocumentSnapshot snap) {
    User user = User(
      id: snap.id,
      name: snap['name'],
      // location: snap['location'],
    );
    return user;
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      // 'location': location,
    };
  }

  User copyWith({
    String? id,
    String? name,
    // String? location,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      // location: location ?? this.location,
    );
  }
}
