// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:shoping/service/auth.dart';

import '../../HomeScreen/HomeScreen.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  AuthService _authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var SizeConfig_Height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig_Height * 0.04), // 4%

                Text(
                  "Kayıt Olarak Aramıza Gelebilirsin",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig_Height * 0.08),
                FormField(
                  password: false,
                  textEmail: "Email",
                  textEmail2: "Emailini giriniz",
                  icon: Icon(Icons.person),
                  textController: _emailController,
                ),
                SizedBox(height: SizeConfig_Height * 0.02),

                FormField(
                  textEmail: "Parola",
                  textEmail2: "Parolanızı giriniz",
                  icon: Icon(Icons.lock),
                  password: true,
                  textController: _passwordController,
                ),
                SizedBox(height: SizeConfig_Height * 0.02),

                FormField(
                  password: false,
                  textEmail: "Kullanıcı adı",
                  textEmail2: "Kullanıcı adınızı giriniz",
                  icon: Icon(Icons.person),
                  textController: _nameController,
                ),
                SizedBox(height: SizeConfig_Height * 0.08),
                InkWell(
                  onTap: () {
                    _authService
                        .createPerson(
                            email: _emailController.text,
                            name: _nameController.text,
                            password: _passwordController.text)
                        .then((value) => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen())));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Center(
                      child: Text("Kayıt Ol"),
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

class FormField extends StatelessWidget {
  const FormField({
    Key? key,
    required this.textEmail,
    required this.textEmail2,
    required this.icon,
    required this.textController,
    required this.password,
  }) : super(key: key);
  final String textEmail;
  final TextEditingController textController;
  final String textEmail2;
  final Icon icon;
  final bool password;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      obscureText: password,
      decoration: InputDecoration(
          labelText: textEmail,
          hintText: textEmail2,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: icon),
    );
  }
}
