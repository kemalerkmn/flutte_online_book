// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoping/Details/profilDetails.dart';
import 'package:shoping/PersonProfilScreen/details/Content.dart';
import 'package:shoping/PersonProfilScreen/details/content2.dart';
import 'package:shoping/const.dart';
import 'details/ProfilandFlowSide.dart';
import 'details/appBarDetailsProfils.dart';

class TabsView extends StatefulWidget {
  const TabsView({Key? key, required this.profilDetails}) : super(key: key);
  final ProfilDetail profilDetails;
  @override
  _TabsViewState createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBarProfils(),
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    profileHeaderWidget(context, widget.profilDetails),
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
    );
  }
}
