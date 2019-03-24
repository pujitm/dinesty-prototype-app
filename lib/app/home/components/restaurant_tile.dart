import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';


class RestaurantTile extends StatelessWidget {

  RestaurantTile({@required this.name});

  final name;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      trailing: Column(
        children: <Widget>[
          RaisedButton(
            child: const Text('Order'),
            onPressed: () {},
          ),
          RaisedButton(
            child: const Text('Reserve'),
            onPressed: () {},
          ),
        ],
      ),
      subtitle: Column(
        children: <Widget>[
          Text('data'),
          SmoothStarRating(
            rating: 3.0,
          ),
        ],
      ),
    );
  }
}