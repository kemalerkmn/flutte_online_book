// ignore_for_file: prefer_const_constructors, unnecessary_new, file_names, unused_local_variable, unused_import

import 'package:flutter/material.dart';
import 'package:shoping/BookAddScreen/BookAddScreen.dart';
import 'package:shoping/HomeScreen/HomeScreen.dart';
import 'package:shoping/const.dart';

class BookAddButton extends StatelessWidget {
  const BookAddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tfController = TextEditingController();
    String textController = " ";
    String titleText = " Yeni Kitap Ekle",
        buttonText = "Yorumla",
        hinText = "Kitap ismi";
    return IconButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                    // ekranaa gelen sayfa
                    backgroundColor: bgColor, //Renk ataması
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(defaultBorderRadius))),
                    title: Text(
                      titleText,
                      style: TextStyle(color: Colors.black87),
                    ),
                    content: TextField(
                      controller: tfController,
                      decoration: InputDecoration(hintText: hinText),
                    ),
                    actions: <Widget>[
                      ElevatedButton(
                          // Yorumla kısmında ki button
                          style: ElevatedButton.styleFrom(
                            primary: buttomColor,
                          ),
                          onPressed: () {
                            textController = tfController.text;
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => BookAddScreen(
                                          textController: textController,
                                        ))));
                          },
                          child: Text(buttonText)),
                    ],
                  ));
        },
        icon: plusIcon); //Ekleme icon
  }
}
