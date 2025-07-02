import 'package:clothing_ecommerce_app/data/auth/repository/auth_repository_impl.dart';
import 'package:clothing_ecommerce_app/data/auth/source/auth_firebase_service.dart';
import 'package:clothing_ecommerce_app/domain/auth/repository/auth.dart';
import 'package:clothing_ecommerce_app/domain/auth/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Srevices
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  //Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  //Usecases
  sl.registerSingleton<SignupUsecase>(SignupUsecase());
}
