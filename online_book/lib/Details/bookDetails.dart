// ignore_for_file: unused_import, file_names, overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:shoping/Details/Details.dart';
import 'package:shoping/const.dart';

class BookDetails extends Details {
  late String bookName;

  BookDetails(
      {required this.bookName,
      required Color bgColor,
      required String bookImage,
      required String bookType,
      required String derece})
      : super(
            bgColor: bgColor,
            bookImage: bookImage,
            bookType: bookType,
            derece: derece);
}

List<BookDetails> bookDetails = [
  BookDetails(
      bookName: "Şeker Portakalı",
      bgColor: bgColor,
      bookImage: "assets/images/sekerPortakalaı.jpg",
      bookType: "Otobiyagrofik Kurgu",
      derece: "4"),
  BookDetails(
      bookName: "1984",
      bgColor: bgColor,
      bookImage: "assets/images/1984.jpg",
      bookType: "Tarih Kurgu",
      derece: "4.5"),
  BookDetails(
      bookName: "Kürk Mantolu Madonna",
      bgColor: bgColor,
      bookImage: "assets/images/KürkMantoluMadonna.jpg",
      bookType: "Aşk Romanı",
      derece: "5"),
  BookDetails(
      bookName: "Aşk ve Öbür Cinler",
      bgColor: bgColor,
      bookImage: "assets/images/askveoburCinler.jpg",
      bookType: "Aşk Romanı",
      derece: "4"),
  BookDetails(
      bookName: "1984",
      bgColor: bgColor,
      bookImage: "assets/images/1984.jpg",
      bookType: "Aşk Romanı",
      derece: "4"),
  BookDetails(
      bookName: "Şeker Portakalı",
      bgColor: bgColor,
      bookImage: "assets/images/sekerPortakalaı.jpg",
      bookType: "Aşk Romanı",
      derece: "4"),
];
