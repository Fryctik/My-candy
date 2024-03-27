import 'package:flutter/material.dart';
import 'package:my_candy/front/screen/productViews/widgets/info_card.dart';

class InformationProduct extends StatelessWidget {
  const InformationProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 215, 86, 133),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(7)), 
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.asset('assets/images/splash.jpg', fit: BoxFit.fill,)
          ),
          Container(
            padding: const EdgeInsets.all(3),
            width: double.infinity,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Леденец радужный на палочке', 
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 15, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  children: [
                    InfoCard(color: Colors.yellow, icon: Icons.star, information: 5.0,),
                    InfoCard(color: Colors.white, icon: Icons.messenger, information: 10,),
                    InfoCard(icon: Icons.shopping_cart, color: Colors.white, information: 213,)
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Описание:',
                          style: TextStyle(
                            fontSize: 17, 
                            fontWeight: FontWeight.w600, 
                            color: Colors.white
                          ),
                        ),
                        Text(
                          'Вкусный и очень сладкий леденец окрашенный в цвета радуги.'
                          ' Станет отличным подарком для ребенка, но сможет порадовать и взрослых.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),
                        ),
                      ],
                    ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 118, 33, 64),
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            padding: const EdgeInsets.fromLTRB(10, 3, 0, 3),
            child: const Text(
              'Цена: 1000 ₽',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}