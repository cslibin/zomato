import 'package:flutter/material.dart';
import 'package:zomato/bottomnavigtion/bottomnavigtion.dart';
import 'package:zomato/home/Home_Screen.dart';
import 'package:zomato/main.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffd01f31),
          actions: [
            Container(
              margin: EdgeInsets.all(8),
              height: 3,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black26,
              ),
              child: Center(child: Text("skip")),
            )
          ],
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.language))),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.red,
                child: Image.network(
                  "https://restaurantindia.s3.ap-south-1.amazonaws.com/s3fs-public/2023-02/zomato-infinity-dining-916x516-1_11zon.jpg",
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          Container(
            height: 100,
            width: double.infinity,
            color: const Color.fromARGB(255, 251, 251, 251),
            child:
                Image.asset("asset/WhatsApp Image 2023-10-02 at 12.30.56.jpg"),
          ),
          SizedBox(
            height: 20,
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
              ),
              Text("Log in or sign up"),
              Expanded(
                child: Divider(
                  thickness: 1,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down,
                        )),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 2,
                              blurRadius: 2)
                        ]),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Phone number",
                      border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red, minimumSize: Size(370, 50)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Bt()));
              },
              child: Text(
                "Continue",
              )),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text("or"),
            Expanded(
              child: Divider(
                thickness: 1,
                color: Colors.grey[400],
              ),
            ),
          ]),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                child: Image.network(
                  "https://banner2.cleanpng.com/20180324/bwq/kisspng-google-logo-google-adwords-google-panda-chrome-5ab6e660439c29.6670544415219359682769.jpg",
                  width: 50,
                  height: 50,
                ),
                backgroundColor: Color.fromARGB(255, 251, 248, 248),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                  backgroundColor: Color.fromARGB(255, 250, 251, 250),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
