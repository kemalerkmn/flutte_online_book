// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:shoping/Details/ProfilContentBook.dart';
import 'package:shoping/HomeScreen/HomeScreen.dart';
import 'package:shoping/HomeScreen/details/SuggestionBook.dart';

import '../../const.dart';

class Content extends StatelessWidget {
  const Content({
    Key? key,
    required this.backButtonController,
  }) : super(key: key);
  final bool backButtonController;
  Future<bool> backButton(BuildContext context) async {
    if (backButtonController) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backButton(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 800,
                  child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: profilContentBookDetails.length,
                      itemBuilder: (context, index) => ContentProfil(
                            number: double.parse(
                                profilContentBookDetails[index].derece),
                            bookImage:
                                profilContentBookDetails[index].bookImage,
                            bookName: profilContentBookDetails[index].bookName,
                            text: profilContentBookDetails[index].bookContent,
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: defaultPadding,
                          )),
                ),
              ]),
        ),
      ),
    );
  }
}

class ContentProfil extends StatelessWidget {
  const ContentProfil({
    Key? key,
    required this.text,
    required this.bookImage,
    required this.bookName,
    required this.number,
  }) : super(key: key);

  final String text, bookImage, bookName;
  final double number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: defaultPadding / 2, top: defaultPadding / 2),
          child: Container(
            // En dış yapı ile kitap isim dereceyi kapsayan alan
            width: 140,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(defaultBorderRadius / 1.5),
                    bottomRight: Radius.circular(defaultBorderRadius / 1.5)),
                image: DecorationImage(
                    alignment: Alignment(-.99, 0),
                    image: ExactAssetImage(
                        bookImage), // container için en sola gelen kitap yapısı
                    fit: BoxFit.fitHeight)), // heighte göre hizalama
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: defaultPadding),
          child: SizedBox(
            width: 230,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bookName),
                Flexible(
                  child: Text(
                    text,
                    maxLines: 7,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    for (int i = 0; i < number; i++) Stars(),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
