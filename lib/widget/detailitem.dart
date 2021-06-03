import 'package:flutter/material.dart';

class CardAja1 extends StatelessWidget {
  final String judul, gambar;
  final String bintang;
  const CardAja1({
    Key key,
    this.judul,
    this.gambar,
    this.bintang,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(
              left: 30,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                image: DecorationImage(
                  image: AssetImage(gambar),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0),
                    blurRadius: 20,
                    offset: Offset(0, 7),
                  )
                ]),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 5, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    judul,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 0),
                        child: Icon(
                          Icons.star_purple500_sharp,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                          5,
                          0,
                          0,
                          0,
                        ),
                        child: Text(
                          bintang,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
