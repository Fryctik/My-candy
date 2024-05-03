import 'package:flutter/material.dart';
import 'package:my_candy/front/screen/homeViews/HomeViewsWidgets/slider_action.dart';

class InformationHomePage extends StatelessWidget {
  const InformationHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7), 
        color: const Color.fromARGB(255, 215, 86, 133),
      ),
      padding: const EdgeInsets.all(3).copyWith(top: 10, bottom: 10),
      child: Column(
        children: [
          SliderActionImage(),
          Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ваша корзина:', 
                    style: TextStyle(
                      fontSize: 17, 
                      fontWeight: FontWeight.w600, 
                      color: Colors.white
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => Container(
                        
                        height: double.infinity, 
                        width: 200, 
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}