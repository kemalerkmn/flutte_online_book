// ignore_for_file: file_names, overridden_fields, annotate_overrides

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:shoping/Details/Details.dart';
import 'package:shoping/const.dart';

class ProfilContentBookDetails extends Details {
  late String bookName, bookContent;
  ProfilContentBookDetails(
      {required Color bgColor,
      required this.bookContent,
      required this.bookName,
      required String bookImage,
      required String bookType,
      required String derece})
      : super(
            bgColor: bgColor,
            bookImage: bookImage,
            bookType: bookType,
            derece: derece);
  String text =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ";
}

List<ProfilContentBookDetails> profilContentBookDetails = [
  ProfilContentBookDetails(
      bgColor: bgColor,
      bookName: "Şeker Portakalı",
      bookContent:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      bookImage: "assets/images/sekerPortakalaı.jpg",
      bookType: "Otobiyagrofik Kurgu",
      derece: "5"),
  ProfilContentBookDetails(
      bookName: "1984",
      bgColor: bgColor,
      bookContent:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      bookImage: "assets/images/1984.jpg",
      bookType: "Tarih Kurgu",
      derece: "4"),
  ProfilContentBookDetails(
      bgColor: bgColor,
      bookName: "Kürk Mantolu Madonna",
      bookContent:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      bookImage: "assets/images/KürkMantoluMadonna.jpg",
      bookType: "Aşk Romanı ",
      derece: "5"),
  ProfilContentBookDetails(
      bookName: "Aşk ve Öbür Cinler",
      bookContent:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      bgColor: bgColor,
      bookImage: "assets/images/askveoburCinler.jpg",
      bookType: " Aşk Romanı",
      derece: "3"),
];
