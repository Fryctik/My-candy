import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_candy/front/screen/Widgets/appvar_candy.dart';
import 'package:my_candy/front/screen/homeViews/HomeViewsWidgets/information_home.dart';
import 'package:my_candy/front/screen/Widgets/product_list.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
        slivers: [
          AppBarCandy(),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
            sliver: SliverToBoxAdapter(
              child: InformationHomePage()
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
            sliver: SliverToBoxAdapter(
              child: ProductList(),
            ),
          ),      
        ],
    );
  }
}

