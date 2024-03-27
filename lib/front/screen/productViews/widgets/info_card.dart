import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key, required this.icon, this.information, required this.color,
  });

  final IconData icon;
  final Color color;
  final information;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      width: 60,
      height: 40,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 118, 33, 64),
        borderRadius: BorderRadius.circular(7)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(width: 5,),
          Text('$information', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}