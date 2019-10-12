import 'package:dio/dio.dart';

class RequesTools{

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