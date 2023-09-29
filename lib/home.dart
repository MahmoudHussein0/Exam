import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "HomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: ImageIcon(
          AssetImage("assets/images/Group.png"),
          color: Colors.green,
        ),
        title: Text(
          "Moody",
          style: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.w400),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Badge(
                alignment: Alignment(0.6, -0.8),
                backgroundColor: Color(0xffF04438),
                smallSize: 9,
                child: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                  size: 30,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Sara Rose",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "How are you feeling today ?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffE4E7EC),
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(
                          Icons.tag_faces,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Happy")
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffE4E7EC),
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(
                          Icons.tag_faces,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Happy")
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffE4E7EC),
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(
                          Icons.tag_faces,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Happy")
                    ],
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffE4E7EC),
                            borderRadius: BorderRadius.circular(40)),
                        child: Icon(
                          Icons.tag_faces,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Happy")
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Row(
                children: [
                  Text(
                    "Feature",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "see more",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff027A48)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff027A48),
                    size: 14,
                  )
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                enlargeFactor: 1,
                  aspectRatio: 1,
                  height: 200.0,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),),
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: 600,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffECFDF3)),
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "positive vibes",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Boost your mode with",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "positive vibes",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xff32D583),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Icon(Icons.play_arrow)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "10 mins",
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Expanded(child: Image.asset("assets/images/Walking the Dog.png",))
                            ],
                          ),
                        ));
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Row(
                children: [
                  Text(
                    "Exercise",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "see more",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xff027A48)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff027A48),
                    size: 14,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 151,
                    height: 61,
                    decoration: BoxDecoration(color: Color(0xffF9F5FF)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Frame.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Relaxtion",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 151,
                    height: 61,
                    decoration: BoxDecoration(color: Color(0xffFDF2FA)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Frame2.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Meditation",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 151,
                    height: 61,
                    decoration: BoxDecoration(color: Color(0xffFFFAF5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Frame3.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Beathing",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 151,
                    height: 61,
                    decoration: BoxDecoration(color: Color(0xffF0F9FF)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Frame4.png"),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Yoga",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"" ),
        BottomNavigationBarItem(icon: Icon(Icons.qr_code_rounded),label:"" ),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined),label:"" ),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"" )
      ]
      ,selectedItemColor: Colors.green,
      unselectedItemColor: Colors.black,)
    );
  }
}
