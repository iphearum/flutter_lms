import 'dart:io';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:past_serve/api_provider.dart'; 

class ViewItem extends StatelessWidget {
  final Place place;
  ViewItem(this.place);
  // final String name;
  // final String location;
  // final int rate;
  // final String imageUrl;
  // ViewItem(
  //   {Key key, this.name, this.location,this.rate,this.imageUrl}
  // ) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final body =  _buildPlaceListViewWiget();
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: body,
    );
  }
  Widget _buildPlaceListViewWiget() {
    return Column(
        children: <Widget>[
          // Text(this.name),
          Image.network(place.imageUrl),
          Text(place.location),
          SmoothStarRating(
            allowHalfRating: true,
            onRatingChanged: (v) {
              // rating = v;
              // setState(() {});
            },
            starCount: 5,
            rating: place.rate.toDouble(),
            size: 20.0,
            color: Colors.yellow,
            borderColor: Colors.blue,
            spacing:0.0
          )
        ],
    );
  }
  Widget _buildLoadingWidget() {
      return Center(child: CircularProgressIndicator());
  }

  Widget _buildErrorWidget() {
    return Center(
      child: Text('Error the serve'),
    );
  }
}