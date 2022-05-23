// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoping/HomeScreen/HomeScreen.dart';
import 'package:shoping/PersonProfilScreen/details/Content.dart';
import 'package:shoping/PersonProfilScreen/details/content2.dart';
import 'package:shoping/Profil/details/appBarDetails.dart';
import 'package:shoping/Profil/details/details.dart';
import 'package:shoping/const.dart';

class MeProfil extends StatefulWidget {
  const MeProfil({
    Key? key,
  }) : super(key: key);

  @override
  _MeProfilState createState() => _MeProfilState();
}

Future<bool> backButton(BuildContext context) async {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => HomeScreen()));
  return true;
}

class _MeProfilState extends State<MeProfil> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backButton(context),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: appBarDetails(),
        ),
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, _) {
              return [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Column(
                        children: [
                          details(
                            context,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ];
            },
            body: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(defaultBorderRadius * 2),
                      topRight: Radius.circular(defaultBorderRadius * 2))),
              child: Column(
                children: <Widget>[
                  Material(
                    color: bgColor,
                    child: TabBar(
                      labelColor: Colors.black87,
                      unselectedLabelColor: Color.fromARGB(255, 114, 114, 114),
                      indicatorWeight: 1,
                      indicatorColor: Colors.black54,
                      tabs: [
                        Tab(
                          text: "Yorumlar",
                        ),
                        Tab(
                          text: "Beğeni",
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [Content(backButtonController: false), Likes()],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
