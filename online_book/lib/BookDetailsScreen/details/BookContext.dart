// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:shoping/Details/Details.dart';
import 'package:shoping/Details/profilDetails.dart';

import '../../HomeScreen/details/Profil..dart';
import '../../const.dart';

//KİTAP YORUMLARI VE PROFİL RESMİ EKLENDİĞİ BÖLÜM
class BookContexts extends StatelessWidget {
  const BookContexts({
    Key? key,
    required this.Profilimage,
    required this.bookContext,
  }) : super(key: key);
  final String Profilimage, bookContext;

  @override
  Widget build(BuildContext context) {
    String text =
        " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              CircleProfilImage(profilImage: Profilimage, press: () {}),
              SizedBox(
                width: defaultPadding / 2,
              ),
              Flexible(
                child: Text(
                  text,
                  maxLines: 5,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              child: Text(
                "Devamı....",
                style: TextStyle(color: Colors.black45),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
