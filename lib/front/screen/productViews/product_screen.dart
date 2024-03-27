import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_candy/front/screen/productViews/widgets/information_product.dart';

@RoutePage()
class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Мои сладости', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 215, 86, 133),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const Column(
        children: [
          InformationProduct()
        ],
      ),
    );
  }
}



