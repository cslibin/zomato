import 'package:flutter/material.dart';
import 'package:zomato/All_Restaurants/All_Restaurants.dart';
import 'package:zomato/Hotel%20name/hotelname.dart';
import 'package:zomato/bottomnavigtion/bottomnavigtion.dart';
import 'package:zomato/language/language%20.dart';
import 'package:zomato/model/your_mind.dart';
import 'package:lottie/lottie.dart';

import '../details/detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexNum = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            backgroundColor: const Color.fromARGB(255, 252, 252, 252),
            title: Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 40,
                  color: Colors.red,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Padamughal",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      "Kochi",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(6),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey, spreadRadius: 2, blurRadius: 2)
                      ],
                    ),
                    child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                margin: EdgeInsets.all(8),
                                height: 500,
                                color: const Color.fromARGB(255, 254, 254, 253),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Select language',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 500,
                                              child: ListView.builder(
                                                  itemCount: 10,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 100,
                                                        color: Color.fromARGB(
                                                            255, 239, 234, 234),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Center(
                                                              child: Text(
                                                                lang[index]
                                                                    .items,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Radio(
                                                                  value: true,
                                                                  groupValue:
                                                                      true,
                                                                  onChanged: (e) =>
                                                                      (value) =>
                                                                          true),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        icon: Icon(
                          Icons.translate,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              FloatingActionButton.small(
                backgroundColor: Colors.blue,
                onPressed: () {},
                child: Icon(Icons.person),
              ),
            ],
            bottom: AppBar(
              elevation: 0,
              backgroundColor: const Color.fromARGB(255, 252, 252, 251),
              automaticallyImplyLeading: false,
              title: Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * .9,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Icon(
                        Icons.search,
                        size: 35,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 247, 246, 247),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 2, blurRadius: 2),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              child: Image.asset(
                "asset/WhatsApp Image 2023-10-02 at 11.49.57.jpg",
                fit: BoxFit.fill,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.yellow,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 2, blurRadius: 2)
                  ]),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey, spreadRadius: 2, blurRadius: 2),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "offer",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                "Flate Discount",
                                style: TextStyle(color: Colors.blue),
                              ),
                              Container(
                                width: 20,
                                height: 15,
                                color: Color.fromARGB(255, 40, 65, 224),
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child:
                                Lottie.asset("asset/animation.json", width: 60),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey, spreadRadius: 2, blurRadius: 2)
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "offer",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            "Flate Discount",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Container(
                            width: 20,
                            height: 15,
                            color: Color.fromARGB(255, 224, 86, 40),
                            child: Icon(
                              Icons.arrow_forward,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Row(children: [
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text("WHAT'S ON YOUR MIND?"),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Colors.grey[400],
                ),
              ),
            ]),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 20,
          )),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: model.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Column(
                          children: [
                            Image.network(
                              model[index].Image,
                              width: 100,
                              height: 100,
                            ),
                            Text(model[index].items)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Image.network(
                              model[index].Image,
                              width: 100,
                              height: 100,
                            ),
                            Text(model[index].items)
                          ],
                        ),
                      ],
                    );
                  }),
            ),
          ),
          SliverToBoxAdapter(
              child: Row(children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text("ALL RESTAURANTS"),
            Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey[400],
              ),
            ),
          ])),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 30,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.tune,
                        ),
                        Text("Sort"),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                  ChipContainer(name: "Award Winners"),
                  ChipContainer(name: "Nearest"),
                  ChipContainer(name: "Rating4.0+"),
                  ChipContainer(name: "Pure Veg"),
                  Container(
                    height: 30,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.ac_unit,
                        ),
                        Text("Cuisines"),
                        Icon(Icons.arrow_drop_down_sharp)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // SliverToBoxAdapter(
          //   child: SizedBox(
          //     height: 100,
          //     child: ListView.builder(
          //       scrollDirection: Axis.horizontal,
          //       itemCount: hotel.length,
          //       itemBuilder: (context, index) {
          //         return Column(
          //           children: [
          //             Column(
          //               children: [
          //                 Container(
          //                   height: 50,
          //                   width: 100,
          //                 ),
          //                 Text(hotel[index].items),
          //               ],
          //             ),
          //           ],
          //         );
          //       },
          //     ),
          //   ),
          // ),
          SliverToBoxAdapter(
            child: SizedBox(
              // height: 400,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 400,
                        height: 350,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Stack(children: [
                              Container(
                                width: double.infinity,
                                height: 250,
                                child: Image.network(
                                  image[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                right: 15,
                                top: 10,
                                child: Icon(
                                  Icons.more_vert,
                                  size: 30,
                                  color: Color.fromARGB(255, 252, 250, 250),
                                ),
                              ),
                              Positioned(
                                right: 40,
                                top: 10,
                                child: Icon(
                                  Icons.favorite_outline,
                                  size: 30,
                                  color: Color.fromARGB(255, 248, 247, 247),
                                ),
                              ),
                            ]),
                            Container(
                              height: 100,
                              width: double.infinity,
                              color: Color.fromARGB(255, 252, 251, 251),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    hotelname[index],
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      height: 20,
                                      width: 40,
                                      color: Colors.green,
                                      child: star[index],
                                    ),
                                  ]),
                            ),

                            ///
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ]),
      ),
    );
  }
}

class ChipContainer extends StatelessWidget {
  const ChipContainer({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 30,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          border: Border.all(color: Colors.grey)),
      child: Center(child: Text(name)),
    );
  }
}
