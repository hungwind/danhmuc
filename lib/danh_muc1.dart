import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  TextEditingController ip = TextEditingController();
  Map<int, dynamic> listCategories = {
    0: {"name": "Household", "image": "", "icon": Icons.house},
    1: {"name": "Grocery", "image": "", "icon": Icons.house},
    2: {"name": "Grocery", "image": "", "icon": Icons.house},
    3: {"name": "Grocery", "image": "", "icon": Icons.house},
    4: {"name": "Grocery", "image": "", "icon": Icons.house},
    5: {"name": "Grocery", "image": "", "icon": Icons.house},
    6: {"name": "Grocery", "image": "", "icon": Icons.house},
    7: {"name": "Grocery", "image": "", "icon": Icons.house},
    8: {"name": "Grocery", "image": "", "icon": Icons.house},
    9: {"name": "Liquor", "image": "", "icon": Icons.house},
    10: {"name": "Chilled", "image": ""},
  };
  Map<int, dynamic> listHotDeals = {
    0: {
      "name": "Ginger",
      "image": "lib/assets/images/gung.png",
      "amout": "1KG",
      "isFavourite": true,
      "price": 690
    },
    1: {
      "name": "Garlic Premium",
      "image": "lib/assets/images/toi.png",
      "amout": "1KG",
      "isFavourite": false,
      "price": 690
    },
    2: {
      "name": "Red Onions",
      "image": "lib/assets/images/hanhdo.png",
      "amout": "1KG",
      "isFavourite": false,
      "price": 690
    },
  };
  Map<int, dynamic> listKeelDeals = {
    0: {
      "name": "Carrot",
      "image": "lib/assets/images/carrot.png",
      "amout": "1KG",
      "isFavourite": true,
      "price": 690
    },
    1: {
      "name": "Mango - Bud",
      "image": "lib/assets/images/mango.png",
      "amout": "1KG",
      "isFavourite": false,
      "price": 690
    },
    2: {
      "name": "Grapes - Green",
      "image": "lib/assets/images/grapergreen.png",
      "amout": "1KG",
      "isFavourite": false,
      "price": 690
    },
  };
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Wrap(
                  children: [
                    Text("View all",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_right)
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6,
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: buildCategories(context),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Wrap(
                  children: [
                    Text("View all",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_right)
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: buildProducts(context, listHotDeals),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Wrap(
                  children: [
                    Text("View all",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_right)
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: buildProducts(context, listKeelDeals),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> buildCategories(BuildContext context) {
    List<Widget> wd = [];
    double sizeContainer = MediaQuery.of(context).size.height / 9 - 25;
    listCategories.forEach((key, value) {
      wd.add(Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: sizeContainer,
            width: sizeContainer,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius:
                    BorderRadius.all(Radius.circular(sizeContainer / 2))
                // image: DecorationImage()
                ),
            child: Icon(value["icon"]),
          ),
          Center(
            child: Text(
              value["name"],
              style: TextStyle(fontSize: 15),
            ),
          ),
        ],
      ));
    });
    return wd;
  }

  List<Widget> buildProducts(BuildContext context, Map<int, dynamic> list) {
    List<Widget> wd = [];
    double sizeContainer = MediaQuery.of(context).size.height / 6 - 25;
    list.forEach((key, value) {
      wd.add(Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: sizeContainer,
                width: sizeContainer,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    image: DecorationImage(image: AssetImage(value["image"]))),
              ),
              Positioned(
                  top: 0,
                  left: 11,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        value["amout"],
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: Center(
                      child: value['isFavourite']
                          ? Icon(Icons.favorite)
                          : Icon(Icons.favorite_outline_rounded),
                    ),
                  )),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value["name"],
                ),
                Text(
                  "Rs.${value["price"]}",
                ),
              ],
            ),
          ),
        ],
      ));
    });
    return wd;
  }
}
