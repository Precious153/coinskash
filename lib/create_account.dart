import 'package:country_picker/country_picker.dart';
import 'package:coinskash/login.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';


class CreateAccount extends StatefulWidget {

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _visible =true;
  String selectedCountry = "Country";
  bool _checked =false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  SizedBox(width: 56,),
                  Text('Create Account',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy-Bold'
                    ),),
                ],
              ),
              SizedBox(
                height: 16,
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
              SizedBox(height: 16,),
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
                      hintText: 'First Name',
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
              SizedBox(height: 16,),
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
                      hintText: 'Last Name',
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
              SizedBox(height: 16,),
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
                      hintText: 'Email',
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
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.only(right: 20,left: 20),
                child: TextField(
                  readOnly: true,
                  keyboardType: TextInputType.none,
                  decoration: InputDecoration(
                    hintText: selectedCountry,
                    hintStyle: TextStyle(
                        color: Colors.black
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                          Icons.arrow_drop_down,
                        color: Color(0xff604AED),
                      ),
                      onPressed: () {
                        showCountryPicker(
                            context: context,
                            onSelect: (selected){
                              setState(() {
                                selectedCountry=selected.name;
                              });
                            });
                      },
                    ),
                    border:  OutlineInputBorder(
                      borderSide: BorderSide(width: 1,
                        color: Color(0xff604AED),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              // Padding(
              //   padding: const EdgeInsets.only(right: 20,left: 20,),
              //   child: Container(
              //     child: TextFormField(
              //       keyboardType: TextInputType.phone,
              //       maxLength: 11,
              //       decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //           borderSide: BorderSide(
              //             width: 1,
              //             color: Color(0xff604AED),
              //           ),
              //         ),
              //         hintText: 'Phone Number',
              //         labelStyle: TextStyle(
              //           fontSize: 16,
              //           fontWeight: FontWeight.w400,
              //         ),
              //         focusedBorder: OutlineInputBorder(
              //           borderSide: BorderSide(width: 1,
              //             color: Color(0xff604AED),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
                    SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0,right: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Color(0xff604AED),
                              ),
                            ),
                            hintText: 'Phone Number',
                            labelStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1,
                                color: Color(0xff604AED),
                              ),
                            ),
                            prefix:CountryCodePicker(
                              showDropDownButton: false,
                              initialSelection: 'IN',
                              showCountryOnly: false,
                              showOnlyCountryWhenClosed: false,
                              favorite: ['+234','IN'],
                              enabled: true,
                              hideMainText: false,
                              showFlagMain: true,
                              // alignLeft: true,
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
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('By proceeding, You have agreed to the coinskash',
                  style: TextStyle(
                    fontSize: 10,
                    color: Color(0xffBBBBBB),
                  ),),
                  Text('Terms of Use',
                    style: TextStyle(
                        fontSize: 10,
                      color: Color(0xff604AED),
                    ),),
                  Text('and',
                    style: TextStyle(
                        fontSize: 10,
                      color: Color(0xffBBBBBB),
                    ),),
                  Text('Privacy Policy',
                    style: TextStyle(
                        fontSize: 10,
                      color: Color(0xff604AED),
                    ),),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color: Color(0xff604AED),
                ),
                child: Center(child: Text('Create account',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white
                  ),)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 12,
                        fontFamily: 'Gilroy-Regular'
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Login()));
                    },
                    child: Text('Log in',
                      style: TextStyle(
                          color: Color(0xff604AED),
                          fontSize: 12,
                          fontFamily: 'Gilroy-Regular'
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
