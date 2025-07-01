import 'package:clothing_ecommerce_app/data/auth/models/user_creation_req.dart';
import 'package:clothing_ecommerce_app/domain/auth/repository/auth.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either> signup(UserCreationReq user) {
    // TODO: implement signup
    throw UnimplementedError();
  }
}
