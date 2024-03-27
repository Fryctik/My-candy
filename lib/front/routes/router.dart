import 'package:auto_route/auto_route.dart';
import 'package:my_candy/front/screen/accountViews/account_screen.dart';
import 'package:my_candy/front/screen/basketViews/basket_screen.dart';
import 'package:my_candy/front/screen/homeViews/home_screen.dart';
import 'package:my_candy/front/screen/productViews/product_screen.dart';
import 'package:my_candy/front/screen/screen_logic.dart';
import 'package:my_candy/front/screen/searchViews/search_screen.dart';

part 'router.gr.dart';            
              
@AutoRouterConfig()      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [      
      AutoRoute(
        page: RouteLogic.page,
        path: '/',
        children: [
          AutoRoute(
            page: HomeRoute.page, 
            path: 'home',
          ),
          AutoRoute(
            page: SearchRoute.page,
            path: 'search',
          ),
          AutoRoute(
            page: BasketRoute.page, 
            path: 'basket',
          ),
          AutoRoute(
            page: AccountRoute.page, 
            path: 'account',
          ),
          
        ]
      ),
      AutoRoute(
        page: ProductRoute.page, 
        path: '/product',
      ),
   ];  
 }