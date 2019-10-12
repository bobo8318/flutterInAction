import 'package:flutter/material.dart';

class MyBottomNagation extends StatefulWidget {
  _nameState createState() => _nameState();
}

class _nameState extends State<MyBottomNagation> {
  
    List<Widget> _pagelist;

    int _currentIndex = 0;
    var currentPage;


  // 底部导航元素
  final List<BottomNavigationBarItem> itemlist = [
    BottomNavigationBarItem(icon: Icon(Icons.home,color:Colors.blue), title: Text('主页',style: TextStyle(color: Colors.blue))),
    BottomNavigationBarItem(icon: Icon(),title: Text('个人')),
    BottomNavigationBarItem(icon: Icon(),title: Text('商品')),
  ];




  @override
  void initState() {
    // TODO: implement initState
    _pagelist = List();
    _pagelist..add(value)..add(value);
    currentPage = pagelist[_currentIndex];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    // 底部导航栏
    BottomAppBar  bnbar = BottomAppBar (
      color: Colors.lightBlue, //底部工具栏的颜色。
      shape: CircularNotchedRectangle(),
      child: Row(
           mainAxisSize: MainAxisSize.max,
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: <Widget>[
             IconButton(
               icon:Icon(Icons.home),
               color:Colors.white,
               onPressed:(){
                  setState(() {
                    _currentIndex = 0;
                  });
               }
             ),
             IconButton(
               icon:Icon(Icons.airport_shuttle),
               color:Colors.white,
               onPressed:(){
                  _currentIndex = 1;
               }
             ),
           ],
         ),
      );

 
    // 浮动栏
    FloatingActionButton fab = FloatingActionButton(
          onPressed: (){
          
          },
          tooltip: 'Increment',
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        )



    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: bnbar,
      floatingActionButton: fab,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: currentPage
    );
  }
}