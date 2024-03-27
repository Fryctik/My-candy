import 'package:flutter/material.dart';

class AppBarCandy extends StatelessWidget {
  const AppBarCandy({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      snap: true,
      floating: true,
      title: const Text('Мои сладости', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      centerTitle: true,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: const Color.fromARGB(255, 215, 86, 133),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(51),
        child: Container(
          padding: const EdgeInsets.all(5),
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 234, 234, 234),
            borderRadius: BorderRadius.circular(7)
          ),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.search_rounded, size: 13,),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 0, 2),
                child: Text('Поиск товаров...', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// AppBar(
//       backgroundColor: const Color.fromARGB(255, 215, 86, 133),
//       titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25),
//       centerTitle: true,
//       title: const Text('My Candy'),
      
//     );