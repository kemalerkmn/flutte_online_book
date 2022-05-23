// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:shoping/Details/Details.dart';
import 'package:shoping/const.dart';

class ProfilDetail extends Details {
  late String profilName, profilImage;

  ProfilDetail(
      {required Color bgColor,
      required this.profilImage,
      required this.profilName,
      required String bookType,
      required String bookImage,
      required String derece})
      : super(
            bgColor: bgColor,
            bookImage: bookImage,
            bookType: bookType,
            derece: derece);
}

List<ProfilDetail> profilDetails = [
  ProfilDetail(
      bgColor: bgColor,
      bookImage: "assets/images/askveoburCinler.jpg",
      profilName: "Kemal Erkmen",
      profilImage: "assets/images/profil.jpeg",
      bookType: "Aşk Romanı",
      derece: "3"),
  ProfilDetail(
      bgColor: bgColor,
      bookImage: "assets/images/sekerPortakalaı.jpg",
      profilName: "Bünyamin",
      profilImage: "assets/images/profil5.jpeg",
      bookType: "Otobiyografik Kurgu",
      derece: "3"),
  ProfilDetail(
      bgColor: bgColor,
      bookImage: "assets/images/KürkMantoluMadonna.jpg",
      profilName: "Onur Şahin",
      profilImage: "assets/images/profil2.jpeg",
      bookType: "AŞk Romanı",
      derece: "5"),
  ProfilDetail(
      bgColor: bgColor,
      bookImage: "assets/images/1984.jpg",
      profilName: "Kemal Erkmen",
      profilImage: "assets/images/profil3.jpeg",
      bookType: "Tarih Romanı",
      derece: "5"),
];
