import 'package:flutter/material.dart';
import 'package:redesign/screen/detail/detail.dart';
import 'package:redesign/widget/itemcard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(),
            ),
          );
        },
        child: Icon(Icons.settings_input_component_rounded),
        backgroundColor: Colors.orangeAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.36,
              child: Stack(
                children: [
                  Container(
                    height: size.height * 0.37 - 34,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/vector-clear05.png"),
                      ),
                    ),
                  ),

                  //Search Bar

                  Positioned(
                    bottom: 0,
                    left: 30,
                    right: 30,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      height: 52,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 3),
                            blurRadius: 2,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 95, 20),
                    child: Text(
                      "Popular apps",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  CardAja(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
