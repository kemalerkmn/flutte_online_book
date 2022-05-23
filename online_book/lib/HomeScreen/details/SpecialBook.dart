// ignore_for_file: prefer_const_constructors, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:shoping/HomeScreen/details/SuggestionBook.dart';
import 'package:shoping/const.dart';

import '../../BookDetailsScreen/BookDetailsScreen.dart';
import '../../Details/bookDetails.dart';

//Kitap sıralama
class SpecialBooks extends StatelessWidget {
  const SpecialBooks({
    Key? key,
  }) : super(key: key);
// Öneride bulunacak kitaplar anasayfada gösterildi
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SpecialBookText(
          specialText: "Senin için hazırlandı",
        ),
        Row(
          children: [
            SizedBox(
                height: 340,
                width: 250,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
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
                          height: defaultPadding,
                        ))),
            SizedBox(
              width: defaultPadding,
            ),
          ],
        ),
      ],
    );
  }
}

//Kitaplar üstündeki text
class SpecialBookText extends StatelessWidget {
  const SpecialBookText({
    Key? key,
    required this.specialText,
  }) : super(key: key);
  final String specialText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultPadding / 4,
      ),
      child: Text(
        specialText,
        style: TextTheme().bodyText2,
      ),
    );
  }
}
