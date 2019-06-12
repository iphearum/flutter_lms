import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  final String text;
  final String name;

  // const HomeScreen({
  //     @required this.text,
  //     @required this.name
  // }):assert(text!=null),assert(name!=null);
  HomeScreen(
    {Key key, this.text, this.name}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text('Home Page'),
      // leading: Icon(Icons.menu),
      actions: <Widget>[Icon(Icons.notifications)],
    );
    final bottomAppBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,// type of tabbar that contain the backgrount color
      //(fixed for backgrount white and shitten for background black
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_comment),
          title: Text('Library'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Setting'),
        )
      ],
      onTap: (tabIndex) {
        print("Hello World");
      },
    );
    final body = _builBody();

    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: bottomAppBar,
      body: body,
    );
  }

  Widget _builBody() {
    final item1 = Expanded(
      flex: 2,
      child: Container(
        height: 50,
        margin: EdgeInsets.all(2),
        // we can set style in container in by usig
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8)
          )
        ),

        child: Column(
          children: <Widget>[
            Text("Tody 06 May, 2019"),
            Row(
              children: <Widget>[
                _boxStyle(name:Text('Experis\n74868'), price:"10.00",bgColor:Colors.blue, texColor: Colors.white, height: 90),
                _boxStyle(name:Text('Experis\n89489'), price:"10.00",bgColor:Colors.red, texColor: Colors.white, height: 90),
              ],
            ),
            Text("I am not the best developer")
          ],
        ),
      ),
    );
    var vline = Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        )
      ),
    );
    final item2 = Expanded(
      flex: 1,
      child: Container(
        height: 200,
        padding: EdgeInsets.all(8),
        // padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
            // color: Colors.red,
            border: Border.all(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            )
        ),
        // two column
        child: Row(
          children: <Widget>[
            _buildSubItem("4", "Products"),
            vline,
            _buildSubItem("1", "Out of Stock")
          ],
        ),
      ),
    );
    final item3 = Expanded(
      flex: 6,
      child: Container(
        // width: 400,
        margin: EdgeInsets.all(2),
        // padding: EdgeInsets.all(),
        decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8)
          )
        ),
        child: Column(
          children: <Widget>[
            // Text("hello world"),
            Row(
              children: <Widget>[
                _boxStyle(
                  name:Text('Experis'),
                  bgColor:Colors.yellow, 
                  texColor: Colors.white, 
                  height: 190, 
                  width: 200
                ),
                _boxStyle(
                  name:Text('Experis'),
                  bgColor:Colors.green,
                  texColor: Colors.white,
                  height: 190,
                  width: 200
                ),
              ],
            ),
            Row(
              children: <Widget>[
                _boxStyle(
                  name:Text('Experis'),
                  bgColor:Colors.green[100],
                  texColor: Colors.white,
                  height: 190,
                  width: 200
                ),
                _boxStyle(
                  name:Text('Experis'),
                  bgColor:Colors.green[50],
                  texColor: Colors.white,
                  height: 190,
                  width: 200
                ),
              ],
            ),
          ],
        ),
      ),
    );
    return Column(
      children: <Widget>[
        item1, 
        item2, 
        item3
      ],
    );
  }

  Widget _boxStyle({Text name, String price, Color bgColor, Color texColor, String position, String textPosition, double width, double height}){
    return Expanded(
      child: Container(
        // can put hieght width
        margin: EdgeInsets.all(2),
        height: height,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.all(
            Radius.circular(8)
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            name,
            Text(text)
          ],
        ),
        ),
    );
  }

  Widget _buildSubItem(String val, text) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(val),
          Text(text),
        ],
      ),
    );
  }
  Widget _image({String name,double width,double height,double position(double x, double y)}){
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          // image: DecorationImage(image: )
        ),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(name),width: width,height: height)
          ],
        ),
      ),
    );
  }
  Widget _btn({String name, Color bgColor, Color color, bool width,bool height, bool border(bool l, bool t, bool r, bool b),}){
    return Expanded(
      child: Container(
        child: Column(
          children: <Widget>[
            // if(assert(name!=null))
          ],
        ),
      ),
    );
  }
}
