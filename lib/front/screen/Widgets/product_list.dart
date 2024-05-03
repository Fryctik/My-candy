
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_candy/front/routes/router.dart'; 

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {

  final List<bool> _isTappedList = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceBetween,
      children: List.generate(10, (index) => 
      Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: InkWell(
          onTap: (){
            
            setState(() {
              _isTappedList[index] = true;
            });
            Future.delayed(const Duration(milliseconds: 150), () {
              setState(() {
                _isTappedList[index] = false;
              });
            });
            context.router.push(const ProductRoute());
          },
          child: AnimatedContainer(
            width: MediaQuery.of(context).size.width / 2 - 10,
            height: 300,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), 
              color: _isTappedList[index] ? const Color.fromARGB(49, 215, 86, 133) : const Color.fromARGB(255, 215, 86, 133),
            ),
            duration: const Duration(milliseconds: 700),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset('assets/images/splash.jpg', fit: BoxFit.fill),
                      ),
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('1000 Р', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          Text('Леденец радужный на палочке', style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      
                    },
                    child: const Text('Добавить', )),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

