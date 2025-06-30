import 'package:clothing_ecommerce_app/common/widgets/basic_app_button.dart';
import 'package:clothing_ecommerce_app/common/widgets/custom_text_field.dart';
import 'package:clothing_ecommerce_app/presentation/auth/pages/signin.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

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
            CustomTextField(hint: 'Enter Password'),
            SizedBox(height: 24),
            BasicAppButton(onPressed: () {}, title: 'Continue'),
            SizedBox(height: 24),
            CreateAccount(),
          ],
        ),
      ),
    );
  }
}
