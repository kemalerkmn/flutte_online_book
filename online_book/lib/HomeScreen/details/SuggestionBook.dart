// ignore_for_file: prefer_const_constructors, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:shoping/const.dart';

import '../../Details/bookDetails.dart';

class SuggestionBook extends StatelessWidget {
  const SuggestionBook({
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
        width: 280,
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

//Yıldız ekleme
class Stars extends StatelessWidget {
  const Stars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(
            right: defaultPadding / 8, top: defaultPadding / 1.5),
        child: Icon(
          Icons.star,
          color: Colors.amber[400],
          size: 16,
        ),
      ),
    );
  }
}
