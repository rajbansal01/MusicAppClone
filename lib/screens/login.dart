import 'dart:async';
// import 'dart:html';
//
import 'package:flutter/material.dart';
import 'package:project/phone.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:project/phone.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);
  // GlobalKey<FormState> _formKey = GlobalKey();

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> with TickerProviderStateMixin


{
  int start = 30;
  @override
  Widget build(BuildContext context) {
    // TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(

      body: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
              children: [

                DefaultTabController(
                    length: 2, // length of tabs
                    initialIndex: 0,



                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left : 150, top : 150 ),
                            child: Text('Welcome',
                              style : TextStyle(color : Colors.black, fontSize: 29),

                            ),
                          ),

                          Container(
                            padding: EdgeInsets.only(left : 70, top : 2 ),
                            child: Text('Login To Your Account ',
                              style : TextStyle(color : Colors.black, fontSize: 29),

                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),


                             Container(

                              padding: EdgeInsets.only(right : 25, left : 25 ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey
                                ),
                                child: TabBar(

                        indicator: BoxDecoration(

                        borderRadius: BorderRadius.circular(14),
                    color : Colors.blue[300],

                  ),
                                  tabs: [
                                    Tab(child: Text('Email-ID',style: TextStyle(color: Colors.black),),),
                                    Tab(child: Text('Mobile-Number',style: TextStyle(color: Colors.black),),)
                                    ],
                                ),
                              ),
                            ),

                          Container(
                            height: 400,


                            // decoration: BoxDecoration(
                            //     border: Border(top: BorderSide(
                            //         color: Colors.grey, width: 0.5))
                            // ),
                            child: TabBarView(
                              children: <Widget>[


                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Container(
                                        child : const Text('Email ID',
                                          style: TextStyle(color: Colors.black38 , fontSize: 14),),
                                        padding: EdgeInsets.only(right : 280, top : 0 ),

                                      ),SizedBox(
                                        height: 10,
                                      ),
                                      // Expanded(
                                      //   child: Container(
                                      //     padding: EdgeInsets.only(
                                      //
                                      //       top: MediaQuery.of(context).size.height*0.5,
                                      //       right : 35,
                                      //       left: 35
                                      //     ),
                                      //     child: Column(
                                      //       children: [
                                      //         TextField(
                                      //           decoration: InputDecoration(
                                      //             fillColor: Colors.black12,
                                      //             filled: true,
                                      //             hintText: 'Enter Email ID',
                                      //             suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.email_outlined),),
                                      //             border: OutlineInputBorder(
                                      //               borderRadius: BorderRadius.circular(12)
                                      //             ),
                                      //           ),
                                      //         )
                                      //       ],
                                      //     ),

                                      //   ),
                                      // ),

                                      Container(
                                        padding: EdgeInsets.only(right : 25, left : 25 ),
                                        child: TextFormField(
                                         decoration: InputDecoration(
                                            fillColor: Colors.grey.shade300,
                                            filled: true,
                                            hintText: 'Enter Email',
                                            hintStyle: TextStyle(color: Colors.black),
                                            // border: InputBorder.none,

                                            suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.attach_email), color: Colors.black54),
                                            // contentPadding: EdgeInsets.only(
                                            //       left: 60),

                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              borderSide: BorderSide.none
                                            ),

                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        child : Text('Password',
                                          style: TextStyle(color: Colors.black38 , fontSize: 14),),
                                        padding: EdgeInsets.only(right : 280, top : 0 ),

                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),

                                      Container(
                                        padding: EdgeInsets.only(right : 25, left : 25 ),
                                        child: TextFormField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            fillColor: Colors.grey.shade300,
                                            filled: true,
                                            hintText: 'Enter Password',
                                            hintStyle: TextStyle(color: Colors.black),
                                            // border : InputBorder.none,
                                            suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.remove_red_eye_outlined),color: Colors.black54),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide.none)
                                            // ),

                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                  padding: EdgeInsets.only(left : 220, top : 10 ),
                                                  textStyle: TextStyle(fontSize: 15),

                                                  primary: Colors.blue
                                              ),
                                              child: Text('Forgot Password?'),
                                              onPressed: (){},)
                                        ),
                                      ),
                                      SizedBox(
                                          height: 10),

                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(right : 25, left : 25 ),
                                          child: Center(
                                            child: ElevatedButton(
                                                child: Text('Login'),
                                                onPressed: (){},
                                                style: ElevatedButton.styleFrom(
                                                 primary: Colors.redAccent,
                                                 fixedSize: Size(420,50),


                                                )
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                  padding: EdgeInsets.only(right : 120, top : 10 ),
                                                  textStyle: TextStyle(fontSize: 16),

                                                  primary: Colors.black
                                              ),
                                              child: Text('New as community member?'),
                                              onPressed: (){},)
                                        ),
                                      ),
                                      Expanded(
                                        child: Center(
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                  padding: EdgeInsets.only(right : 210, top : -5 ),
                                                  textStyle: TextStyle(fontSize: 16),

                                                  primary: Colors.blue
                                              ),
                                              child: Text('Login with OTP.'),
                                              onPressed: (){},)
                                        ),
                                      ),
                                    ],
                                  ),
                              Column(
                                children: [
                                  // Container(
                                  //   padding: EdgeInsets.only(left : 110, top : 150 ),
                                  //   child: Text('Welcome ',
                                  //     style : TextStyle(color : Colors.black, fontSize: 29),
                                  //
                                  //   ),
                                  // ),
                                  // Container(
                                  //   padding: EdgeInsets.only(left : 70, top : 15 ),
                                  //   child: Text('Login as new Member',
                                  //     style : TextStyle(color : Colors.black , fontSize: 29),
                                  //   ),
                                  // ),
                                  SizedBox(
                                      height: 20),
                                  Container(
                                    child : Text('Mobile Number',
                                      style: TextStyle(color: Colors.black38 , fontSize: 14),),
                                    padding: EdgeInsets.only(right : 230, top : 0 ),

                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(right : 25, left : 25 ),
                                          child: IntlPhoneField(
                                            decoration: InputDecoration(
                                              fillColor: Colors.grey.shade300,
                                              filled: true,
                                              hintText: '| Enter Mobile Number',
                                              hintStyle: TextStyle(color: Colors.black),
                                              // border: InputBorder.none,
                                              suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.phone_android_outlined),),
                                              border: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide.none,
                                              ),

                                            ),
                                          ),
                                        ),
                                        Center(
                                            child: TextButton(
                                              style: TextButton.styleFrom(
                                                  padding: EdgeInsets.only(left : 280, top : 10 ),
                                                  textStyle: TextStyle(fontSize: 15),

                                                  primary: Colors.blue
                                              ),
                                              child: Text('Get OTP'),
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                                              },)
                                        ),
                                        // Expanded(
                                        //   child: Container(
                                        //     padding: EdgeInsets.only(right : 25, left : 25 ),
                                        //     child: Center(
                                        //       child: ElevatedButton(
                                        //           child: Text('OTP Successfully sent'),
                                        //           onPressed: (){},
                                        //           style: ElevatedButton.styleFrom(
                                        //             primary: Colors.greenAccent,
                                        //             fixedSize: Size(420,50),
                                        //
                                        //
                                        //           )
                                        //       ),
                                        //     ),
                                        //   ),
                                        // ),
                                        SizedBox(
                                            height: 8),
                                        Container(
                                          child : Text('Enter OTP',
                                            style: TextStyle(color: Colors.black38 , fontSize: 14),),
                                          padding: EdgeInsets.only(right : 260, top : 0 ),

                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Form(child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            SizedBox(
                                              width: 64,
                                              height: 68,
                                              child: TextFormField(
                                                textAlign: TextAlign.center,
                                                keyboardType: TextInputType.number,
                                                inputFormatters: [LengthLimitingTextInputFormatter(1)],
                                                style: TextStyle(color: Colors.black, fontSize: 20),

                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(12),
                                                    borderSide: const BorderSide(color: Colors.black87)
                                                  ),

                                                    // filled: true,fillColor: Colors.black12
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 64,
                                              height: 68,
                                              child: TextFormField(
                                                textAlign: TextAlign.center,
                                                keyboardType: TextInputType.number,
                                                inputFormatters: [LengthLimitingTextInputFormatter(1)],
                                                style: TextStyle(color: Colors.black, fontSize: 20),
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: const BorderSide(color: Colors.black87)
                                                    ),
                                                    // filled: true,fillColor: Colors.black12
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 64,
                                              height: 68,
                                              child: TextFormField(
                                                textAlign: TextAlign.center,
                                                keyboardType: TextInputType.number,
                                                inputFormatters: [LengthLimitingTextInputFormatter(1)],
                                                style: TextStyle(color: Colors.black, fontSize: 20),
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: const BorderSide(color: Colors.black87)
                                                    ),
                                                    // filled: true,fillColor: Colors.black12
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 64,
                                              height: 68,
                                              child: TextFormField(
                                                textAlign: TextAlign.center,
                                                keyboardType: TextInputType.number,
                                                inputFormatters: [LengthLimitingTextInputFormatter(1)],
                                                style: TextStyle(color: Colors.black, fontSize: 20),
                                                decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: const BorderSide(color: Colors.black87)
                                                    ),
                                                    // filled: true,fillColor: Colors.black12
                                                ),
                                              ),
                                            )
                                          ],
                                        )),
                                        InkWell(

                                          child: Center(
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                    padding: EdgeInsets.only(left : 280, top : 10 ),
                                                    textStyle: TextStyle(fontSize: 15),

                                                    primary: Colors.blue
                                                ),
                                                child: Text('Resend OTP'),
                                                onPressed: (){},)
                                          ),
                                        ),
                                        // Container(
                                        //   padding: EdgeInsets.only(right: 250),
                                        //
                                        //   child: RichText(text: TextSpan(
                                        //     children: [
                                        //
                                        //       TextSpan(
                                        //         text : '00:$start',
                                        //       ),
                                        //
                                        //     ]
                                        //   )),
                                        // ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(right : 25, left : 25 ),

                                          child: Center(
                                            child: ElevatedButton(
                                                child: Text('LOG IN'),
                                                onPressed: (){},
                                                style: ElevatedButton.styleFrom(
                                                  // shape: MaterialStateProperty.all(Rou),
                                                    primary: Colors.redAccent,
                                                    fixedSize: Size(420,50)
                                                )
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),


          ]

                              ),
                            ],
                            ),
                          ),
                        ])
                )
              ])
      ),
    );

}
  void startTimer()
  {
    const onsec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onsec,(timer){
      if(start ==0){
        setState(() {
          timer.cancel();
        });
      }
      else {
        setState(() {
          start--;
        });
      }
    });
  }
}

