import 'package:flutter/material.dart';
import 'itemcard.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CardAja(
            gambar: 'assets/images/instagram.jpg',
            judul: 'Instagram',
            price: r'$15 per hour',
          ),
          CardAja(
            gambar: 'assets/images/twitter.png',
            judul: 'Twitter',
            price: r'$25 per hour',
          ),
          CardAja(
            gambar: 'assets/images/youtube.png',
            judul: 'Youtube',
            price: r'$20 per hour',
          ),
          CardAja(
            gambar: 'assets/images/youtube.png',
            judul: 'Youtube',
            price: r'$20 per hour',
          ),
        ],
      ),
    );
  }
}
