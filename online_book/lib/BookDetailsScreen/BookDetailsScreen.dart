// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:shoping/const.dart';
import '../Details/bookDetails.dart';
import 'details/BookContext.dart';
import 'details/ProductImage.dart';
import 'details/appBarDetails.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({
    Key? key,
    required this.bookDetails,
  }) : super(key: key);
  final BookDetails bookDetails;
  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: CustomAppBar(rating: double.parse(widget.bookDetails.derece)),
        ),
        body: ListView(children: [
          ProductImages(
            image: widget.bookDetails.bookImage,
            bookName: widget.bookDetails.bookName,
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultBorderRadius * 2),
                    topRight: Radius.circular(defaultBorderRadius * 2))),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: defaultPadding * 2, right: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.bookDetails.bookName,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: defaultPadding),
                      ),
                      Text(
                        widget.bookDetails.bookType,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black45,
                            fontSize: defaultPadding / 1.25),
                      )
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  BookContexts(
                    Profilimage: "assets/images/profil5.jpeg",
                    bookContext: "dsafdga",
                  ),
                  BookContexts(
                    Profilimage: "assets/images/profil.jpeg",
                    bookContext: "dsafdga",
                  ),
                  BookContexts(
                    Profilimage: "assets/images/profil3.jpeg",
                    bookContext: "dsafdga",
                  ),
                  BookContexts(
                    Profilimage: "assets/images/profil2.jpeg",
                    bookContext: "dsafdga",
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}
