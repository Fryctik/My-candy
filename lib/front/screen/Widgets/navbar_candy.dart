import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavigationBarCandy extends StatefulWidget {
  const NavigationBarCandy({super.key, required this.tabsIndex, });

  final TabsRouter tabsIndex;

  @override
  State<NavigationBarCandy> createState() => _NavigationBarCandyState(tabsRouter: tabsIndex);
}

class _NavigationBarCandyState extends State<NavigationBarCandy> {

  final TabsRouter? tabsRouter;

  _NavigationBarCandyState({required this.tabsRouter});
  
  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: const Color.fromARGB(255, 215, 86, 133),
      selectedItemColor: const Color.fromARGB(255, 118, 33, 64),
      selectedIconTheme: const IconThemeData(size: 20),
      unselectedIconTheme: const IconThemeData(size: 20),
      selectedLabelStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      backgroundColor: const Color.fromARGB(255, 215, 86, 133),
      currentIndex: tabsRouter!.activeIndex,
      onTap: (index) => _openPage(index, tabsRouter!),

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Домашний',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Поиск',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_grocery_store_outlined),
          label: 'Корзина',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Аккаунт',
        ),
      ] 
    );
  }
}
