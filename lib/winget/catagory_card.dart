import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatagoryCard extends StatelessWidget {
   CatagoryCard({super.key,required this.catagory});

  Map<String, dynamic> catagory;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1.5,),
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFFF8A3D), // Light orange
            Color(0xFFFF5722), // Deep orange
          ],
        ),
      ),
      child: Row(
        children: [
          Image.network('${catagory['image']}',
            height: 30,
            width: 50,),
          SizedBox(width: 2,),
          Text('${catagory['caname']}',style: TextStyle(
            color: Color(0xff31276A),
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          )
        ],
      ),
    );
  }
}
