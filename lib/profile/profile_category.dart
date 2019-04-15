import 'package:flutter/material.dart';

class ProfileCategory extends StatefulWidget {
  @override
  _ProfileCategoryState createState() => new _ProfileCategoryState();
}

class _ProfileCategoryState extends State<ProfileCategory> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;
  bool _value6 = false;

  void _value1Changed(bool value) => setState(() => _value1 = value);
  void _value2Changed(bool value) => setState(() => _value2 = value);
  void _value3Changed(bool value) => setState(() => _value3 = value);
  void _value4Changed(bool value) => setState(() => _value4 = value);
  void _value5Changed(bool value) => setState(() => _value5 = value);
  void _value6Changed(bool value) => setState(() => _value6 = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Edit Category'),
      ),
      body: new ListView(
        shrinkWrap: true,
        padding: new EdgeInsets.all(32.0),
        children: <Widget>[
          // new Checkbox(value: _value1, onChanged: _value1Changed),
          new CheckboxListTile(
            value: _value1,
            onChanged: _value1Changed,
            title: new Text('Stationery'),
            controlAffinity: ListTileControlAffinity.leading,
            subtitle: new Text('Pen, Pencil, Eraser,etc.'),
            secondary: new Icon(Icons.archive),
            activeColor: Colors.red,
          ),
          new CheckboxListTile(
            value: _value2,
            onChanged: _value2Changed,
            title: new Text('Clothing'),
            controlAffinity: ListTileControlAffinity.leading,
            subtitle: new Text('Student Uniform, Belt, etc.'),
            secondary: new Icon(Icons.archive),
            activeColor: Colors.red,
          ),
          new CheckboxListTile(
            value: _value3,
            onChanged: _value3Changed,
            title: new Text('Sport Equip'),
            controlAffinity: ListTileControlAffinity.leading,
            subtitle: new Text('Balls, Racquet, Bats, etc.'),
            secondary: new Icon(Icons.archive),
            activeColor: Colors.red,
          ),
          new CheckboxListTile(
            value: _value4,
            onChanged: _value4Changed,
            title: new Text('Electronics'),
            controlAffinity: ListTileControlAffinity.leading,
            subtitle: new Text('Laptop, Tablet, etc.'),
            secondary: new Icon(Icons.archive),
            activeColor: Colors.red,
          ),
          new CheckboxListTile(
            value: _value5,
            onChanged: _value5Changed,
            title: new Text('Book'),
            controlAffinity: ListTileControlAffinity.leading,
            subtitle: new Text('Textbook, Novels, etc.'),
            secondary: new Icon(Icons.archive),
            activeColor: Colors.red,
          ),
          new CheckboxListTile(
            value: _value6,
            onChanged: _value6Changed,
            title: new Text('Others'),
            controlAffinity: ListTileControlAffinity.leading,
            subtitle: new Text('Tools, Lab Equipment, etc.'),
            secondary: new Icon(Icons.archive),
            activeColor: Colors.red,
          ),
          new MaterialButton(
            height: 40.0,
            minWidth: 300.0,
            color: Colors.pink[400],
            textColor: Colors.white,
            child: new Text("Finish"),
            onPressed: () {
              Navigator.pop(context);
            },
            splashColor: Colors.pink[200],
          ),
        ],
      ),
    );
  }
}
