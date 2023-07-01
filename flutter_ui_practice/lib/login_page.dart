import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/login_page_button.dart';
import 'package:flutter_ui_practice/login_page_colors.dart';
import 'package:flutter_ui_practice/login_page_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: CustomColors.scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageContainer(height: height),
                columnPadding(),
              ],
            ),
        ),),);
  }

  Padding columnPadding() {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LoginPageText().welcomeText,
                      style: welcomeTextStyle(),
                    ),
                    spacerSizedBox(),
                    TextField(
                      decoration: customInputDecoration(LoginPageText().hintTextUsername),
                    ),
                    spacerSizedBox(),
                    TextField(
                      decoration: customInputDecoration(LoginPageText().hintTextPass),
                    ),
                    spacerSizedBox(),
                    Center(
                      child: CustomTextButton(onPressed: (){}, buttonText: LoginPageText().forgotPassText),
                    ),
                    spacerSizedBox(),
                    const Center(
                      child: LoginTextButton(),
                    ),
                    spacerSizedBox(),
                    Center(
                      child: CustomTextButton(onPressed: (){}, buttonText: LoginPageText().signUpText ),
                    ),
                  ],
                ),
              );
  }

  TextStyle welcomeTextStyle() {
    return const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold);
  }

  Widget spacerSizedBox() => const SizedBox(height: 20);

  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)));
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * .25,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/png/topImage.png"))),
    );
  }
}
