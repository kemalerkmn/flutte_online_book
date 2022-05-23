// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';

//KİTAPLARIN DETAYLARINDA FOROĞRAFLARININ EKLENDİĞİ BÖLÜM
class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.bookName,
    required this.image,
  }) : super(key: key);

  final String image, bookName;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: (238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.bookName,
              child: Image.asset(widget.image),
            ),
          ),
        ),
      ],
    );
  }
}
