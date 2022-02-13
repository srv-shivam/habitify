import 'package:flutter/material.dart';
import 'package:habitify/pages/categories.dart';
import 'package:habitify/pages/journal.dart';
import 'package:habitify/pages/progress.dart';
import 'package:habitify/pages/settings.dart';

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
  int currentIndex = 0;

  var screens = [
    Journal(),
    Progress(),
    Categories(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          screens[currentIndex],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        selectedFontSize: 15,
        unselectedFontSize: 13,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
              label: "Journal",
              icon: Icon(Icons.view_stream),
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
              label: "Progress",
              icon: Icon(Icons.pie_chart_outline_rounded),
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
              label: "Categories",
              icon: Icon(Icons.grid_view),
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(Icons.settings),
              backgroundColor: Colors.indigo),
        ],
      ),
    );
  }
}

// class CategoryCardWidget extends StatelessWidget {
//   const CategoryCardWidget({
//     Key? key,
//     required this.flag,
//     required this.title,
//     required this.icon,
//     required this.color,
//     required this.textColor,
//   }) : super(key: key);
//
//   final bool flag;
//   final String title;
//   final Icon icon;
//   final Color color;
//   final Color textColor;
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       elevation: 0,
//       color: color,
//       child: Row(
//         children: [
//           const SizedBox(
//             width: 10,
//           ),
//           icon,
//           Container(
//             child: Text(
//               title,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.w700,
//                 color: flag ? Colors.white : textColor,
//               ),
//             ),
//             padding: const EdgeInsets.all(10),
//           ),
//         ],
//       ),
//     );
//   }
// }
