// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // appBar: AppBar(
      //   title: Text('Welcome to Our Application'),
      //   centerTitle: true,
      //   backgroundColor: Colors.purple[300],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          size: 33,
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    child: Positioned(
                        right: 30,
                        top: 20,
                        child: Image.asset('assets/images/main_top.png')),
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Positioned(
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SvgPicture.asset('assets/icons/login.svg'),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(99),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: 'Email:',
                              labelStyle: TextStyle(fontSize: 23),
                              hintText: 'Bob@gmail.com',
                              hintStyle: TextStyle(fontSize: 17),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(99),
                              ),
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(99),
                          ),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: 'Password:',
                              labelStyle: TextStyle(fontSize: 23),
                              hintText: 'Enter your Password ...',
                              hintStyle: TextStyle(fontSize: 17),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(99),
                              ),
                              prefixIcon: Icon(Icons.person),
                              suffixIcon: Icon(Icons.visibility),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 120, vertical: 20),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.purple[700],
                            ),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(99),
                            )),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/Login');
                          },
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text("Don't have any account ? "),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/SignUp');
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            elevation: MaterialStateProperty.all(0),
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.blue[400]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Image.asset('assets/images/login_bottom.png')],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
