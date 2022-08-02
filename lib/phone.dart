
import 'package:coinskash/create_account.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class Phone extends StatefulWidget {

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  bool _visible =true;

  bool _checked =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 28,),

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween ,
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
