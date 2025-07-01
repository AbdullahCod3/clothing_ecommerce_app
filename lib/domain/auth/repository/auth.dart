import 'package:clothing_ecommerce_app/data/auth/models/user_creation_req.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either> signup(UserCreationReq user);
}
