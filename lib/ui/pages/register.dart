import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static const String routeName = '/register';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final _deviceSize = MediaQuery.of(context).size;
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: _deviceSize.width * 0.10,
              vertical: _deviceSize.height * 0.01,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: _deviceSize.height * 0.15,
                ),
                Text(
                  'Регистрация',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: _deviceSize.height * 0.03,
                ),
                Text(
                  'Заполните все поля, чтобы создать аккаунт',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey[800]),
                ),
                SizedBox(
                  height: _deviceSize.height * 0.02,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Почтовый Адрес',
                    prefixIcon: Icon(
                      Icons.email_outlined,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(11),
                      ),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(11),
                      ),
                      borderSide: BorderSide(color: Colors.orange, width: 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: _deviceSize.height * 0.01,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Пароль',
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(11),
                      ),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(11),
                      ),
                      borderSide: BorderSide(color: Colors.orange, width: 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: _deviceSize.height * 0.01,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Повторите Пароль',
                    prefixIcon: Icon(
                      Icons.security,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(11),
                      ),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(11),
                      ),
                      borderSide: BorderSide(color: Colors.orange, width: 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: _deviceSize.height * 0.01,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Регистрация',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Уже есть аккаунт? ',
                      style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Войти',
                        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
