import 'package:flutter/material.dart'; // 引用
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    // 这里返回了一个 MaterialApp 实例
    return new MaterialApp(
      title: 'HelloFlutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('HelloWorld'), // 标题
        ),
        body: new Center(
//          child: new Text('Hello World!'),
            child: new RandomWords(), // 生成一个随机的词组
        ),
      ),
    );
  }
}


class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

