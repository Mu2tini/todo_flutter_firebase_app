import 'package:todo/models/user.dart';

abstract class UserManager {
  bool isLoggedIn;

  User get currentUser;
}

class UserManagerImplementation implements UserManager {
  @override
  bool isLoggedIn;

  // TODO: implement currentUser
  @override
  User get currentUser {
    return new User(id: "1",password: "Kalle123", fullName: "Kalle Kula",email: "Kalle.Kula@gmail.com", birthYear: 1989);
  }

}