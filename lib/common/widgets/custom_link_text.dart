import 'package:clothing_ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomLinkText extends StatelessWidget {
  const CustomLinkText({
    super.key,
    required this.text,
    required this.textButton,
    required this.widget,
  });
  final String text;
  final String textButton;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: text),
          TextSpan(
            text: textButton,
            style: TextStyle(fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, widget);
              },
          ),
        ],
      ),
    );
  }
}
