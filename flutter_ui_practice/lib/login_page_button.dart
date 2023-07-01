import 'package:flutter/material.dart';

import 'login_page_colors.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color textColor;
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.textColor = CustomColors.textButtonColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(color: textColor),
      ),
    );
  }
}


class LoginTextButton extends StatelessWidget {
  const LoginTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
                          onPressed: () {},
                          child: Container(
                              height: 50,
                              width: 150,
                              margin: const EdgeInsets.symmetric(horizontal: 60),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:CustomColors.textButtonColor ),
                              child: const Center(
                                child: Text(
                                  "Giriş Yap",
                                  style: TextStyle(color: CustomColors.loginButtonTextColor),
                                ),
                              )),
                        );
  }
}