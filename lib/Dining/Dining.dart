import 'package:flutter/material.dart';
import 'package:zomato/MUSTKOCHI/MUSTKOCI.dart';
import 'package:zomato/dininghotel/dininghotel.dart';
import 'package:zomato/looking/looking.dart';

class Dining extends StatefulWidget {
  const Dining({super.key});

  @override
  State<Dining> createState() => _DiningState();
}

class _DiningState extends State<Dining> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircleAvatar(
            child: Icon(Icons.person),
          )
        ],
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              size: 40,
              color: const Color.fromARGB(255, 252, 251, 251),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Padamughal",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Kochi",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.black,
            child: Container(
              width: 300,
              child: TextFormField(
                decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                    hintText: "Search moods",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                    fillColor: Colors.grey[850],
                    filled: true),
              ),
            ),
          ),
          SingleChildScrollView(
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
                        Icons.ac_unit,
                      ),
                      Text("filter"),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
                ChipContainer(name: "Book Table"),
                ChipContainer(name: "Nearest"),
                ChipContainer(name: "Rating4.0+"),
                ChipContainer(name: "Pure Veg"),
                ChipContainer(name: "Outdoor Seating"),
                ChipContainer(name: "Serves Alcohol"),
                ChipContainer(name: "Open Now"),
                ChipContainer(name: "Cafes"),
                ChipContainer(name: "Fine Dining"),
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
                      Text("Rating"),
                      Icon(Icons.arrow_drop_down_sharp)
                    ],
                  ),
                ),
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
                      Text("Cost"),
                      Icon(Icons.arrow_drop_down_sharp)
                    ],
                  ),
                )
              ],
            ),
          ),
          // Container(
          //   height: 60,
          //   width: 60,
          //   color: Color.fromARGB(255, 255, 255, 255),
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: dining.length,
          //     itemBuilder: (context, index) {
          //       return Column(
          //         children: [
          //           Container(
          //             height: 20,
          //             width: 100,
          //           ),
          //           Text(dining[index].items),
          //         ],
          //       );
          //     },
          //   ),
          // ),
          Container(
            height: 130,
            width: double.infinity,
            color: const Color.fromARGB(255, 252, 252, 252),
            child:
                Image.asset("asset/WhatsApp Image 2023-10-02 at 10.31.35.jpg"),
          ),
          Row(
            children: [
              Expanded(
                  child: Divider(
                thickness: 1,
                color: Colors.grey[400],
              )),
              SizedBox(
                width: 8,
                height: 50,
              ),
              SizedBox(
                height: 100,
              ),
              Text("MUST-TRIES IN KOCHI"),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: kochi.length,
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      Container(
                        margin: EdgeInsets.all(0),
                        height: 600,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.network(
                          kochi[index].items,
                          fit: BoxFit.contain,
                          width: 400,
                          height: 500,
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: Text(
                          kochi[index].image,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ]);
                  })),
          Row(
            children: [
              Expanded(
                  child: Divider(
                thickness: 1,
                color: Colors.grey[400],
              )),
              SizedBox(
                width: 8,
                height: 50,
              ),
              SizedBox(
                height: 100,
              ),
              Text("WHAT ARE YOU LOOKING FOR"),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          SizedBox(
              height: 300,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: looking.length,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Image.network(
                              looking[index].Image,
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Text(looking[index].items)
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Image.network(
                              looking[index].Image,
                              fit: BoxFit.contain,
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Text(looking[index].items)
                        ],
                      ),
                    ]);
                  })),
          Row(
            children: [
              Expanded(
                  child: Divider(
                thickness: 1,
                color: Colors.grey[400],
              )),
              SizedBox(
                width: 8,
                height: 50,
              ),
              SizedBox(
                height: 100,
              ),
              Text("POPULAR RESTAURANTS AROUND YOU"),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          ListView.builder(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                dininghotel[index],
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
        ],
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
