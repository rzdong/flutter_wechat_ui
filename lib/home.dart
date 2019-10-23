import 'package:flutter/material.dart';
import './pages/wechat.dart';
import './pages/tellist.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String _title = '微信(60)';

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<String> _titleList = <String>['微信(60)', '通讯录', '发现', ''];
  List<Widget> _widgetOptions = <Widget>[
    WeChat(),
    TelList(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Me',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _title = _titleList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      _selectedIndex==3 ? null :
      AppBar(
        elevation: 1.0,
        title: Text(
          _title,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        actions: <Widget>[
          new IconButton(
            // action button
            icon: new Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          new IconButton(
            // action button
            icon: new Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('微信'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('通讯录'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.find_replace),
            title: Text('发现'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            title: Text('我'),
          ),
        ],
        selectedItemColor: Colors.green[600],
        unselectedItemColor: Colors.black54,
        unselectedFontSize: 14.0,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
