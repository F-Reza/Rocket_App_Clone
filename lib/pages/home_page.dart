import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;
  int currentPos = 0;
  List<String> listPaths = [
    "images/banner-1.png",
    "images/banner-2.png",
    "images/banner-3.png",
    "images/banner-4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8c3494),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png', width: 80,),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                //
              },
              icon: const Icon(Icons.notifications, color: Colors.white,)
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset('images/reza.jpg', width: 60, fit: BoxFit.fitWidth),
              ),
              title: const Text('MD.Forhad Reza', style: TextStyle(color: Colors.white),),
              subtitle: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('01830996044', style: TextStyle(color: Colors.white, fontSize: 15),),
                  Text('General Consumer', style: TextStyle(color: Colors.white,fontSize: 12),),
                ],
              ),
              trailing: Container(
                alignment: Alignment.center,
                width: 125,
                height: 36,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  //color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: const Text('Tap for Balance', style: TextStyle(color: Color(0xFF8c3494),),),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider.builder(
            itemCount: listPaths.length,
            options: CarouselOptions(
                viewportFraction: 1,
                aspectRatio: 16/4.5,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPos = index;
                  });
                }
            ),
            itemBuilder: (context, index, realIndex) {
              return Image.asset(listPaths[index]);
              //return MyImageView(listPaths[index]);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              color: Colors.white,
              child: Container(
                height: 380,
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            //
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                ),
                                child: Image.asset('images/icon-1.png', height: 30, width: 30, fit: BoxFit.cover,),
                              ),
                              const SizedBox(height: 8,),
                              const Text('Add Money'),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                ),
                                child: Image.asset('images/icon-2.png', height: 30, width: 30, fit: BoxFit.cover,),
                              ),
                              const SizedBox(height: 8,),
                              const Text('Mobile Recharge'),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                ),
                                child: Image.asset('images/icon-3.png', height: 30, width: 30, fit: BoxFit.cover,),
                              ),
                              const SizedBox(height: 8,),
                              const Text('Bill Pay'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            //
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                ),
                                child: Image.asset('images/icon-4.png', height: 30, width: 30, fit: BoxFit.cover,),
                              ),
                              const SizedBox(height: 8,),
                              const Text('Merchant Pay'),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                ),
                                child: Image.asset('images/icon-5.png', height: 30, width: 30, fit: BoxFit.cover,),
                              ),
                              const SizedBox(height: 8,),
                              const Text('Send Money'),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                ),
                                child: Image.asset('images/icon-6.png', height: 30, width: 30, fit: BoxFit.cover,),
                              ),
                              const SizedBox(height: 8,),
                              const Text('Cash Out'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              //
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.all(Radius.circular(100)),
                                  ),
                                  child: Image.asset('images/icon-7.png', height: 30, width: 30, fit: BoxFit.cover,),
                                ),
                                const SizedBox(height: 8,),
                                const Text('Bank Transfer'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Color(0xFF8c3494),//Theme.of(context).primaryColor
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
          if (selectedIndex == 0) {
            //
          } else if (selectedIndex == 1) {
            //
          } else if (selectedIndex == 2) {
            //
          }
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on), label: 'LOCATION'),
          BottomNavigationBarItem(
              icon: Icon(Icons.document_scanner_outlined), label: 'SCAN QR'),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.request_page), label: 'Requests'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_giftcard), label: 'OFFERS'),
        ],
      ),
    );
  }
}
