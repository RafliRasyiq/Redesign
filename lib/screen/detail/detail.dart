import 'package:flutter/material.dart';
import 'package:redesign/constants.dart';
import 'package:redesign/screen/homescreen.dart';
import 'package:redesign/widget/detailitem.dart';
import 'package:redesign/widget/detailitemcard.dart';
import 'package:redesign/widget/itemcard.dart';
import 'package:redesign/widget/member.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.fromLTRB(290, 30, 20, 0),
                      child: IconButton(
                        icon: Icon(Icons.cancel_outlined),
                        iconSize: 40,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  child: Column(
                    children: [Detail1()],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: size.height * 1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50, top: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Details",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Detail2(),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                              child: Text(
                                "Members",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GambarMember(),
                      Container(
                        height: 60,
                        width: size.width * 0.8,
                        margin: EdgeInsets.only(top: 40),
                        child: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.orangeAccent,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.orangeAccent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: () {
                                //
                              },
                              child: Center(
                                child: Text(
                                  "PLEASE RENT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Item di atas

class Detail1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CardAja1(
            gambar: 'assets/images/instagram.jpg',
            judul: 'Instagram',
            bintang: '4.5',
          ),
        ],
      ),
    );
  }
}

//Item di Dalam Card

class Detail2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CardAja2(
            gambar: 'assets/images/calender.png',
            judul: 'Thursday, June 10',
            waktu: '9:30 - 11:00',
          ),
          CardAja2(
            gambar: 'assets/images/map.jpg',
            judul: 'Washington, DC',
            waktu: '129 Oakway Lane',
          ),
        ],
      ),
    );
  }
}
