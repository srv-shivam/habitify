import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habitify',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Card(
            elevation: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(10, 26, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    // This row is for arrangement of My Journal and right side 2 icons in row
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        //This column is for arrangement of Today & My Journal text
                        children: [
                          const Text(
                            "Today",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: const [
                              // TODO::Change it to TextField
                              Text(
                                "My Journal",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.indigo,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.edit_outlined,
                                size: 21,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90),
                            ),
                            elevation: 0,
                            color: const Color.fromRGBO(208, 225, 250, 0.6),
                            child: Container(
                              padding: const EdgeInsets.all(7),
                              child: const Icon(
                                Icons.school_rounded,
                                size: 24,
                                color: Colors.indigoAccent,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 14,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90),
                            ),
                            elevation: 0,
                            color: const Color.fromRGBO(208, 225, 250, 0.6),
                            child: Container(
                              padding: const EdgeInsets.all(7),
                              child: const Icon(
                                Icons.addchart_rounded,
                                size: 24,
                                color: Colors.indigoAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  ///TODO::Edit here for listview
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        CategoryCardWidget(
                          flag: true,
                          title: "All Habit",
                          icon: Icon(
                            Icons.library_books_outlined,
                            color: Colors.white,
                          ),
                          color: Colors.indigo,
                          textColor: Colors.grey,
                        ),
                        CategoryCardWidget(
                          flag: false,
                          title: "Evening",
                          icon: Icon(
                            Icons.nightlight_round,
                            color: Colors.grey,
                          ),
                          color: Colors.white,
                          textColor: Colors.grey,
                        ),
                        CategoryCardWidget(
                          flag: false,
                          title: "New Area",
                          icon: Icon(
                            Icons.add,
                            color: Colors.grey,
                          ),
                          color: Colors.white,
                          textColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    Key? key,
    required this.flag,
    required this.title,
    required this.icon,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  final bool flag;
  final String title;
  final Icon icon;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 0,
      color: color,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          icon,
          Container(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: flag ? Colors.white : textColor,
              ),
            ),
            padding: const EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}
