import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          // 左側のアイコン
          leading: Icon(Icons.arrow_back),
          // タイトルテキスト
          title: Text('Hello'),
          // 右側のアイコン一覧
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: Image.network('https://placehold.jp/50x50.png'),
              title: Text('ListTile'),
              subtitle: Text('subtitle'),
              trailing: Icon(Icons.more_vert),
            ),
            // 影のついたカードUIが作れる
            Card(
              child: Container(
                height: 60,
                width: double.infinity,
                child: Text('Card'),
              ),
            ),
            // 組み合わせることもOK
            Card(
              child: ListTile(
                leading: Image.network('https://placehold.jp/50x50.png'),
                title: Text('Card and ListTile'),
                subtitle: Text('subtitle'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Container(
              height: 125,
              padding: EdgeInsets.all(4),
              // childrenを指定してリスト表示
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.blue[600],
                    child: Text('Item 1'),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[300],
                    child: Text('Item 2'),
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue[100],
                    child: Text('Item 3'),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {/* ボタンがタップされた時の処理 */},
              child: Text('click here'),
            ),
            OutlinedButton(
              onPressed: () {/* ボタンがタップされた時の処理 */},
              child: Text('click here'),
            ),
            ElevatedButton(
              onPressed: () {/* ボタンがタップされた時の処理 */},
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              child: Text('click here'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('click here'),
            ),
            IconButton(
              onPressed: () {},
              // 表示アイコン
              icon: Icon(Icons.thumb_up),
              // アイコン色
              color: Colors.pink,
              // サイズ
              iconSize: 64,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.thumb_up),
              label: Text('Good'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.favorite),
              label: Text('Like'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.flight),
              label: Text('Flight'),
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: Row(
                // 均等配置
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(color: Colors.red, child: Text('左')),
                  Container(color: Colors.blue, child: Text('均等配置')),
                  Container(color: Colors.green, child: Text('右')),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: Row(
                // 均等配置
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(color: Colors.red, child: Text('左')),
                  Container(color: Colors.blue, child: Text('均等配置')),
                  Container(color: Colors.green, child: Text('右')),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: Row(
                // 均等配置
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(color: Colors.red, child: Text('左')),
                  Container(color: Colors.blue, child: Text('均等配置')),
                  Container(color: Colors.green, child: Text('右')),
                ],
              ),
            ),
          ],
        ),
        // body: Center(
        //   child: Text('Hello World'),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.favorite),
        ),
      ),
    );
  }
}
