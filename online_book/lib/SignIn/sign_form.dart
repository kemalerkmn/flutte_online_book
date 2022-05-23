// ignore_for_file: unused_import, use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoping/HomeScreen/HomeScreen.dart';
import 'package:shoping/service/auth.dart';
import '../../../size_config.dart';
import 'detail/sign_in_form.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    var SizeConfig_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: (20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig_Height * 0.04),
                Text(
                  "Hoşgeldin",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: (28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Parolanı ve kullanıcı adını girerek aramıza gel ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig_Height * 0.08),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _passwordController,
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _authService
                        .signIn(_emailController.text, _passwordController.text)
                        .then((value) => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen())));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: Text("Giriş Yap"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
