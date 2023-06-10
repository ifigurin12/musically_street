import 'package:flutter/material.dart';
import 'package:musically_street/models/comment.dart';
import 'package:musically_street/models/listener.dart';
import 'package:musically_street/models/musicant.dart';
import 'package:musically_street/models/performance.dart';
import 'package:musically_street/models/place.dart';

class MusicantPerformancePage extends StatefulWidget {
  @override
  State<MusicantPerformancePage> createState() =>
      _MusicantPerformancePageState();
}

class _MusicantPerformancePageState extends State<MusicantPerformancePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body:
            ListView.builder(
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {},
            ),
      ),
    );
  }
}

List<String> imagesUrl = [
  'https://velvetgroup.ru/storage/app/media/group-photo2.jpg',
  'https://s0.rbk.ru/v6_top_pics/media/img/9/27/755845510052279.jpeg',
  'https://uznayvse.ru/images/content/2018/10/uzn_15409047330.jpg',
  'https://s15.stc.all.kpcdn.net/afisha/msk/wp-content/uploads/sites/5/2022/03/gruppa-na-na.jpg',
];

ListenerUser listener = ListenerUser(null, name: 'Володя Победов');

Musicant music = Musicant(
  imagesUrl: imagesUrl,
  comments: [Comment(
    comment: 'Потрясающая группа, слушали всей семьей, очень понравлось!!!',
    user: listener,
  ),],
  groupName: 'Звуки-бу',
  groupDescription:
      'Мы играем современные популярные песни, таких артистов как: Люся Чеботина, Клава Кока, Дора, Валерий Меладзе. ',
);

List<Performance> perfList = [
  Performance(startPerformance: DateTime.now(), endPerformance: DateTime.now(), placePerformance: Place(name: 'У моста', address: 'Подвесной мост'), musicant: music,), 
  Performance(startPerformance: DateTime.now(), endPerformance: DateTime.now(), placePerformance: Place(name: 'Переход', address: 'Подземный переход, площадь Пушкина'), musicant: music,)
];