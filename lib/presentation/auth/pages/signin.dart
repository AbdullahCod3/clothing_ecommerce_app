import 'package:clothing_ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:clothing_ecommerce_app/common/widgets/basic_app_button.dart';
import 'package:clothing_ecommerce_app/common/widgets/custom_text_field.dart';
import 'package:clothing_ecommerce_app/presentation/auth/pages/enter_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign in',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            CustomTextField(hint: 'Enter Email'),
            SizedBox(height: 24),
            BasicAppButton(
              onPressed: () {
                AppNavigator.pushReplacement(context, EnterPasswordPage());
              },
              title: 'Continue',
            ),
            SizedBox(height: 24),
            CreateAccount(),
          ],
        ),
      ),
    );
  }
}

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "Forgot password? "),
          TextSpan(
            text: "Reset",
            style: TextStyle(fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
