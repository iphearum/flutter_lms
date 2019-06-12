import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class MyHomePageState extends StatelessWidget {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    final logo = CircleAvatar(
      radius: 60,
      backgroundColor: Colors.blue,
      backgroundImage: AssetImage('assets/images/quot.jpg'),
    );
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 1.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 1.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
    );
    final loginButon = Material(
      elevation: 10.0,
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.blue,
      child: MaterialButton(
        // materialTapTargetSize: Transform(),
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 1.0, 20.0, 1.0),
        onPressed: () {
          // Function(){
          //   return HomeScreen();
          // }
          // push to homescreen
          final homeRoute = MaterialPageRoute(builder: (context) {
            return HomeScreen();
          });
          // push by opject
          // Navigator.of(context).push(homeRoute);// push with button back

          Navigator.of(context).pushReplacement(homeRoute); // push without button back
          // push by name
          // Navigator.push(context, homeRoute);// popurlor function
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final female = Material(
        elevation: 10.0,
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.red,
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 1.0, 20.0, 1.0),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => HomeScreen(
                  text: 'Female',
                ),
              )
            );
          },
          child: Text("Female",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        ));

    final male = Material(
        elevation: 10.0,
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.yellow,
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(20.0, 1.0, 20.0, 1.0),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(
                        text: 'Male',
                      ),
                ));
          },
          child: Text("male",
              textAlign: TextAlign.center,
              style: style.copyWith(
                  color: Colors.black, fontWeight: FontWeight.bold)),
        ));

    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Login',
      )),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                logo,
                SizedBox(
                  height: 0,
                  child: Image.asset(
                    "images/quot.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 25.0),
                emailField,
                SizedBox(height: 15.0),
                passwordField,
                SizedBox(
                  height: 25.0,
                ),
                loginButon,
                SizedBox(
                  height: 10.0,
                ),
                male,
                SizedBox(
                  height: 10.0,
                ),
                female,
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
