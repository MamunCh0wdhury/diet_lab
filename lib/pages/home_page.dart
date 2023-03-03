import 'package:diet_lab/pages/dash_board.dart';
import 'package:diet_lab/pages/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   // var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xfff2f9fe),
      body: MyDash(),
      bottomNavigationBar: BottomAppBar(
        height: 50.0,
        elevation: 0.0,
        color: Color(0xfff2f9fe).withOpacity(0.9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(padding: EdgeInsets.only(left: 10),
            child: Column(mainAxisSize: MainAxisSize.min,children: [
              Icon(CupertinoIcons.home,size: 25,)
            ],),
            ),
            Padding(padding: EdgeInsets.only(right:50.0),
            child: Column(mainAxisSize: MainAxisSize.min,children: [
              Icon(CupertinoIcons.creditcard,size: 25,)
            ],),
            ),
            Padding(padding: EdgeInsets.only(left: 10),
            child: Column(mainAxisSize: MainAxisSize.min,children: [
              Icon(CupertinoIcons.money_dollar,size: 25.0,)
            ],),
            ),
            Padding(padding: EdgeInsets.only(right: 10),
            child: Column(mainAxisSize: MainAxisSize.min,children: [
              Icon(CupertinoIcons.person_alt_circle,size: 25,)
            ],),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top:50.0),
        child: FloatingActionButton(
          elevation: 0.0,mini: true,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Color(0xff3e4784),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Transaction();
            }));
          },
          child: Icon(Icons.add, size: 20,),
        ),
      ),


        );
  }
}
