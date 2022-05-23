// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoping/Details/bookDetails.dart';

import '../../BookDetailsScreen/BookDetailsScreen.dart';
import '../../HomeScreen/details/SuggestionBook.dart';
import '../../const.dart';

class Likes extends StatelessWidget {
  const Likes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.only(top: defaultPadding / 4),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 600,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: ListView.separated(
                      itemCount: bookDetails.length,
                      itemBuilder: (context, index) => SuggestionBook(
                            bookType: bookDetails[index].bookType,
                            bookName: bookDetails[index].bookName,
                            number: double.parse(bookDetails[index].derece),
                            image: bookDetails[index].bookImage,
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookDetailsScreen(
                                            bookDetails: bookDetails[index],
                                          )));
                            },
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: defaultPadding / 4,
                          ))),
              SizedBox(
                width: defaultPadding / 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LikesBook extends StatelessWidget {
  const LikesBook({
    Key? key,
    required this.number,
    required this.press,
    required this.bookName,
    required this.bookType,
    required this.image,
  }) : super(key: key);
  final double number;
  final String bookName, bookType, image;
  final VoidCallback press;
//önerilerelecek kitapların ekranda gözükecek tasarımı bu alanda
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          // buttom özelliği ve tıklanma özelliği
          primary: Color(0xFFFF7643),
          padding: EdgeInsets.all(defaultPadding / 4),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: bgbColor),
      onPressed: press,
      child: Container(
        // En dış yapı ile kitap isim dereceyi kapsayan alan
        width: MediaQuery.of(context).size.width / 2,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(defaultBorderRadius / 1.5),
                bottomRight: Radius.circular(defaultBorderRadius / 1.5)),
            color: bgbColor,
            image: DecorationImage(
                alignment: Alignment(-.99, 0),
                image: ExactAssetImage(
                    image), // container için en sola gelen kitap yapısı
                fit: BoxFit.fitHeight)), // heighte göre hizalama
        child: Padding(
          padding: EdgeInsets.only(
              left: defaultPadding * 5, top: defaultPadding / 2),
          child: Column(
            // kitap isim tür ve yıldızların bulunduğu alan
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bookName,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              SizedBox(height: defaultPadding / 2),
              Text(
                "Tür : $bookType",
                style: TextStyle(fontSize: 12, color: Colors.black54),
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
      ),
    );
  }
}
