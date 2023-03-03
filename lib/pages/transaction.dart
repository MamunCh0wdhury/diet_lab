// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
      actions: [Icon(Icons.search,color: Colors.black,)],
        elevation: 0.0,
        backgroundColor: Color(0xfff2f9fe),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Text
            Padding(padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Recent Transaction", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xff565c95),)),
                  Text("See all", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: Color(0xff565c95),)),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Padding(padding: const EdgeInsets.only(top:5,bottom: 20,left: 25,right: 25),
              child: Column(children: [
                Row(children: [
                  Container(
                    padding: EdgeInsets.only(left:25,right: 25,top: 5,bottom: 5),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(color:Color(0xff3e4784), borderRadius: BorderRadius.circular(25),),
                    child: Center(
                      child: Text("All", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600),),),),
                  Container(
                    padding: EdgeInsets.only(left:25,right: 25,top: 5,bottom: 5),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(color:Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(25),
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.03), spreadRadius: 10, blurRadius: 3,)]),
                    child: Center(
                      child: Text("Income", style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 13,fontWeight: FontWeight.w600),),),),
                  Container(
                    padding: EdgeInsets.only(left:25,right: 25,top: 5,bottom: 5),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(color:Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(25),
                        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.03), spreadRadius: 10,blurRadius: 3,)]),
                    child: Center(
                      child: Text("Expense", style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 13,fontWeight: FontWeight.w600),),),),
                ],)
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Today",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xff565c95),)),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.03),
                            spreadRadius: 10,
                            blurRadius: 3,
                            // changes position of shadow
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 20, right: 20, left: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Center(
                                child: Icon(Icons.payment,color: Color(0xff565c95),)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              //width: (size.width - 90) * 0.7,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Payment", style: TextStyle(fontSize: 15, color: Color(0xFF000000), fontWeight: FontWeight.bold),),
                                    SizedBox(height: 5,),
                                    Text("Payment from Andrea",
                                      style: TextStyle(fontSize: 12, color: Color(0xFF000000).withOpacity(0.5),fontWeight: FontWeight.w400),),
                                  ]),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text("\$30.00", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF000000)),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10, right: 20, left: 20),
              child: Column(
                  children:[
                    Container(
                      padding: EdgeInsets.only(left:25,right: 25,top: 5,bottom: 5),
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        width: 325,
                        height: 325,
                        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(
                                    "https://partners.akeneo.com/images/partners-image.png"),fit: BoxFit.cover)),
                      ),
                    ),
                  ]
              ),

            ),
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all( 25),
              decoration: BoxDecoration(color:Color(0xff3e4784), borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: Text("See Details",style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
