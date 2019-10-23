import 'package:flutter/material.dart';

class WeChat extends StatelessWidget {
  WeChat();

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: 15,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          Divider(
            height: 1.0,
          ),
          ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: new AssetImage('lib/assets/images/avatar.jpg')
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    '主标题',
                    style: new TextStyle(fontWeight: FontWeight.w500),
                  ),
                  new Text(
                    '12:00',
                    style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: new Container(
                padding: const EdgeInsets.only(top: 4.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                        '你好呀，我是赛利亚' + i.toString(),
                        style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                    Icon(Icons.alarm_off, color: Colors.grey, size: 16.0),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
