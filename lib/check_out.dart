import 'package:flutter/material.dart';

class CheckOutScreen extends StatefulWidget {
  CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  TextEditingController ip = TextEditingController();
  Map<String, bool> rd = {"Home Delivery": true, "Pick Up": false};
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          margin: EdgeInsets.all((MediaQuery.of(context).size.height +
                  MediaQuery.of(context).size.width) /
              2 /
              35),
          color: Colors.white,
          height: (MediaQuery.of(context).size.height +
                      MediaQuery.of(context).size.width) /
                  2 /
                  35 +
              200,
          child: Padding(
            padding: EdgeInsets.all((MediaQuery.of(context).size.height +
                    MediaQuery.of(context).size.width) /
                2 /
                35),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "Cart Summary",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal (4)",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RS. 7,090.00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promotion Discounts",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RS. 300.00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promotion Discounts",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RS. 300.00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promotion Discounts",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RS. 300.00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promotion Discounts",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RS. 300.00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ]),
          ),
        ),
        Container(
          margin: EdgeInsets.all((MediaQuery.of(context).size.height +
                  MediaQuery.of(context).size.width) /
              2 /
              35),
          color: Colors.white,
          height: (MediaQuery.of(context).size.height +
                      MediaQuery.of(context).size.width) /
                  2 /
                  35 +
              200,
          child: Padding(
            padding: EdgeInsets.all((MediaQuery.of(context).size.height +
                    MediaQuery.of(context).size.width) /
                2 /
                35),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "Recipient Details",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                  child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              )),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.8,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
        Container(
          margin: EdgeInsets.all((MediaQuery.of(context).size.height +
                  MediaQuery.of(context).size.width) /
              2 /
              35),
          color: Colors.white,
          height: (MediaQuery.of(context).size.height +
                      MediaQuery.of(context).size.width) /
                  2 /
                  35 +
              130,
          child: Padding(
            padding: EdgeInsets.all((MediaQuery.of(context).size.height +
                    MediaQuery.of(context).size.width) /
                2 /
                35),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Information",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: getButton(context),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("424/1D Palanwatta, Pannipitiya"),
                  Icon(Icons.gps_fixed)
                ],
              ),
            ]),
          ),
        ),
        Container(
          margin: EdgeInsets.all((MediaQuery.of(context).size.height +
                  MediaQuery.of(context).size.width) /
              2 /
              35),
          color: Colors.white,
          height: (MediaQuery.of(context).size.height +
                      MediaQuery.of(context).size.width) /
                  2 /
                  35 +
              200,
          child: Padding(
            padding: EdgeInsets.all((MediaQuery.of(context).size.height +
                    MediaQuery.of(context).size.width) /
                2 /
                35),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "Cart Summary",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal (4)",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RS. 7,090.00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promotion Discounts",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RS. 300.00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promotion Discounts",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RS. 300.00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promotion Discounts",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RS. 300.00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Promotion Discounts",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RS. 300.00",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ]),
          ),
        )
      ]),
    );
  }

  List<Widget> getButton(BuildContext context) {
    List<Widget> b = [];
    double size = MediaQuery.of(context).size.width / 2.5;
    rd.forEach((key, value) {
      b.add(Container(
        width: size,
        decoration: BoxDecoration(
            color: value ? Colors.lightBlue : Colors.white,
            borderRadius: BorderRadius.circular(5)),
        child: TextButton(
          onPressed: () {
            setState(() {
              rd.forEach((key1, value1) {
                if (key1 != key) {
                  rd[key1] = false;
                }
              });
              if (rd[key]! == false) {
                rd[key] = true;
              }
            });
          },
          child: Text(
            key,
            style: TextStyle(color: value ? Colors.white : Colors.lightBlue),
          ),
        ),
      ));
    });
    return b;
  }
}
