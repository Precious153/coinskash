
import 'package:coinskash/create_account.dart';
import 'package:coinskash/home_page.dart';
import 'package:coinskash/phone.dart';
import 'package:flutter/material.dart';
import 'email_login.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _visible =true;
  bool _checked =false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: IconButton(

                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                        Icons.arrow_back_ios,
                      ),
                      ),
                    ),
                    SizedBox(width: 120,),
                    Text('Log In',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gilroy-Bold'
                    ),),
                  ],
                ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Column(
                children: [
                  Container(
                    child: TabBar(
                      indicatorColor: Color(0xff604AED),
                      unselectedLabelColor: Colors.grey,
                      labelColor: Color(0xff604AED),
                      tabs: [
                    Tab(text: 'Email',),
                    Tab(text: 'Phone',),
                    ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 20),
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF5F5F5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                  height:20,
                                  width: 20,
                                  child: Image(image: AssetImage('images/goog.png'),
                                  )),
                              SizedBox(width: 16,),
                              Center(child: Text('Continue with Google',
                                style: TextStyle(
                                    fontFamily: 'Gilroy-Bold',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 132,
                          child: Divider(
                            height: 2,
                            thickness: 1,
                          ),
                        ),
                      ),
                      Text("or"),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                          width: 132,
                          child: Divider(
                            height: 2,
                            thickness: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
                SizedBox(height: 20,),
                Container(
                  height: 210,
                  width: 400,
                  color: Colors.white,
                  child: TabBarView(
                    children: [
                      Email(),
                      Phone(),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage()));
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Do not have an account?',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 12,
                          fontFamily: 'Gilroy-Regular'
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>CreateAccount()));
                      },
                      child: Text('Create account',
                        style: TextStyle(
                            color: Color(0xff604AED),
                            fontSize: 12,
                            fontFamily: 'Gilroy-Regular'
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
