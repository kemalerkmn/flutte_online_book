// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_string_escapes, empty_statements, avoid_print, non_constant_identifier_names, unused_element, file_names, unnecessary_new, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoping/PersonProfilScreen/details/Content.dart';
import 'package:shoping/Profil/MeProfil.dart';
import '../BookAddButton.dart';
import '../const.dart';
import 'details/Profil..dart';
import 'details/SpecialBook.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool search = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Günaydın",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  SpecialBooks(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    "Arkadaşların da okudu",
                    style: TextTheme().bodyText2,
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  FriendsBookList(),
                  SizedBox(
                    width: defaultPadding,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: DrawerMenu(context),
    );
  }

  AppBar _appbBar() {
    return AppBar(
      leading: Builder(
        builder: (context) => IconButton(
          icon: Icon(Icons.menu_outlined),
          color: Colors.grey,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      title: search
          ? TextField(
              decoration:
                  InputDecoration(hintText: "Bir kitap veya profil ara"),
              onChanged: (searchText) {
                print("arama sonucu $searchText");
              },
            )
          : Text(""),
      actions: [
        search
            ? IconButton(
                onPressed: () {
                  setState(() {
                    search = false;
                  });
                },
                icon: Icon(
                  Icons.cancel,
                  color: Colors.grey,
                ))
            : IconButton(
                onPressed: () {
                  setState(() {
                    search = true;
                  });
                },
                icon: Icon(
                  Icons.search_sharp,
                  color: Colors.grey,
                )),
        search ? Text(" ") : BookAddButton(),
        search
            ? Text(" ")
            : IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/Notification.svg")),
      ],
    );
  }

  Drawer DrawerMenu(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Align(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => MeProfil())),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage:
                            AssetImage("assets/images/profil.jpeg"),
                      ),
                    ),
                    Text(
                      "Kemal",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    )
                  ],
                ),
                SizedBox(
                  height: defaultPadding * 1.5,
                ),
                FollowandFlowingText()
              ]),
            ),
            decoration: BoxDecoration(color: bgColor),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: const Text('Profil'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MeProfil()));
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: const Text("Eklediğin Kitaplar"),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Content(
                            backButtonController: true,
                          )));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Ayarlar'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: const Text('Çıkış Yap'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class FollowandFlowingText extends StatelessWidget {
  const FollowandFlowingText({
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
          "Takipçi",
          style: TextStyle(fontSize: 15, color: Colors.black26),
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
