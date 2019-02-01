import 'package:flutter/material.dart'; // 引用
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    // 这里返回了一个 MaterialApp 实例
    return new MaterialApp(
      title: 'ListView',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('ListView'), // 标题
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
  //  在Dart语言中使用下划线前缀标识符，会强制其变成私有的。
  final _list = <WordPair>[];

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return _buildSuggestions();
  }

  Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        // 对于每个建议的单词对都会调用一次itemBuilder，然后将单词对添加到ListTile行中
        // 在偶数行，该函数会为单词对添加一个ListTile row.
        // 在奇数行，该函数会添加一个分割线widget，来分隔相邻的词对。
        // 注意，在小屏幕上，分割线看起来可能比较吃力。
        itemBuilder: (context, i) {
          // 在每一列之前，添加一个1像素高的分隔线widget
          if (i.isOdd) return new Divider();

          // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整），比如i为：1, 2, 3, 4, 5
          // 时，结果为0, 1, 1, 2, 2， 这可以计算出ListView中减去分隔线后的实际单词对数量
          final index = i ~/ 2;
          // 如果是建议列表中最后一个单词对
          if (index >= _list.length) {
            // ...接着再生成10个单词对，然后添加到建议列表
            _list.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_list[index]);
        }
    );


  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}
