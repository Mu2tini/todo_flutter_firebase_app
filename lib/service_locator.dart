import 'package:get_it/get_it.dart';
import 'package:todo/services/authentication_service.dart';

GetIt sl = new GetIt();

void setUpServiceLocator() {
  sl.registerLazySingleton<AuthenticationService>(() => new AuthenticationServiceFirebase());
}