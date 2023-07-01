import 'package:flutter/material.dart';

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
        backgroundColor: const Color(0xff21254A),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * .25,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/png/topImage.png"))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Merhaba, \nHoşgeldin",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      spacerSizedBox(),
                      TextField(
                        decoration: customInputDecoration("Kullanıcı Adı"),
                      ),
                      spacerSizedBox(),
                      TextField(
                        decoration: customInputDecoration("Şifre"),
                      ),
                      spacerSizedBox(),
                      Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Şifremi Unuttum",
                              style: TextStyle(color: Colors.pink[200]),
                            )),
                      ),
                      spacerSizedBox(),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: Container(
                              height: 50,
                              width: 150,
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xff31274f)),
                              child: const Center(
                                child: Text(
                                  "Giriş Yap",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ),
                      ),
                      spacerSizedBox(),
                      Center(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Hesap Oluştur",
                              style: TextStyle(color: Colors.pink[200]),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
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
