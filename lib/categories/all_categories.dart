import 'package:flutter/material.dart';
import 'package:praktika_001/categories/categories.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 410,
      height: 400,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 28,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Categories(
                          text: 'Доставка еды на вашем районе',
                          image: 'assets/images/burger.png',
                          color: Color(0xff2C3E50),
                          width: true,
                          height: true,
                          textColor: true,
                        ),
                        Categories(
                          text: 'Лучшие гаджеты для вас и вашей семьи',
                          image: 'assets/images/phone.png',
                          color: Colors.blue,
                          width: false,
                          height: false,
                          textColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Categories(
                      text: 'Доставка с гипермаркетов',
                      image: 'assets/images/market.png',
                      color: Colors.green,
                      width: true,
                      height: true,
                      textColor: true,
                    ),
                    Categories(
                      text: 'Будьте здоровы! Аптеки в вашем районе',
                      image: 'assets/images/photo.png',
                      color: Colors.grey.shade300,
                      width: true,
                      height: true,
                      textColor: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
