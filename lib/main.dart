import 'package:flutter/material.dart';
import './constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: k1stHalfBG,
        //column
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(12),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/Menu.png',
                      width: 24,
                    ),
                    Expanded(child: SizedBox.shrink()),
                    Image.asset('images/messageIcon.png'),
                    SizedBox(
                      width: 25,
                    ),
                    Image.asset('images/Bell_Icon.png'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Hello, Priya!',
                  style: kLoraTextStyle(20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('What do you wanna learn today?',
                    style: kinterTextStyle(
                        FontWeight.w500, Color(0xff6D747A), 12)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    kBox('images/BookIcon.png', 'Programs'),
                    SizedBox(
                      width: 10,
                    ),
                    kBox('images/HelpIcon.png', 'Get help')
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    kBox('images/BookI1con.png', 'Learn'),
                    SizedBox(
                      width: 10,
                    ),
                    kBox('images/TrackerIcon.png', 'DD Tracker'),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                kCatlogUpperDetails('Programs for you', 'View all'),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 280,
                  width: 270,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //frame1
                      kCatlogBox(
                          'images/Frame1.png',
                          'LIFESTYLE',
                          'A complete guide for your\nnew born baby',
                          '16 lessons',
                          'images/lock.png',
                          138),
                      SizedBox(
                        width: 20,
                      ),
                      //frame2
                      kCatlogBox(
                          'images/frame2.png',
                          'Working Parents',
                          'Understanding of human\nbehaviour',
                          '12 lessons',
                          'images/lock.png',
                          138)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                kCatlogUpperDetails('Events and experiences', 'View all'),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 280,
                  width: 270,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //frame1
                      kCatlogBox(
                          'images/frame2.png',
                          'Babycare',
                          'A complete guide for your\nnew born baby',
                          '13 Feb, Sunday',
                          'images/x-button.png',
                          69),
                      SizedBox(
                        width: 20,
                      ),
                      //frame2
                      kCatlogBox(
                          'images/frame2.png',
                          'Babycare',
                          'Understanding of human\nbehaviour',
                          '13 Feb, Sunday',
                          'images/x-button.png',
                          69)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                kCatlogUpperDetails('Lessons for you', 'View all'),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 280,
                  width: 270,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //frame1
                      kCatlogBox(
                          'images/frame2.png',
                          'Babycare',
                          'A complete guide for your\nnew born baby',
                          '3 min',
                          'images/lock.png',
                          166),
                      SizedBox(
                        width: 20,
                      ),
                      //frame2
                      kCatlogBox(
                          'images/frame2.png',
                          'Babycare',
                          'Understanding of human\nbehaviour',
                          '1 min',
                          'images/lock.png',
                          168)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedLabelStyle: kinterTextStyle(FontWeight.w500, kBlueColor, 10),
          showUnselectedLabels: true,
          unselectedItemColor: Color(0xff6D747A),
          selectedItemColor: kBlueColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                color: kBlueColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/nav2.png'),
                ),
                label: 'Learn'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/nav3.png'),
                ),
                label: 'Hub'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/nav4.png'),
                ),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/nav5.png'),
                ),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
