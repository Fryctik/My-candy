import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_candy/front/routes/router.dart';
import 'package:my_candy/front/screen/widgets/navbar_candy.dart';

@RoutePage()
class ScreenLogic extends StatefulWidget {
  const ScreenLogic({super.key});

  @override
  State<ScreenLogic> createState() => _ScreenLogicState();
}

class _ScreenLogicState extends State<ScreenLogic> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: const [
          HomeRoute(),
          SearchRoute(),
          BasketRoute(),
          AccountRoute(),
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: child,
            bottomNavigationBar: NavigationBarCandy(tabsIndex: tabsRouter,),
          );
        },
      );
  }
}