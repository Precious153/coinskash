//
// import 'dart:html';
// import 'dart:ui';
import 'dart:ui';

import 'package:coinskash/home_background.dart';
import 'package:coinskash/recent_transaction.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _obsure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedFontSize: 10,
        unselectedFontSize:10,
        currentIndex: 0,
        selectedLabelStyle: TextStyle(
            fontFamily: 'Gilroy-Regular'
        ),
        unselectedLabelStyle: TextStyle(
            fontFamily: 'Gilroy-Regular'
        ),
        selectedItemColor:Color(0xff604AED),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon:Icon(
                Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon:Icon(
                  Icons.payment_outlined),
              label: 'Fund Wallet',
          ),
          BottomNavigationBarItem(
              icon:Icon(
                  Icons.insert_chart_outlined),
              label: 'History',
          ),
          BottomNavigationBarItem(
              icon:Icon(
                  Icons.person_outline,
              color: Colors.grey,),
              label: 'Profile',
          ),
        ],

      ),
      body : HomeBackground(
        child : SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Image.asset('images/victorIcon.png'),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text('Hello',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Gilroy-Regular'
                                ),),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Victor',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Gilroy-Bold'
                                ),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Image.asset('images/notification.png'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Card(
                  child: Container(
                    height:159,
                    width: 309,
                    decoration: BoxDecoration(
                       borderRadius:BorderRadius.circular(8),
                        boxShadow:[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1), //color of shadow
                            spreadRadius: 5, //spread radius
                            blurRadius: 7, // blur radius
                            offset: Offset(0, 1), // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ],
                        image: DecorationImage(
                            image: AssetImage('images/Frame.png'),
                          alignment:Alignment.bottomRight,
                          scale: 0.9
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: SizedBox(
                                  height:14,
                                  width: 24,
                                  child: Image(image: AssetImage('images/ngn.png'),
                                  )),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text('NGN Wallet',
                            style: TextStyle(
                              color: Color(0xff757575),
                              fontSize: 14,
                              fontFamily: 'Gilroy-Medium'
                            ),),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: SizedBox(
                                  height:30,
                                  width: 30,
                                  child: Image(image: AssetImage('images/naira.png'),
                                  )),
                            ),
                            _obsure? Text('912,321.54',
                              style: TextStyle(
                                color: Color(0xff191F2B),
                                fontSize: 24,
                                fontWeight: FontWeight.w800
                              ),
                            ):
                            Text('**********',
                              style: TextStyle(
                                  color: Color(0xff191F2B),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800
                              ),
                            ),
                            SizedBox(width: 11,),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  _obsure =!_obsure;
                                });
                              },
                              child: SizedBox(
                                  height: 12,
                                  width: 12,
                                  child: Image.asset('images/eye-off.png')),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16,top: 18),
                          child: Container(
                            height: 32,
                            width: 102,
                            decoration: BoxDecoration(
                              borderRadius:  BorderRadius.circular(2),
                              color: Color(0xff604AED),
                            ),
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: 16,
                                    width: 16,
                                    child: Image.asset('images/cash.png')),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Withdraw',
                                style: TextStyle(
                                  color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 82,
                  width: 335,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), //color of shadow
                          spreadRadius: 5, //spread radius
                          blurRadius: 7, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],
                    color: Colors.white
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 8,),
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset('images/Group 44006.png')),
                      SizedBox(width: 8,),
                      Column(
                        children: [
                          SizedBox(height: 19,),
                          Text('Convert your Cryptocurrency to Fiat',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              fontFamily: 'Gilroy-Bold',
                              color: Color(0xff333333),
                            ),),
                          SizedBox(height: 4,),

                          Text('Convert all of your crypto to cash at \n'
                              'little or no cost of transaction.',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              fontFamily: 'Gilroy-Bold',
                              color: Color(0xff9E9E9E),
                            ),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 21),
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5), //color of shadow
                                spreadRadius: 5, //spread radius
                                blurRadius: 7, // blur radius
                                offset: Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Color(0xff604AED),
                          ),
                        ),
                      )
                    ],
                  ),

                ),

                SizedBox(
                  height:27,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recent Transactions',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.bold
                    ),),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('see all',
                            style:TextStyle(
                              color: Color(0xff604AED),
                            ),),
                            SizedBox(
                              height: 1,
                              width: 40,
                              child: Divider(
                                thickness: 1,
                                  color: Color(0xff604AED),
                              ),
                            )
                          ],
                        ),
                        Icon(
                          Icons.double_arrow_rounded,
                          color: Color(0xff604AED),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: recentTransaction.length,
                      itemBuilder: (context,index){
                        final recentT = recentTransaction[index];
                        return transaction(
                            recentT.icon, recentT.text, recentT.date,
                            recentT.amount, recentT.trans,recentT.isCredit);

                      }),

                ),

          // Column(
          //   children: [
          //
          //     SingleChildScrollView(
          //       scrollDirection: Axis.vertical,
          //       child: Column(
          //         children: [
          //           Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Row(
          //                   children: [
          //                     Padding(
          //                       padding: const EdgeInsets.only(top: 46,right: 18),
          //                       child: Image.asset('images/Group 1000003402.png'),
          //                     ),
          //                     Column(
          //                       children: [
          //                         Text('Incoming',
          //                           style: TextStyle(
          //                               fontSize: 14,
          //                               fontFamily: 'Gilroy-Bold',
          //                               fontWeight: FontWeight.bold
          //                           ),),
          //                         Text('22 Apr, 13:42',
          //                           style: TextStyle(
          //                               fontSize: 10,
          //                               color: Color(0xffB5B5B5)
          //                           ),),
          //                       ],
          //                     ),
          //                   ],
          //                 ),
          //                 Column(
          //                   children: [
          //                     Text('5,000',
          //                       style: TextStyle(
          //                         fontSize: 16,
          //                         fontWeight: FontWeight.bold,
          //                         fontFamily: 'Gilroy-Bold',
          //                       ),),
          //                     Container(
          //                         height: 12,
          //                         width: 39,
          //                         decoration: BoxDecoration(
          //                             borderRadius: BorderRadius.circular(2),
          //                             color: Color(0xffFCF3DD)
          //                         ),
          //                         child: Text('pending',
          //                           style: TextStyle(
          //                               color: Color(0xffFAB915),
          //                               fontSize: 10
          //                           ),)),
          //                   ],
          //                 )
          //               ],
          //             ),
          //         ],
          //       ),
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Row(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(top: 46,right: 18),
          //               child: Image.asset('images/Group 1000003402.png'),
          //             ),
          //             Column(
          //               children: [
          //                 Text('Incoming',
          //                   style: TextStyle(
          //                       fontSize: 14,
          //                       fontFamily: 'Gilroy-Bold',
          //                       fontWeight: FontWeight.bold
          //                   ),),
          //                 Text('22 Apr, 13:42',
          //                   style: TextStyle(
          //                       fontSize: 10,
          //                       color: Color(0xffB5B5B5)
          //                   ),),
          //               ],
          //             ),
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             Text('5,000',
          //               style: TextStyle(
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.bold,
          //                 fontFamily: 'Gilroy-Bold',
          //               ),),
          //             Container(
          //                 height: 12,
          //                 width: 39,
          //                 decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(2),
          //                     color: Color(0xffFCF3DD)
          //                 ),
          //                 child: Text('pending',
          //                   style: TextStyle(
          //                       color: Color(0xffFAB915),
          //                       fontSize: 10
          //                   ),)),
          //           ],
          //         )
          //       ],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Row(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(top: 46,right: 18),
          //               child: Image.asset('images/Group 1000003402.png'),
          //             ),
          //             Column(
          //               children: [
          //                 Text('Incoming',
          //                   style: TextStyle(
          //                       fontSize: 14,
          //                       fontFamily: 'Gilroy-Bold',
          //                       fontWeight: FontWeight.bold
          //                   ),),
          //                 Text('22 Apr, 13:42',
          //                   style: TextStyle(
          //                       fontSize: 10,
          //                       color: Color(0xffB5B5B5)
          //                   ),),
          //               ],
          //             ),
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             Text('5,000',
          //               style: TextStyle(
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.bold,
          //                 fontFamily: 'Gilroy-Bold',
          //               ),),
          //             Container(
          //                 height: 12,
          //                 width: 39,
          //                 decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(2),
          //                     color: Color(0xffFCF3DD)
          //                 ),
          //                 child: Text('pending',
          //                   style: TextStyle(
          //                       color: Color(0xffFAB915),
          //                       fontSize: 10
          //                   ),)),
          //           ],
          //         )
          //       ],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Row(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(top: 46,right: 18),
          //               child: Image.asset('images/Group 1000003402.png'),
          //             ),
          //             Column(
          //               children: [
          //                 Text('Incoming',
          //                   style: TextStyle(
          //                       fontSize: 14,
          //                       fontFamily: 'Gilroy-Bold',
          //                       fontWeight: FontWeight.bold
          //                   ),),
          //                 Text('22 Apr, 13:42',
          //                   style: TextStyle(
          //                       fontSize: 10,
          //                       color: Color(0xffB5B5B5)
          //                   ),),
          //               ],
          //             ),
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             Text('5,000',
          //               style: TextStyle(
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.bold,
          //                 fontFamily: 'Gilroy-Bold',
          //               ),),
          //             Container(
          //                 height: 12,
          //                 width: 39,
          //                 decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(2),
          //                     color: Color(0xffFCF3DD)
          //                 ),
          //                 child: Text('pending',
          //                   style: TextStyle(
          //                       color: Color(0xffFAB915),
          //                       fontSize: 10
          //                   ),)),
          //           ],
          //         )
          //       ],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Row(
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(top: 46,right: 18),
          //               child: Image.asset('images/Group 1000003402.png'),
          //             ),
          //             Column(
          //               children: [
          //                 Text('Incoming',
          //                   style: TextStyle(
          //                       fontSize: 14,
          //                       fontFamily: 'Gilroy-Bold',
          //                       fontWeight: FontWeight.bold
          //                   ),),
          //                 Text('22 Apr, 13:42',
          //                   style: TextStyle(
          //                       fontSize: 10,
          //                       color: Color(0xffB5B5B5)
          //                   ),),
          //               ],
          //             ),
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             Text('5,000',
          //               style: TextStyle(
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.bold,
          //                 fontFamily: 'Gilroy-Bold',
          //               ),),
          //             Container(
          //                 height: 12,
          //                 width: 39,
          //                 decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(2),
          //                     color: Color(0xffFCF3DD)
          //                 ),
          //                 child: Text('pending',
          //                   style: TextStyle(
          //                       color: Color(0xffFAB915),
          //                       fontSize: 10
          //                   ),)),
          //           ],
          //         )
          //       ],
          //     ),
          //   ],
          // ),
              ],
            ),
          ),
          ),
      ),
    );
  }
  Widget transaction(String icon,String text,String date, String amount,String trans,bool isCredited){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 17,right: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 46,right: 18),
                    child: Image.asset(icon),
                  ),
                  Column(
                    children: [
                      Text(text,
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.bold
                        ),),
                      Text(date,
                        style: TextStyle(
                            fontSize: 10,
                            color: Color(0xffB5B5B5)
                        ),),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(amount,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy-Bold',
                    ),),
                 isCredited? Container(
                      height: 12,
                      width: 39,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Color(0xffFCF3DD)
                      ),
                      child: Center(
                        child: Text(trans,
                          style: TextStyle(
                              color:Color(0xffFAB915),
                              fontSize: 10
                          ),),
                      )) :Container(
                      height: 12,
                      width: 39,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Color(0xffD6F9EC)
                      ),
                      child: Center(
                        child: Text(trans,
                          style: TextStyle(
                              color:Color(0xff30E0A1),
                              fontSize: 10
                          ),),
                      )),
                ],
              )
            ],
          ),
        ),
      ],
    );

  }

  }
