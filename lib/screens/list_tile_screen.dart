import 'package:flutter/material.dart';

class ListTileScreen extends StatefulWidget {
  const ListTileScreen({super.key, required this.title});

  final String title;

  @override
  State<ListTileScreen> createState() => ListTileScreenState();
}

class ListTileScreenState extends State<ListTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(32, 29, 44, 1.0),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                print("Tapped 1");
              },
              tileColor: const Color.fromRGBO(32, 29, 44, 1.0),
              leading: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(34, 177, 126, 1.0)),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.wallet,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Withdraw',
                style: TextStyle(
                  color: Color.fromRGBO(141, 138, 153, 1.0),
                ),
              ),
              shape: const Border(
                left: BorderSide(
                  color: Color.fromRGBO(32, 29, 44, 1.0),
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            const Divider(
              height: 1.0,
              thickness: 1.0,
              color: Color.fromRGBO(50, 47, 63, 1.0),
              endIndent: 40.0,
            ),
            ListTile(
              onTap: () {
                print("Tapped 1");
              },
              tileColor: const Color.fromRGBO(32, 29, 44, 1.0),
              leading: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 136, 1, 1.0)),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.wallet,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Bill Payment',
                style: TextStyle(
                  color: Color.fromRGBO(141, 138, 153, 1.0),
                ),
              ),
              shape: const Border(
                left: BorderSide(
                  color: Color.fromRGBO(32, 29, 44, 1.0),
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("Tapped 2");
              },
              // splashColor: const Color.fromRGBO(32, 29, 44, 1.0),
              tileColor: const Color.fromRGBO(38, 39, 55, 1.0),
              leading: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(149, 113, 246, 1.0)),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              shape: const Border(
                left: BorderSide(
                  color: Color.fromRGBO(149, 113, 246, 1.0),
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("Tapped 3");
              },
              tileColor: const Color.fromRGBO(32, 29, 44, 1.0),
              leading: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(17, 205, 211, 1.0)),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.transcribe_sharp,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Transactions',
                style: TextStyle(
                  color: Color.fromRGBO(141, 138, 153, 1.0),
                ),
              ),
              shape: const Border(
                left: BorderSide(
                  color: Color.fromRGBO(32, 29, 44, 1.0),
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            const Divider(
              height: 1.0,
              thickness: 1.0,
              color: Color.fromRGBO(50, 47, 63, 1.0),
              endIndent: 40.0,
            ),
            ListTile(
              onTap: () {
                print("Tapped 4");
              },
              tileColor: const Color.fromRGBO(32, 29, 44, 1.0),
              leading: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(245, 114, 113, 1.0)),
                  child: const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'Request Payment',
                style: TextStyle(
                  color: Color.fromRGBO(141, 138, 153, 1.0),
                ),
              ),
              shape: const Border(
                left: BorderSide(
                  color: Color.fromRGBO(32, 29, 44, 1.0),
                  width: 2.0,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
