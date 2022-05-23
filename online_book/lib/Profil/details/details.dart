// ignore: file_names
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, file_names, duplicate_ignore

import 'package:flutter/material.dart';

import '../../const.dart';

Widget details(
  BuildContext context,
) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(color: bgColor),
    child: Padding(
      padding:
          const EdgeInsets.only(left: defaultPadding, right: 18.0, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          ProfilScreenImage(image: "assets/images/profil.jpeg"),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            "kemal",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 0.4,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          PersonFlowandFlowingText()
        ],
      ),
    ),
  );
}

class PersonFlowandFlowingText extends StatelessWidget {
  const PersonFlowandFlowingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "124",
          style: TextStyle(fontSize: 13, color: Colors.black87),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "Takip edilen",
          style: TextStyle(fontSize: 15, color: Colors.black26),
        ),
        SizedBox(
          width: 30,
        ),
        Text(
          "234",
          style: TextStyle(fontSize: 13, color: Colors.black87),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "Following",
          style: TextStyle(fontSize: 15, color: Colors.black26),
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}

class ProfilScreenImage extends StatelessWidget {
  const ProfilScreenImage({
    required this.image,
    Key? key,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 105,
          height: 105,
          decoration: BoxDecoration(color: proFilColor, shape: BoxShape.circle),
        ),
        Positioned(
          left: 7.5,
          top: 7.5,
          child: CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage(
              image,
            ),
          ),
        ),
      ],
    );
  }
}
