import 'package:todo/models/user.dart';

enum AuthenticationProvider { google, facebook, emailPassword }

enum AuthenticationState {
  success,
  invalidCredentials,
  canceled,
  error,
  notLoggedIn,
  mandatoryUserDataNotComplete,
}

abstract class AuthenticationService {
  Future loginUser(AuthenticationData authData);
}

class AuthenticationResult {
  final AuthenticationState state;
  final String errorMessage;
  final String userId;
  final String userPhotoUrl;
  final AuthenticationProvider provider;

  final User partialUserData;

  AuthenticationResult(this.state, {this.userId, this.userPhotoUrl,this.partialUserData, this.provider, this.errorMessage});
}

class AuthenticationServiceFirebase implements AuthenticationService {
  @override
  Future loginUser(AuthenticationData authData) {
    // TODO: implement loginUser
  }
}

class AuthenticationData {
  final String email;
  final String password;

  AuthenticationData({this.email, this.password});
}