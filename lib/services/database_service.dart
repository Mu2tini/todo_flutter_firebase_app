import 'package:todo/models/user.dart';

abstract class DatabaseService {
  ///
  /// User functions
  ///
  Future<bool> updateUser(User user);

  Future<User> getUser(String userID);
}

class DatabaseServiceFireStore implements DatabaseService{
  @override
  Future<User> getUser(String userID) {
    // TODO: implement getUser
  }

  @override
  Future<bool> updateUser(User user) {
    // TODO: implement updateUser
  }

}