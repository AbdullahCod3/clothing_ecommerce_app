import 'package:clothing_ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:clothing_ecommerce_app/common/widgets/app_bar.dart';
import 'package:clothing_ecommerce_app/common/widgets/basic_app_button.dart';
import 'package:clothing_ecommerce_app/common/widgets/custom_link_text.dart';
import 'package:clothing_ecommerce_app/common/widgets/custom_text_field.dart';
import 'package:clothing_ecommerce_app/presentation/auth/pages/enter_password.dart';
import 'package:clothing_ecommerce_app/presentation/auth/pages/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Account',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CustomTextField(hint: 'First Name'),
            SizedBox(height: 20),
            CustomTextField(hint: 'Last Name'),
            SizedBox(height: 20),
            CustomTextField(hint: 'Enter Email'),
            SizedBox(height: 20),
            CustomTextField(hint: 'Enter Password'),
            SizedBox(height: 20),
            BasicAppButton(
              onPressed: () {
                AppNavigator.push(context, EnterPasswordPage());
              },
              title: 'Continue',
            ),
            SizedBox(height: 24),
            CustomLinkText(
              text: "Got an Account Already? ",
              textButton: "Signin",
              widget: SigninPage(),
            ),
          ],
        ),
      ),
    );
  }
}
