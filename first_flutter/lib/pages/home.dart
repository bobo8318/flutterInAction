import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class name extends StatelessWidget {
  const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getNetContent();
    return Scaffold(
      body: Text("qwe"),
    );
  }

  void getNetContent() async{
    try{
       Response response;
       response = await Dio().get("");
       return print(response);
    }catch(e){
        return print(e);
    }
  }
}