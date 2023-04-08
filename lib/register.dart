import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('register.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'PHYGITAL\nCreate Account',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 50,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    left: 35,
                    right: 800),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 251, 213, 213),
                        filled: true,
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 251, 213, 213),
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 249, 207, 207),
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SignIn',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black38,
                            fontWeight: FontWeight.w700),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromARGB(255, 215, 248, 177),
                        child: IconButton(
                          color: Color.fromARGB(95, 15, 14, 14),
                          onPressed: () {},
                          icon: Icon(Icons.wallet),
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromARGB(255, 215, 248, 177),
                        child: IconButton(
                          color: Color.fromARGB(96, 7, 7, 7),
                          onPressed: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          icon: Icon(Icons.arrow_forward),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
