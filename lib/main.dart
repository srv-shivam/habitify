import 'package:flutter/material.dart';

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
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Row(
              // This row is for arrangement of My Journal and right side 2 icons in row
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //This column is for arrangement of Today & My Journal text
                  children: [
                    const Text(
                      "Today",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    // TODO::Change it to TextField
                    Row(
                      children: const [
                        Text(
                          "My Journal",
                          style: TextStyle(
                            fontSize: 24,
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
                          size: 25,
                        ),
                      ],
                    ),
                  ],
                ), // My Journal
              ],
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
