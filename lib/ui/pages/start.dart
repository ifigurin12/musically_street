import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  static const String routeName = '/start';
  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  bool _isMusic = false;
  bool _isListener = false;
  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: _deviceSize.width * 0.04,
                vertical: _deviceSize.height * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Добро пожаловать',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: _deviceSize.height * 0.2,
                ),
                const Text(
                    'Выберите, как вы хотите пользоваться приложением: '),
                ListTile(
                  contentPadding: EdgeInsets.all(15),
                  onTap: () {
                    setState(() {
                      _isMusic = true;
                      _isListener = false;
                    });
                  },
                  selected: _isMusic,
                  leading: Icon(Icons.headset),
                  title: Text('Я - музыкант'),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      _isListener = true;
                      _isMusic = false;
                    });
                  },
                  selected: _isListener,
                  selectedColor: Colors.orange,
                  leading: Icon(Icons.music_note),
                  title: Text('Я - слушатель'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Подтвердить', style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
