import 'package:flutter/material.dart';
import 'package:flutter_logintask1/loginPage.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(30.0),
          child: SingleChildScrollView(
              child: Center(
                  child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 31,
                      color: Color.fromRGBO(1, 186, 118, 1),
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Create Account',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins"),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Create a new account',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  color: Color.fromARGB(255, 112, 112, 112)),
            ),
            SizedBox(
              height: 20,
            ),
            Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: ThemeData()
                      .colorScheme
                      .copyWith(primary: Color.fromRGBO(1, 186, 118, 1))),
              child: TextFormField(
                style: TextStyle(color: Color.fromRGBO(1, 186, 118, 1)),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.person_outline,
                    ),
                    labelText: "NAME",
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Color.fromARGB(255, 146, 146, 146))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: ThemeData()
                      .colorScheme
                      .copyWith(primary: Color.fromRGBO(1, 186, 118, 1))),
              child: TextFormField(
                style: TextStyle(color: Color.fromRGBO(1, 186, 118, 1)),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.email_outlined,
                    ),
                    labelText: "EMAIL",
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Color.fromARGB(255, 146, 146, 146))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Theme(
              data: Theme.of(context).copyWith(
                  colorScheme: ThemeData()
                      .colorScheme
                      .copyWith(primary: Color.fromRGBO(1, 186, 118, 1))),
              child: TextFormField(
                style: TextStyle(color: Color.fromRGBO(1, 186, 118, 1)),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.phone_android_outlined,
                    ),
                    labelText: "PHONE",
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Color.fromARGB(255, 146, 146, 146))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ThemeData()
                    .colorScheme
                    .copyWith(primary: Color.fromRGBO(1, 186, 118, 1)),
              ),
              child: TextFormField(
                style: TextStyle(color: Color.fromRGBO(1, 186, 118, 1)),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.lock_outline),
                  labelText: "PASSWORD",
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color.fromARGB(255, 146, 146, 146)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ThemeData()
                    .colorScheme
                    .copyWith(primary: Color.fromRGBO(1, 186, 118, 1)),
              ),
              child: TextFormField(
                style: TextStyle(color: Color.fromRGBO(1, 186, 118, 1)),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.lock_outline),
                  labelText: "CONFIRM PASSWORD",
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Color.fromARGB(255, 146, 146, 146)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                      'CREATE ACCOUNT',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have a account?',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => logintask()));
                    },
                    child: Text(
                      ' Login',
                      style: TextStyle(
                          color: Color.fromRGBO(1, 186, 118, 1),
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ]),
          ])))),
    );
  }
}
