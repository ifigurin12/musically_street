import 'package:flutter/material.dart';
import 'package:musically_street/models/comment.dart';
import 'package:musically_street/models/listener.dart';
import 'package:musically_street/models/musicant.dart';

class MusicantProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Musically Street',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ProfileWidget(),
    );
  }
}

class ProfileWidget extends StatefulWidget {
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
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
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${music.groupName}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  TextButton(onPressed: () {}, child: Text('Редактировать')),
                ],
              ),
              TextField(
                maxLines: 3,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '${music.groupDescription}',
                ),
              ),
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (music.imagesUrl != null) {
                    return ListView.builder(
                      itemCount: music.imagesUrl!.length,
                      itemBuilder: ((context, index) => MusicImages(imageUrl: music.imagesUrl![index])),
                    );
                  }
                  else {
                    return SizedBox();
                  }
                },
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
      color: Colors.black,
      child: ClipRRect(
        child: Image.network(imageUrl),
      ),
    );
  }
}

Musicant music = Musicant(
  [
    'https://velvetgroup.ru/storage/app/media/group-photo2.jpg',
    'https://s0.rbk.ru/v6_top_pics/media/img/9/27/755845510052279.jpeg',
    'https://uznayvse.ru/images/content/2018/10/uzn_15409047330.jpg',
    'https://s15.stc.all.kpcdn.net/afisha/msk/wp-content/uploads/sites/5/2022/03/gruppa-na-na.jpg',
  ],
  comments,
  groupName: 'Звуки-бу',
  groupDescription:
      'Мы играем современные популярные песни, таких артистов как: Люся Чеботина, Клава Кока, Дора, Валерий Меладзе. ',
);

List<Comment> comments = [
  Comment(
      comment: 'Какие хорошие ребята, душа радуется от прослушивания',
      user: listener),
  Comment(
      comment: 'Всей семьей отлично провели время, хорошая группа',
      user: listener),
];

ListenerUser listener = ListenerUser(null, name: 'Володя Победов');
