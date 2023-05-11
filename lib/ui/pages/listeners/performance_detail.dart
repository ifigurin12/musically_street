import 'package:flutter/material.dart';
import 'package:musically_street/models/comment.dart';
import 'package:musically_street/models/listener.dart';
import 'package:musically_street/models/musicant.dart';
import 'package:musically_street/models/performance.dart';
import 'package:musically_street/models/place.dart';

class PerformanceDetail extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Musically Street',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: PerformanceDetailPage(),
    );
  }
}

class PerformanceDetailPage extends StatefulWidget {
  @override
  State<PerformanceDetailPage> createState() => _PerformanceDetailPageState();
}

class _PerformanceDetailPageState extends State<PerformanceDetailPage> {
  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Выступление',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: _deviceSize.height * 0.01, horizontal: _deviceSize.width * 0.04),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${music.groupName}',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    TextButton(onPressed: () {}, child: Text('Подробнее')),
                  ],
                ),
                Text(
                  '${music.groupDescription}',
                  style: TextStyle(fontSize: 15),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: _deviceSize.height * 0.03,
                      bottom: _deviceSize.height * 0.03),
                  height: _deviceSize.height * 0.25,
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: music.imagesUrl.length,
                        itemBuilder: ((context, index) =>
                            MusicImages(imageUrl: music.imagesUrl[index])),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.alarm),
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        '${performance.startPerformance.hour}:${performance.startPerformance.minute} - ${performance.endPerformance.hour}:${performance.endPerformance.minute}',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.location_on),
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        '${performance.placePerformance.address}',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: _deviceSize.height * 0.02,
                    bottom: _deviceSize.height * 0.02,
                  ),
                  child: Container(
                    height: _deviceSize.height * 0.35,
                    width: _deviceSize.width * 0.7,
                    color: Colors.deepOrange,
                    child: Center(
                      child: Text('Здесь будет карта'),
                    ),
                  ),
                ),
              ],
            ),
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

Performance performance = Performance(
  startPerformance: DateTime.now(),
  endPerformance: DateTime.now(),
  placePerformance: Place(name: 'У моста', address: 'Подвесной мост'),
  musicant: music,
);

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
];

ListenerUser listener = ListenerUser(null, name: 'Володя Победов');

List<String> imagesUrl = [
  'https://velvetgroup.ru/storage/app/media/group-photo2.jpg',
  'https://s0.rbk.ru/v6_top_pics/media/img/9/27/755845510052279.jpeg',
  'https://uznayvse.ru/images/content/2018/10/uzn_15409047330.jpg',
  'https://s15.stc.all.kpcdn.net/afisha/msk/wp-content/uploads/sites/5/2022/03/gruppa-na-na.jpg',
];
