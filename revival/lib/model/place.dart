import 'dart:ffi';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Place {
  late String subtitle;
  late String title;
  late String imageUrl;
  late double height;

  Place(this.title, this.subtitle, this.imageUrl, this.height);

  static List<Place> generatePlaces() {
    return [
      Place("Rain Forest", "amazon", "assets/images/beach.jpg", 200),
      Place("Kerela", "India", "assets/images/kerela.jpg", 100),
      Place("Goa", "India", "assets/images/volkswagen.jpg", 300),
      Place("Hawaii", "America", "assets/images/japan.jpg", 100),
      Place("Rain Forest", "amazon", "assets/images/kerela.jpg", 400),
      Place("Kerela", "India", "assets/images/beach.jpg", 350),
      Place("Goa", "India", "assets/images/volkswagen.jpg", 280),
      Place("Hawaii", "America", "assets/images/japan.jpg", 300),
      Place("Rain Forest", "amazon", "assets/images/beach.jpg", 200),
      Place("Kerela", "India", "assets/images/kerela.jpg", 100),
      Place("Goa", "India", "assets/images/volkswagen.jpg", 300),
      Place("Hawaii", "America", "assets/images/japan.jpg", 100),
      Place("Rain Forest", "amazon", "assets/images/kerela.jpg", 400),
      Place("Kerela", "India", "assets/images/beach.jpg", 350),
      Place("Goa", "India", "assets/images/volkswagen.jpg", 280),
      Place("Hawaii", "America", "assets/images/japan.jpg", 300),
    ];
  }
}
