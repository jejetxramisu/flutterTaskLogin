import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_logintask1/registerPage.dart';

class logintask extends StatefulWidget {
  logintask({Key? key}) : super(key: key);

  @override
  State<logintask> createState() => _logintaskState();
}

class _logintaskState extends State<logintask> {
  bool isVisible = false;
  bool _isSelected1 = false;
  bool _isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.account_circle_outlined,
                color: Color.fromARGB(255, 238, 238, 238),
                size: 125,
              ),
              const Text(
                "Welcome Back",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins"),
              ),
              const Text(
                "Sign to continue",
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 198, 196, 196)),
              ),
              SizedBox(
                height: 30,
              ),
              Material(
                elevation: _isSelected1 ? 10 : 0,
                shadowColor: Color.fromARGB(255, 219, 219, 219),
                child: Theme(
                  data: Theme.of(context).copyWith(
                      colorScheme: ThemeData()
                          .colorScheme
                          .copyWith(primary: Color.fromRGBO(1, 186, 118, 1))),
                  child: TextFormField(
                    onTap: () {
                      setState(() {
                        _isSelected1 = true;
                        _isSelected2 = false;
                      });
                    },
                    style: TextStyle(color: Color.fromRGBO(1, 186, 118, 1)),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.email_outlined,
                      ),
                      labelText: "EMAIL",
                      labelStyle: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 146, 146, 146)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Material(
                elevation: _isSelected2 ? 10 : 0,
                shadowColor: Color.fromARGB(255, 219, 219, 219),
                child: Theme(
                  data: Theme.of(context).copyWith(
                      colorScheme: ThemeData()
                          .colorScheme
                          .copyWith(primary: Color.fromRGBO(1, 186, 118, 1))),
                  child: TextFormField(
                    onTap: () {
                      setState(() {
                        _isSelected1 = false;
                        _isSelected2 = true;
                      });
                    },
                    style: TextStyle(color: Color.fromRGBO(1, 186, 118, 1)),
                    obscureText: !isVisible,
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: Icon(isVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_outline),
                        labelText: "PASSWORD",
                        labelStyle: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 146, 146, 146))),
                  ),
                ),
              ),
              SizedBox(
                height: 29,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: (() {}),
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Color.fromRGBO(1, 186, 118, 1),
                            fontWeight: FontWeight.w600),
                      )),
                ],
              ),
              SizedBox(
                height: 19,
              ),
              Theme(
                data: Theme.of(context).copyWith(
                    colorScheme: ThemeData()
                        .colorScheme
                        .copyWith(primary: Color.fromRGBO(1, 186, 118, 1))),
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have account?',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => Register()));
                    },
                    child: Text(
                      ' create a new account',
                      style: TextStyle(
                          color: Color.fromRGBO(1, 186, 118, 1),
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
