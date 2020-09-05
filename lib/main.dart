import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/img_detail.dart';
import 'package:learn_flutter/pages/theme.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list'),
      ),
      body: Center(
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                childAspectRatio: 16 / 9,
                mainAxisSpacing: 8),
            children: List.generate(30, (index) {
              final _img = 'https://picsum.photos/500/500?random=$index';
              return GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  //   return ImgDetail(_img);
                  // }));
                  Navigator.of(context).push(PageRouteBuilder(pageBuilder: (ctx,an1,an2) {
                    return FadeTransition(opacity:an1,child: ImgDetail(index,_img));
                  }));
                },
                child: Hero(tag: _img, child: Image.network(
                  _img,
                  fit: BoxFit.cover,
                ),)
              );
            })),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
