import 'package:clothing_ecommerce_app/core/usercase/usecase.dart';
import 'package:clothing_ecommerce_app/data/auth/models/user_creation_req.dart';
import 'package:clothing_ecommerce_app/domain/auth/repository/auth.dart';
import 'package:clothing_ecommerce_app/service_locator.dart';
import 'package:dartz/dartz.dart';

class SignupUsecase implements Usecase<Either, UserCreationReq> {
  @override
  Future<Either> call({UserCreationReq? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }
}
