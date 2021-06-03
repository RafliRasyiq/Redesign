import 'package:flutter/material.dart';
import 'package:redesign/widget/listmember.dart';
import 'listmember.dart';

class GambarMember extends StatelessWidget {
  const GambarMember({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          ListMember(
            gambarMember: "assets/images/mark.jpg",
          ),
          ListMember(
            gambarMember: "assets/images/mark.jpg",
          ),
          ListMember(
            gambarMember: "assets/images/mark.jpg",
          ),
          ListMember(
            gambarMember: "assets/images/mark.jpg",
          ),
          ListMember(
            gambarMember: "assets/images/mark.jpg",
          ),
        ],
      ),
    );
  }
}
