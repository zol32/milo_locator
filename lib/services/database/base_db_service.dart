// import 'package:flirt/models/user_model.dart';
// import 'package:firebase_auth/firebase_auth.dart' as auth;

abstract class BaseDatabaseService {
  // Stream<User> getUser(String userId);
  // Stream<List<User>> getUsers(String userId, String gender);
  // Future<void> createUser(User user);
  // Future<void> updateUser(User user);
  // Future<void> updateUserPictures(User user, String imageName);
  Stream<dynamic> getStatus();
}
