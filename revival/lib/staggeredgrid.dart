import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:revival/place_item.dart';

import 'model/place.dart';

class PlaceStaggeredGridView extends StatelessWidget {
  final placeList = Place.generatePlaces();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: StaggeredGridView.countBuilder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          itemCount: placeList.length,
          crossAxisCount: 4,
          itemBuilder: (context, index) => PlaceItem(placeList[index]),
          staggeredTileBuilder: (_) => StaggeredTile.fit(2)),
    );
  }
}
