import 'package:flutter/material.dart';

class ListMember extends StatelessWidget {
  final String gambarMember;

  const ListMember({Key key, this.gambarMember}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 45,
              width: 45,
              margin: EdgeInsets.only(right: 10, left: 2),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black12),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(gambarMember), fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}
