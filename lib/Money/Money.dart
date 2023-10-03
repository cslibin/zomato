import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Money extends StatefulWidget {
  const Money({super.key});

  @override
  State<Money> createState() => _MoneyState();
}

class _MoneyState extends State<Money> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            Container(
                height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "asset/WhatsApp Image 2023-10-02 at 12.56.34.jpg",
                        ),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.location_on,
                      size: 40,
                      color: Colors.white,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Padamughal ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "Kochi",
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                  ],
                )),
            SizedBox(
              height: 50,
            ),
            Card(
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey)),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.network(
                      "https://w7.pngwing.com/pngs/205/162/png-transparent-indian-rupee-sign-computer-icons-money-india-text-investment-payment.png",
                    ),
                  ),
                ),
                title: Text(
                  "Zomato Balance",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "₹0",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "GIFT CARDS",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Column(children: [
                ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text("Claim a Gift Card"),
                ),
                ListTile(
                  subtitle: Text("Balance:₹0.00"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text("Claim a Gift Card"),
                ),
                ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text("Purchase History"),
                )
              ]),
            )
          ],
        )),
      ),
    );
  }
}
