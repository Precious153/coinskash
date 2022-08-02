
import 'dart:ui';

import 'package:coinskash/create_account.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class Email extends StatefulWidget {
  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override

  bool _visible =true;
  bool _checked =false;


  Widget build(BuildContextcontext) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 28,),
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20,),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xff604AED),
                      ),
                    ),
                    hintText: 'Email or Phone Number',
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1,
                        color: Color(0xff604AED),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20,left: 20),
          child: Container(
          child: TextFormField(
          obscureText: _visible,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide:BorderSide(
                    width: 1,
                    color:Color(0xff604AED),
                  )
                ),
                hintText: 'Password',
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1,
                  color: Color(0xff604AED),
                ),
              ),
            ),
          ),
          ),
        ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Color(0xff604AED),
                        value: _checked,
                        onChanged: (bool? value) {
                          if(_checked==true){
                            setState(() {
                              _visible=!_visible;
                            });
                          }else{
                            _visible=!_visible;
                          }
                          setState(() {
                            _checked =!_checked;
                          });
                        },
                      ),
                      Text("Show Password"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text("Forgot Password?",
                    style: TextStyle(
                      color: Color(0xff604AED),
                    ),),
                  ),
                ],
              ),
            ),
        ],
        ),
      ),
    );
  }
}
