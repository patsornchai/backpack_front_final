import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import "./items/item_list.dart";
import './items/itemlists.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Material myItems(IconData icon, String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      heading,
                      style: TextStyle(color: new Color(color), fontSize: 20.0),
                    ),
                  ),
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 35.0,
        ),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              print("Stationery  onTap called.");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemList("Stationery",stationeryList),
                ),
              );
            },
            child: myItems(Icons.edit, "Stationery ", 0xffed622b),
          ),
          GestureDetector(
            onTap: () {
              print("Clothing onTap called.");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemList("Clothing",clothingList),
                ),
              );
            },
            child: myItems(Icons.wc, "Clothing", 0xff26cb3c),
          ),
          GestureDetector(
            onTap: () {
              print("Sport Equipment onTap called.");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemList("Sport Equipment",sportEquipmentList),
                ),
              );
            },
            child: myItems(Icons.fitness_center, "Sport Equip.", 0xff3399fe),
          ),
          GestureDetector(
            onTap: () {
              print("Electronics onTap called.");
              //Navigator.pushNamed(context, "/item_list");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemList("Electronics",electronicsList),
                ),
              );
            },
            child: myItems(Icons.usb, "Electronics ", 0xFF9575CD),
          ),
          GestureDetector(
            onTap: () {
              print("Books onTap called.");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemList("Books",booksList),
                ),
              );
            },
            child: myItems(Icons.book, "Books", 0xFF81C784),
          ),
          GestureDetector(
            onTap: () {
              print("Others onTap called.");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemList("Others",othersList),
                ),
              );
            },
            child: myItems(Icons.graphic_eq, "Others", 0xFFA1887F),
          ),
        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 150.0), //Stationery
          StaggeredTile.extent(1, 150.0), //Clothing
          StaggeredTile.extent(1, 150.0), //Sport Equipment
          StaggeredTile.extent(1, 150.0), //Electronics
          StaggeredTile.extent(1, 150.0), //Books
          StaggeredTile.extent(1, 150.0), //Others
        ],
      ),
    );
  }
}
