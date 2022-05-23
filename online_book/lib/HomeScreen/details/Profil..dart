// ignore_for_file: prefer_const_constructors, file_names, unnecessary_new, non_constant_identifier_names, unused_local_variable, unused_import

import 'package:flutter/material.dart';
import 'package:shoping/BookAddButton.dart';
import 'package:shoping/BookAddScreen/BookAddScreen.dart';
import 'package:shoping/HomeScreen/HomeScreen.dart';
import 'package:shoping/PersonProfilScreen/PersonProfilScreen.dart';

import '../../BookDetailsScreen/BookDetailsScreen.dart';
import '../../Details/bookDetails.dart';
import '../../Details/profilDetails.dart';
import '../../const.dart';
import 'SuggestionBook.dart';

class FriendsBookList extends StatefulWidget {
  const FriendsBookList({
    Key? key,
  }) : super(key: key);

  @override
  State<FriendsBookList> createState() => _FriendsBookListState();
}

class _FriendsBookListState extends State<FriendsBookList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 265,
        width: 360,
        child: ListView.separated(
            // takip ettikleri kişilerin profilerinin eklendiği bölge
            scrollDirection: Axis.horizontal,
            itemCount: profilDetails.length,
            itemBuilder: (context, index) => Profil(
                  profilPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TabsView(
                                  profilDetails: profilDetails[index],
                                )));
                  },
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookDetailsScreen(
                                  bookDetails: bookDetails[index],
                                )));
                  },
                  profilImage: profilDetails[index].profilImage,
                  number: double.parse(profilDetails[index].derece),
                  profilName: profilDetails[index].profilName,
                  bookImage: profilDetails[index].bookImage,
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  width: defaultPadding,
                )));
  }
}

class Profil extends StatelessWidget {
  const Profil({
    Key? key,
    required this.profilName,
    required this.bookImage,
    required this.profilImage,
    required this.number,
    required this.press,
    required this.profilPress,
  }) : super(key: key);
  final String profilName, bookImage, profilImage;
  final double number;
  final VoidCallback press, profilPress;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextButton(
          style: TextButton.styleFrom(
              // buttom özelliği
              primary: Color(0xFFFF7643),
              padding: EdgeInsets.all(defaultPadding / 4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: bgbColor),
          onPressed: press,
          child: Container(
            //Dış Arka Plan
            width: 170,
            height: 290,
            decoration: BoxDecoration(
              color: Color.fromARGB(129, 245, 223, 236),
              //color: Color.fromARGB(103, 211, 211, 211),
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultBorderRadius)),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 230,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            //kitap resmi eklendi
                            image: AssetImage(bookImage),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: 130, //kitap arkasında hafif karartı
                    height: 230,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          // ignore: prefer_const_literals_to_create_immutables
                          colors: [
                            Color.fromARGB(32, 226, 226, 226),
                            Color.fromARGB(183, 12, 12, 12)
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 5,
          bottom: 10,
          child: Row(
            children: [
              CircleProfilImage(
                profilImage: profilImage,
                press: profilPress,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: defaultPadding / 6),
                    child: Text(
                      profilName,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      for (int i = 0; i < number; i++) Stars(),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

// kitabı okuyan profillerin gösterildiği alan
class CircleProfilImage extends StatelessWidget {
  const CircleProfilImage({
    Key? key,
    required this.profilImage,
    required this.press,
  }) : super(key: key);
  final VoidCallback press;
  final String profilImage;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      child: Stack(
        children: [
          Container(
            // arka blue alan circle container içinde
            width: 48,
            height: 48,
            decoration: BoxDecoration(
                shape: BoxShape.circle, //avatar için arka plan rengi ayarlandı
                color: Color.fromARGB(255, 0, 34, 78)),
          ),
          Positioned(
            left: 4,
            top: 4,
            child: //avatar profil için resim,isim,derece bilgileri alındı
                CircleAvatar(
                    radius: 20, backgroundImage: AssetImage(profilImage)),
          ),
        ],
      ),
    );
  }
}
