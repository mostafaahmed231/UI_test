
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeTow extends StatefulWidget {

  HomeTow({super.key});

  @override
  State<HomeTow> createState() => _HomeTowState();
}

class _HomeTowState extends State<HomeTow> {
  final controller = PageController(viewportFraction: 0.5, keepPage: true,);

int selectIndex=0;

  final pages = List.generate(

      3,
      (index) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
      
              color: Color(0xFFECFDF3),
            ),
      
      
                child:   Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Positive vibes",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Boost your mood with \n positive vibes",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.play_circle_fill_sharp,
                                  color: Color(0xFF32D583),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "10 mins",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w600),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    SizedBox(width: 4,),
                    Image.asset("assets/images/vv.png",width: 60,)
                  ],
                ),
      
      ),


          );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Image.asset("assets/images/logo.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset("assets/images/bell-02.png"),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(showSelectedLabels: true,
        selectedItemColor: Color(0xFF027A48),
        currentIndex: selectIndex,
       type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        onTap: (value) {
          selectIndex=value;
          setState(() {

          });
        },

        items: [

        BottomNavigationBarItem(icon:Icon(Icons.home_filled),label: "Home" ),
        BottomNavigationBarItem(icon:Icon(Icons.grid_view_outlined) ,label: "Grid"),
        BottomNavigationBarItem(icon:Icon(Icons.calendar_month),label: "Calendar" ),
        BottomNavigationBarItem(icon:ImageIcon(AssetImage("assets/images/user-03.png")),label: "User" ),
      ],),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    " Sara Rose",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "How are you feeling today ?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFE4E7EC),
                          borderRadius: BorderRadius.circular(66),
                        ),
                        child: Image.asset("assets/images/Frame.png"),
                      ),
                      Text(
                        "Love",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFE4E7EC),
                          borderRadius: BorderRadius.circular(66),
                        ),
                        child: Image.asset("assets/images/Group.png"),
                      ),
                      Text(
                        "Cool",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFE4E7EC),
                          borderRadius: BorderRadius.circular(66),
                        ),
                        child: Image.asset("assets/images/Frame (1).png"),
                      ),
                      Text(
                        "Happy",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFE4E7EC),
                          borderRadius: BorderRadius.circular(66),
                        ),
                        child: Image.asset("assets/images/Group (1).png"),
                      ),
                      Text(
                        "Sad",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "Feature",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF027A48)),
                  ),
                  Icon(Icons.chevron_right, color: Color(0xFF027A48))
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                  height: 166,
                   width: 380,
                    child: PageView.builder(
                      controller: controller,
                      // itemCount: pages.length,
                      itemBuilder: (_, index) {
                        return pages[index % pages.length];
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SmoothPageIndicator(


                    controller: controller,
                    count: pages.length,
                    effect: const WormEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      type: WormType.thinUnderground,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    "Feature",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF027A48)),
                  ),
                  Icon(Icons.chevron_right, color: Color(0xFF027A48))
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    width: 151,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDACAF6),

                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/m1.png"),
                        SizedBox(width: 5,),
                        Text(
                          "Relaxation",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    padding: EdgeInsets.all(16),
                    width: 151,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF8CDEC),

                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/vv2.png"),
                        SizedBox(width: 5,),
                        Text(
                          "Meditation",
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    width: 151,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFAD9B9),

                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/vv4.png"),
                        SizedBox(width: 5,),
                        Text(
                          "Beathing",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: 8,),
                  Container(
                    padding: EdgeInsets.all(16),
                    width: 151,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFBFDCEF),

                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/vv3.png"),
                        SizedBox(width: 5,),
                        Text(
                          "Yoga",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
