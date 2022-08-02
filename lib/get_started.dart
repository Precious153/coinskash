

import 'package:coinskash/create_account.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff604AED),
      body: SafeArea(
        child: Container(
        height:height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/falling boxes.png'),
            fit: BoxFit.cover
          ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 387),
            child: Column(
              children: [
                Image(
                  height: 38,
                  width: 200,
                  image: AssetImage('images/CoinsKash 2.png'),
                ),
                SizedBox(height: 103,),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>CreateAccount()));
                              },
                            child: Text('Get Started',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontFamily: 'Giloy-Bold',
                            ),),
                              style:  ElevatedButton.styleFrom(
                                primary: Color(0xff604AED),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          SizedBox(
                            height: 50,
                            child: OutlineButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Login()));
                            },
                              child: Text("log In",
                              style: TextStyle(
                                color: Color(0xff604AED),
                              ),),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              borderSide: BorderSide(
                                color: Color(0xff604AED),
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
          ),
        ),
      ),
    );
  }
}
