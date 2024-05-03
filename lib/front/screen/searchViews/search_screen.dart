import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_candy/front/screen/widgets/appvar_candy.dart';
import 'package:my_candy/front/screen/widgets/product_list.dart';
import 'package:my_candy/front/screen/searchViews/widgets/categories_list.dart';


@RoutePage()
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        AppBarCandy(),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
          sliver: SliverToBoxAdapter(
            child: CategoriesList()
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          sliver: SliverToBoxAdapter(
            child: ProductList()
          ),
        ),
        
      ],
    );
  }
}