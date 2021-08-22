import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[500]!.withOpacity(0.7),
              spreadRadius: 1,
              blurRadius: 9,
              offset: Offset(0, 1),
            )
          ]),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search Here",
            prefixIcon: Container(
              padding: EdgeInsets.all(10),
              child: SvgPicture.asset(
                'assets/svg/icon_search.svg',
                width: 24,
              ),
            )),
      ),
    );
  }
}
