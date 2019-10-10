import 'package:flutter/material.dart';

class MyBottomNagation extends StatefulWidget {
  _nameState createState() => _nameState();
}

class _nameState extends State<MyBottomNagation> {
  
  final List<BottomNavigationBarItem> itemlist = [
    BottomNavigationBarItem(icon: Icon(Icons.home,color:Colors.blue), title: Text('主页',style: TextStyle(color: Colors.blue))),
    BottomNavigationBarItem(icon: Icon(),title: Text('个人')),
    BottomNavigationBarItem(icon: Icon(),title: Text('商品')),
  ];

  final List pagelist = [];

  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    // TODO: implement initState
    currentPage = pagelist[currentIndex];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:itemlist,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
            currentPage = pagelist[currentIndex];
          });
        }
      ),
      body: currentPage
    );
  }
}