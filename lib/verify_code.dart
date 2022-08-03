
import 'package:coinskash/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Text('Welcome Back ',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy-Bold'
              ),),

            SizedBox(
              height: 150,
            ),

            Text('Enter your PIN to Log In',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Gilroy-Regular',
                color: Color(0xffB5B5B5)
              ),),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55,right: 56),
              child: PinCodeTextField(
                keyboardType: TextInputType.number,
                appContext: context,
                length: 4,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  activeColor: Color(0xffF5F5F5),
                  inactiveColor:Color(0xffF5F5F5),
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                ),
                animationDuration: Duration(milliseconds: 300),
                onCompleted: (v) {
                },
                onChanged: (value) {
                  print(value);
                  setState(() {
                  });
                },
                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context)=>HomePage()));
              },
              child: Container(
                height: 50,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color: Color(0xff604AED),
                ),
                child: Center(child: Text('Log In',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                  ),)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30,top: 24),
                  child: Text("Forgot Pin?",
                    style: TextStyle(
                      color: Color(0xff604AED),
                    ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}