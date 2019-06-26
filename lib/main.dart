import 'package:flutter/material.dart';
import 'package:noober/login_screen.dart';
import 'package:noober/HomeScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeScreen(),// homepage
      home: MyCustomForm(),//login
    );
  }
}
// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}
class _MyCustomFormState extends State<MyCustomForm> {

final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text From Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          controller: myController,
        ),
      ),

      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // return showDialog(
          //   context: context,
          //   builder: (context) {
          //     return AlertDialog(
          //       content: Text(myController.text),
          //     );
          //   },
          // );

          Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(
                  text: myController.text,
                ),
          ));
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.send),
      ),


    );
  }
}

