import 'package:as_task7/model/ICList.dart';
import 'package:as_task7/theme/bottom_navigation.dart';
import 'package:as_task7/theme/tabBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //<Item> list=List.from(productdata).map<Item>((item) => Item.fromMap(item)).toList();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBarContent(),
        body: TabBarView(
          children: [
            IncommingCalls(),
            OnGoingCalls(),
            MissedCalls(),
          ],
        ),
        bottomNavigationBar: MyTheme().bottom,
      ),
    );
  }
}

class IncommingCalls extends StatelessWidget {
  const IncommingCalls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: ListView.separated(
        itemCount: icList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      icList[index].phone,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(icList[index].time))
                  ],
                ),
                subtitle: Text(icList[index].location),
                trailing: Icon(Icons.info),
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

class OnGoingCalls extends StatelessWidget {
  const OnGoingCalls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: ListView.separated(
        itemCount: ogList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.green,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ogList[index].phone,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(ogList[index].time))
                  ],
                ),
                subtitle: Text(ogList[index].location),
                trailing: Icon(Icons.info),
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

class MissedCalls extends StatelessWidget {
  const MissedCalls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: ListView.separated(
        itemCount: missedList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.call_missed,
                  color: Colors.red,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      missedList[index].phone,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(missedList[index].time))
                  ],
                ),
                subtitle: Text(missedList[index].location),
                trailing: Icon(Icons.info),
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
