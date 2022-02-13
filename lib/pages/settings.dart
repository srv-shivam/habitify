import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: getListView(),
    );
  }
}

class NameSection extends StatelessWidget {
  const NameSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Column(
          children: <Widget>[
            Text(
              "Name",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.indigo),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Shivam",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Srivastava",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      Card(
        elevation: 2,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 30,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90),
                ),
                elevation: 2,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  child: const Icon(
                    Icons.person_sharp,
                    size: 80,
                    color: Colors.indigo,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Shivam Srivastava",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0,
                color: const Color.fromRGBO(208, 225, 250, 0.6),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: const Text(
                    "@srvShivam",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person),
          ],
        ),
        subtitle: Text("Title"),
        title: Text("Name"),
        trailing: Icon(Icons.app_registration),
      ),
      ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person),
          ],
        ),
        subtitle: Text("Title"),
        title: Text("Name"),
        trailing: Icon(Icons.app_registration),
      ),
      ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person),
          ],
        ),
        subtitle: Text("Title"),
        title: Text("Name"),
        trailing: Icon(Icons.app_registration),
      ),
    ],
  );

  return listView;
}
