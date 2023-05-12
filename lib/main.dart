import 'package:flutter/material.dart';
import 'package:flutter_danh_muc/check_out.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.green,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: CheckOutScreen(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        items: bottomRender(),
      ),
    );
  }

  Map<int, dynamic> dataMenu = {
    0: {"name": "Store", "icon": Icons.store, "select": true},
    1: {"name": "Cart", "icon": Icons.shopping_bag, "select": false},
    2: {
      "name": "Like",
      "icon": Icons.favorite_outline_rounded,
      "select": false
    },
    3: {"name": "User", "icon": Icons.person_pin, "select": false},
    4: {"name": "User", "icon": Icons.person_pin, "select": false},
  };
  List<BottomNavigationBarItem> bottomRender() {
    List<BottomNavigationBarItem> data = [];
    dataMenu.forEach((key, value) {
      data.add(BottomNavigationBarItem(
        icon: Icon(
          value["icon"],
          color: value["select"] ? Colors.blue : Colors.black,
        ),
        label: value["name"],
      ));
    });
    return data;
  }
}
