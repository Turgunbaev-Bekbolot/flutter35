import 'package:flutter/material.dart';
import 'package:praktika_001/balanxe.dart';
import 'package:praktika_001/bottom_conainers/bottom_cont.dart';
import 'package:praktika_001/categories/all_categories.dart';
import 'package:praktika_001/categories/categories.dart';
import 'package:praktika_001/center_buttons.dart';
import 'package:praktika_001/white_container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.2, 1.6),
          colors: [Color(0xff2C3E50), Color(0xff000000)],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 140,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  'Кошелек',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '™',
                  style: TextStyle(
                    color: Color(0xff00FF94),
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 10),
              child: Text(
                '+996702001106',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Balance(),
              Row(
                children: [
                  CenterButton(
                    text1: 'Пополнить',
                    text2: 'баланс',
                    image: 'assets/images/but.png',
                  ),
                  CenterButton(
                    text1: 'Отправить',
                    text2: 'деньги',
                    image: 'assets/images/but2.png',
                  ),
                  CenterButton(
                    text1: 'История',
                    text2: 'транзакций',
                    image: 'assets/images/but3.png',
                  ),
                  WhiteCon(),
                ],
              ),
              AllCategories(),
              Container(
                width: 410,
                height: 75,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomCont(
                      text: 'Главная',
                      icon: Icon(
                        Icons.home_outlined,
                        color: Color(0xff00FF94),
                      ),
                      color2: false,
                    ),
                    BottomCont(
                      text: 'Маркет',
                      icon: Icon(
                        Icons.shopping_basket,
                        color: Color(0xff969DA8),
                      ),
                      color2: true,
                    ),
                    BottomCont(
                      text: 'Чат',
                      icon: Icon(
                        Icons.chat_outlined,
                        color: Color(0xff969DA8),
                      ),
                      color2: true,
                    ),
                    BottomCont(
                      text: 'Профиль',
                      icon: Icon(
                        Icons.person_outline,
                        color: Color(0xff969DA8),
                      ),
                      color2: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
