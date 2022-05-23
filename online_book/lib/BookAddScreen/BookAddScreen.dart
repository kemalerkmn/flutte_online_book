// ignore_for_file: file_names, prefer_const_constructors, unnecessary_new, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shoping/BookAddScreen/details/appBarDetailsBookAdd.dart';
import 'package:shoping/const.dart';

class BookAddScreen extends StatefulWidget {
  const BookAddScreen({Key? key, required this.textController})
      : super(key: key);
  final String textController;
  @override
  State<BookAddScreen> createState() => _BookAddScrennState();
}

class _BookAddScrennState extends State<BookAddScreen> {
  late File imageFile;
  @override
  Widget build(BuildContext context) {
    String buttomText = "yorumla",
        textFieldText = "Yorumla bakalım",
        fabText = "Fotoğraf Ekle";
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBarBookAdd(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding),
            child: Stack(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Align(
                    //Yorumla Button
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(buttomText),
                      style: ElevatedButton.styleFrom(
                        primary: buttomColor,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      left: defaultPadding, top: defaultPadding * 2.5),
                  child: TextFormField(
                    // Yorum yapılan alan
                    enableInteractiveSelection: false,
                    onTap: () {
                      FocusScope.of(context).requestFocus(new FocusNode());
                    },
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    autofocus: true,
                    showCursor: true,
                    maxLines: 7,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: textFieldText,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        // Fotoğraf Ekleme
        padding: const EdgeInsets.only(left: defaultPadding * 1.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton.extended(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(defaultBorderRadius))),
                label: Text(fabText, style: TextTheme().bodySmall),
                icon: Icon(
                  Icons.photo_camera_back_outlined,
                  size: 22,
                ),
                onPressed: () {},
                backgroundColor: buttomColor),
          ],
        ),
      ),
    );
  }
}
