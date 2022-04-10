import 'package:flutter/material.dart';
import 'routes.dart';
import 'navDraw.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
    theme: ThemeData(primarySwatch: Colors.pink),
    title: "Belajar Drawer",
    debugShowCheckedModeBanner: false,
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Appbar Cindull"),
          ),
          drawer: DrawerNav(),
          body: Center(
            child: Text('HAII DENGAN CINDULL DISINII', style: TextStyle(fontWeight: FontWeight.bold)),
          )
          // endDrawer: CustomDrawer(),
          // body: TabBarView(
          //   children: <Widget>[
          //     Playlist(),
          //     Collections(),
          //     Favorite()
          //   ],
          // )
          ));
}
