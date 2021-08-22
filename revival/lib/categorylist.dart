import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

final categoryList = [
  'New',
  'Popular',
  'Trending',
  'All places',
  'Near you',
];
int categoryTracker = 0;

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 20,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    categoryTracker = index;
                  });
                },
                child: Container(
                  child: Text(
                    categoryList[index],
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 16,
                      fontWeight: categoryTracker == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: categoryList == index
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                    ),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(width: 20),
          itemCount: categoryList.length),
    );
  }
}
