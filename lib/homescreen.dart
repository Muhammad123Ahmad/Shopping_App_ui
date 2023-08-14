import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_app/widgets/Icons.dart';
import 'package:shop_app/widgets/shoes.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 25, left: 12, right: 12, bottom: 12),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.orange,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sent to:',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey.shade500),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Text('Solo, Indonesia ',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 160),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 40,
                    width: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade200),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Icon(
                            Icons.search_sharp,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        Text(
                          'Search shoes...',
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ),

                // black box  code

                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: Container(
                    height: 140,
                    width: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'HOLIDAY EDITION',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    width: 85,
                                  ),
                                  Container(
                                    height: 60,
                                    width: 90,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/77.jpg'),
                                            fit: BoxFit.fitWidth)),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'PROMO',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '75%',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 25,
                                width: 110,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: const Text(
                                    'Get vouncher',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(80),
                                    color: Colors.orange),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //black box code end

                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        MyIcon(image: AssetImage('assets/Nike.png')),
                        MyIcon(image: AssetImage('assets/Adi.png')),
                        MyIcon(image: AssetImage('assets/bata.png')),
                        MyIcon(image: AssetImage('assets/puma.png')),
                        MyIcon(image: AssetImage('assets/w.png')),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Popular',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'View More',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.orange.shade400,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),

                Row(
                  children: [
                    Shoes(
                      image: AssetImage('assets/4.jpg'),
                      text: 'Nike Jordan Gre..',
                      text2: '72.5',
                      text3: '84.5',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Shoes(
                      image: AssetImage('assets/5.jpg'),
                      text: 'Casual Shoes..',
                      text2: '48.3',
                      text3: '54.3',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    children: [
                      Shoes(
                        image: const AssetImage('assets/6.jpg'),
                        text: 'Nike Jordan Gre..',
                        text2: '72.5',
                        text3: '84.5',
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Shoes(
                        image: const AssetImage('assets/4.jpg'),
                        text: 'Casual Shoes..',
                        text2: '48.3',
                        text3: '54.3',
                      ),
                    ],
                  ),
                ),

                GNav(
                    rippleColor:
                        Colors.orange, // tab button ripple color when pressed
                    hoverColor: Colors.orange, // tab button hover color
                    haptic: true, // haptic feedback
                    tabBorderRadius: 15,
                    tabActiveBorder: Border.all(
                        color: Colors.orange, width: 1), // tab button border
                    tabBorder: Border.all(
                        color: Colors.orange, width: 1), // tab button border
                    tabShadow: const [
                      BoxShadow(color: Colors.orange)
                    ], // tab button shadow
                    curve: Curves.easeOutExpo, // tab animation curves
                    duration: const Duration(
                        milliseconds: 900), // tab animation duration
                    gap: 8, // the tab button gap between icon and text
                    color: Colors.black, // unselected icon color
                    activeColor: Colors.white, // selected icon and text color
                    iconSize: 24, // tab button icon size
                    tabBackgroundColor: Colors.white
                        .withOpacity(0.1), // selected tab background color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 5), // navigation bar padding
                    tabs: const [
                      GButton(
                        icon: Icons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: Icons.favorite,
                        text: 'Likes',
                      ),
                      GButton(
                        icon: Icons.search,
                        text: 'Search',
                      ),
                      GButton(
                        icon: Icons.person,
                        text: 'Profile',
                      )
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
