import 'package:flutter/material.dart';

class ApiProvider {
  String loadStudentListJson(){
    final json = Server.getRequest('https://');
  }

}

class Server{
  static Future<String> getRequest(String url) async {
    await Future.delayed(Duration(seconds: 3));
    return '[{}]';
  }
}
