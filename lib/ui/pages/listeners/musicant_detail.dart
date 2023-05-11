import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musically_street/models/comment.dart';
import 'package:musically_street/models/listener.dart';
import 'package:musically_street/models/musicant.dart';

class MusicantDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Musically Street',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MusicantDetailPage(),
    );
  }
}

class MusicantDetailPage extends StatefulWidget {
  State<MusicantDetailPage> createState() => _MusicantDetailPageState();
}

class _MusicantDetailPageState extends State<MusicantDetailPage> {
  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Профиль',
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: _deviceSize.height * 0.02,
              vertical: _deviceSize.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '${music.groupName}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: _deviceSize.height * 0.01,
                    bottom: _deviceSize.height * 0.01),
                height: _deviceSize.height * 0.20,
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: music.imagesUrl.length,
                      itemBuilder: ((context, index) =>
                          MusicImages(imageUrl: music.imagesUrl[index])),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: _deviceSize.height * 0.01),
                child: Text(
                  '${music.groupDescription}',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Введите комментарий',
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: _deviceSize.height * 0.01),
                height: _deviceSize.height * 0.4,
                width: _deviceSize.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: music.comments.length,
                  itemBuilder: ((context, index) =>
                      MusicComments(comments: music.comments[index])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MusicImages extends StatelessWidget {
  final imageUrl;

  MusicImages({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.black,
      child: ClipRRect(
        child: Image.network(imageUrl),
      ),
    );
  }
}

class MusicComments extends StatelessWidget {
  final Comment comments;

  MusicComments({required this.comments});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          flex: 1,
          child: CircleAvatar(),
        ),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '${comments.user.name}',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              Text(
                '${comments.comment}',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

List<String> imagesUrl = [
  'https://velvetgroup.ru/storage/app/media/group-photo2.jpg',
  'https://s0.rbk.ru/v6_top_pics/media/img/9/27/755845510052279.jpeg',
  'https://uznayvse.ru/images/content/2018/10/uzn_15409047330.jpg',
  'https://s15.stc.all.kpcdn.net/afisha/msk/wp-content/uploads/sites/5/2022/03/gruppa-na-na.jpg',
];

Musicant music = Musicant(
  imagesUrl: imagesUrl,
  comments: comments,
  groupName: 'Звуки-бу',
  groupDescription:
      'Мы играем современные популярные песни, таких артистов как: Люся Чеботина, Клава Кока, Дора, Валерий Меладзе. ',
);

List<Comment> comments = [
  Comment(
    comment: 'Какие хорошие ребята, душа радуется от прослушивания',
    user: listener,
  ),
  Comment(
    comment: 'У нас нет времени на раскачку, но эти ребята нас раскачали',
    user: listener,
  ),
  Comment(
    comment:
        'Чем дольше стояли, тем сильнее проникались той атмсоферой теплоты и радости которую дарит группа Звуки Бу',
    user: listener,
  ),
  Comment(
    comment:
        'Чем дольше стояли, тем сильнее проникались той атмсоферой теплоты и радости которую дарит группа Звуки Бу',
    user: listener,
  ),
  Comment(
    comment:
        'Чем дольше стояли, тем сильнее проникались той атмсоферой теплоты и радости которую дарит группа Звуки Бу',
    user: listener,
  ),
  Comment(
    comment:
        'Чем дольше стояли, тем сильнее проникались той атмсоферой теплоты и радости которую дарит группа Звуки Бу',
    user: listener,
  ),
];

ListenerUser listener = ListenerUser(null, name: 'Володя Победов');
