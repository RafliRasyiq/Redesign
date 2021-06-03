import 'package:flutter/material.dart';

class CardAja2 extends StatelessWidget {
  final String judul, gambar;
  final String waktu;
  const CardAja2({
    Key key,
    this.judul,
    this.gambar,
    this.waktu,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 65,
            width: 65,
            margin: EdgeInsets.fromLTRB(
              40,
              20,
              27,
              15,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.black12),
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(gambar),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 2, 0, 7),
                  child: Text(
                    judul,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 10,
                      top: 5,
                    ),
                    child: Text(
                      waktu,
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
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
