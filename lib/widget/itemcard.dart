import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:redesign/screen/detail/detail.dart';

class CardAja extends StatefulWidget {
  @override
  _CardAjaState createState() => _CardAjaState();
}

class _CardAjaState extends State<CardAja> {
  List itemApi = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    this.fetchUser();
  }

  fetchUser() async {
    var url = Uri.parse("https://reqres.in/api/users?page=2");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var items = json.decode(response.body)['data'];
      print(items);
      setState(() {
        itemApi = items;
      });
    } else {
      setState(() {
        itemApi = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.49,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: itemApi.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Row(
              children: <Widget>[
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(
                    top: 15,
                    left: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        itemApi[index]['avatar'].toString(),
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0),
                        blurRadius: 20,
                        offset: Offset(0, 7),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          itemApi[index]['first_name'].toString() +
                              " " +
                              itemApi[index]['last_name'].toString(),
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          itemApi[index]['email'].toString(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => DetailScreen(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
