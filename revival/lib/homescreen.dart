import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:revival/categorylist.dart';
import 'package:revival/search.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Explore the World',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30,
                height: 1.3,
              ),
            ),
          ),
          CategoryList(),
        ],
      )),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Theme.of(context).backgroundColor,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/svg/icon_drawer.svg'),
        color: Colors.black,
      ),
      actions: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 2),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: SvgPicture.asset(
            'assets/svg/icon_user_colored.svg',
          ),
        ),
      ],
    );
  }
}
