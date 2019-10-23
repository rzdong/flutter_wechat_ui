import 'package:flutter/material.dart';

class TelList extends StatefulWidget {
  TelList();
  TelListState createState() => TelListState();
}

class TelListState extends State<TelList> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 6,
      itemBuilder: (context, i) => new Column(
          children: i == 0
              ? [1, 2, 3].map((int indexs) {
                  return new Column(children: <Widget>[
                    Divider(height: 1.0),
                    ListTile(
                        leading: CircleAvatar(
                            foregroundColor: Theme.of(context).primaryColor,
                            backgroundColor: Colors.grey,
                            backgroundImage:
                                new AssetImage('lib/assets/images/avatar.jpg')),
                        title: Text(
                          '新用户' + indexs.toString(),
                          style: new TextStyle(fontWeight: FontWeight.w500),
                        ))
                  ]);
                }).toList()
              : <Widget>[
                  new Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(6.0),
                    color: Colors.grey[300],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(str[i-1]),
                      ],
                    ),
                  ),
                  new Column(
                      children: arr.map((int index) {
                    return new Column(children: <Widget>[
                      Divider(height: 1.0),
                      ListTile(
                          leading: CircleAvatar(
                              foregroundColor: Theme.of(context).primaryColor,
                              backgroundColor: Colors.grey,
                              backgroundImage: new AssetImage(
                                  'lib/assets/images/avatar.jpg')),
                          title: Text(
                            '姓名' + str[i-1] + ' - ' + index.toString(),
                            style: new TextStyle(fontWeight: FontWeight.w500),
                          ))
                    ]);
                  }).toList())
                ]),
    );
  }
}

const List<int> arr = <int>[1, 2, 3, 4, 5];
const List<String> str = <String>['A', 'B', 'C', 'D', 'E'];
