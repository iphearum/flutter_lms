import 'dart:io';

import 'package:flutter/material.dart';
import 'package:past_serve/api_provider.dart';
import 'package:past_serve/ViewItem.dart';

class HomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final body = FutureBuilder(
      future: ApiProvider.loadPlace(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return _buildErrorWidget();
          } else {
            return _buildPlaceListViewWiget(snapshot.data);
          }
        } else {
          return _buildLoadingWidget();
        }
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: body,
    );
  }
}

Widget _buildPlaceListViewWiget(List<Place> places) {
  return ListView.builder(
    itemCount: places.length,
    itemBuilder: (context, index){
      return GestureDetector(
        onTap: (){
          print('click one row $index');
          // push to homescreen
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => ViewItem(
                  places[index]
                ),
              )
            );
        },
        child: Column(
          children: <Widget>[
            Image.network(places[index].imageUrl),
            Text(places[index].name)
          ],
        )

      );
    },
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
