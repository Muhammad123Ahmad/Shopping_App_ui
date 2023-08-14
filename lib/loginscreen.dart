import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'homescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 400,
                  width: 186,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/2.jpg'), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        height: 170,
                        width: 186,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/3.jpg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 240,
                        width: 186,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/1.jpg'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80, right: 50, top: 10, bottom: 2),
              child: Container(
                child: const Text(
                  'Lets Buy On Our',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 10),
              child: Row(
                children: const [
                  Text(
                    'Shoes',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'For Convenience',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 10, bottom: 2),
              child: Container(
                child: const Text(
                  'We Provide Various Types Of Shoes That ',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 2, bottom: 2),
              child: Container(
                child: const Text(
                  'Suitable And Comfortable For You ',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => HomeScreen())));
                },
                child: Container(
                  height: 50,
                  width: 370,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 100),
              child: Row(
                children: const [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(color: Colors.orange, fontSize: 15),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
