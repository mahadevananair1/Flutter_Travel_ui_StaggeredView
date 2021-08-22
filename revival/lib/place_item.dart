import 'package:flutter/material.dart';
import 'package:revival/model/place.dart';

class PlaceItem extends StatelessWidget {
  final Place place;
  PlaceItem(this.place);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: place.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(place.imageUrl), fit: BoxFit.cover)),
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              place.title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Raleway'),
            ),
            Text(place.subtitle,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    fontFamily: 'Raleway')),
          ],
        ),
      ),
    );
  }
}
