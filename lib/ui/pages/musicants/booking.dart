import 'package:flutter/material.dart';
import 'package:musically_street/models/place.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final DateTime _lastDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    var _deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Бронирование',
          style: TextStyle(
              fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: _deviceSize.height * 0.02,
              vertical: _deviceSize.width * 0.04),
          child: Column(
            children: <Widget>[
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Выберите место выступления',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: _deviceSize.height * 0.02,
              ),
              Container(
                height: _deviceSize.height * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) =>
                      PlaceCard(place: places[index])),
                  itemCount: places.length,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Выберите дату',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  IconButton(
                      onPressed: () => showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: _lastDate),
                      icon: Icon(Icons.date_range_sharp)),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Забронировать',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Place> places = [
  Place(name: 'У моста', address: 'Подвесной мост'),
  Place(name: 'Переход', address: 'Подземные переход, площадь Пушкина'),
  Place(name: 'Плаза', address: 'Пр. Ленина, дом 9'),
  Place(
      name: 'У перевернутого дома',
      address: 'Центральная набережная, парк аттракционов'),
];

class PlaceCard extends StatefulWidget {
  late Place place;

  PlaceCard({super.key, required this.place});

  @override
  State<PlaceCard> createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      width: mediaQuery.size.width / 2.25,
      color: Colors.orange[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              '${widget.place.name}',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 1, 
                  child: Icon(Icons.location_on),
                  ),
                Expanded(
                  flex: 3,
                  child: Text(
                    '${widget.place.address}',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Подробности',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
          )),
        ],
      ),
    );
  }
}
