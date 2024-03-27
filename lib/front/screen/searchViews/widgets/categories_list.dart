import 'package:flutter/material.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {

  
  List<String> categories = [
    'Шоколад', 'Карамель', 'Бисквит', 'Торты', 'Конфенты', 'Крем',
  ];

  List<bool> tapListControilerColor = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7), 
        color: const Color.fromARGB(255, 215, 86, 133),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Категории поиска:',
            style: TextStyle(
              fontSize: 17, 
              fontWeight: FontWeight.w600, 
              color: Colors.white
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Wrap(
              children: List.generate(categories.length, (index) => 
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 5, 5),
                  height: 30,
                  child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        tapListControilerColor[index] = !tapListControilerColor[index];
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: tapListControilerColor[index] ? MaterialStateProperty.all(const Color.fromARGB(255, 118, 33, 64)) : MaterialStateProperty.all(Colors.white),
                    ), 
                    child: Text(
                      categories[index], 
                      style: TextStyle(
                        fontSize: 12, 
                        fontWeight: FontWeight.w600,
                        color: tapListControilerColor[index] ? Colors.white : const Color.fromARGB(255, 118, 33, 64)
                      ),
                    ),
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}