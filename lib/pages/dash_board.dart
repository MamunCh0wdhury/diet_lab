// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDash extends StatefulWidget {
  const MyDash({Key? key}) : super(key: key);

  @override
  State<MyDash> createState() => _MyDashState();
}

class _MyDashState extends State<MyDash> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          //Menu Icon
          Container(
            margin: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0, bottom: 10.0),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25.0),
              boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.05), blurRadius: 10.0, spreadRadius: 3.0,)
              ],
            ),
            child: Padding( padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 25.0, top: 20),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Icon(Icons.menu_outlined), Icon(Icons.more_vert)],
                  ),
                  //PROFILE IMAGE
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Container(height: 70, width: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://c0.wallpaperflare.com/preview/75/28/918/macbook-minimal-dark-wallpaper.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(height: 10,),
                      // ignore: sized_box_for_whitespace
                      //PROFILE NAME
                      Container(
                        width: (size.width - 40) * 0.6,
                        child: Column(
                          children: [
                            Text(
                              'Mamun Chowdhury',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xff565c95)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Flutter Developer',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //DEATILS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('\$9000', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: Color(0xff565c95)),),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Income',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 12,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Container(
                        width: 0.5,
                        height: 40.0,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      Column(
                        children: [
                          Text(
                            '\$4000',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: Color(0xff565c95)),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Expense',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 12,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      Container(
                        width: 0.5,
                        height: 40.0,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      Column(
                        children: [
                          Text(
                            '\$400',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: Color(0xff565c95)),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Loan',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 12,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff565c95)),
                        ),
                        Icon(
                          Icons.notifications_none,
                        )
                      ],
                    ),
                  ],
                ),
                Text(
                  "Mar 03,2023",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Color(0xff565c95)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //CARDS DETAILS
          Column(
            children: [
              //SENT CARD
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.03),
                              spreadRadius: 10,
                              blurRadius: 3.0,
                            )
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left:15, top: 10, bottom: 10, right:15),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width:50 ,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFe4e9f7),
                              ),
                              child:  Center(
                                  child: Icon(Icons.arrow_upward_rounded)
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      " Sent",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      " Sending Payment to Clients",
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '\$150',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              //RECEIVE CARD
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.03),
                              spreadRadius: 10,
                              blurRadius: 3.0,
                            )
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left:15, top: 10, bottom: 10, right:15),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width:50 ,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFe4e9f7),
                              ),
                              child:  Center(
                                  child: Icon(Icons.arrow_downward_rounded)
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      " Receive",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      " Receive Salary from Company",
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '\$400',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              //LOAN CARD
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.03),
                              spreadRadius: 10,
                              blurRadius: 3.0,
                            )
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left:15, top: 10, bottom: 10, right:15),
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width:50 ,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFFe4e9f7),
                              ),
                              child:  Center(
                                  child: Icon(Icons.attach_money_rounded)
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      " Loan",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      " Loan for the car",
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '\$150',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
