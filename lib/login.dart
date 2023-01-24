import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover,)
        ),
        padding: EdgeInsets.only(left: 60, right: 60, top: 60, bottom: 60),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('SMART ', style: TextStyle(fontSize: 33, color: Colors.white,),),
                
              ],
            ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Text('HOME', style: TextStyle(fontSize: 82, color: Colors.white,),),
                  ],
                ),
                ],
              ),
              Column(
                children: [
                  TextFormField(
                    style:  TextStyle( color: Colors.white),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration( 
                  hintText: 'Email',
                  hintStyle: TextStyle( color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1,),
                    borderRadius: BorderRadius.circular(10)
                    
                  ),
                  suffixIcon: Icon(Icons.email)
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                style:  TextStyle( color: Colors.white),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle( color: Colors.white),
                  suffixIcon: Icon(Icons.vpn_key),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1,),
                    borderRadius: BorderRadius.circular(10)
                    
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Material(
                borderRadius: BorderRadius.circular(50),
                color: Colors.red,
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  splashColor: Colors.white,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DashboardPage(),));
                  },
                  child: Container(width: size.width, height: 42, child: Center(child: Text('Log In', style: TextStyle(color: Colors.white, fontSize: 16), textAlign: TextAlign.center,))),
                ),
              )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}