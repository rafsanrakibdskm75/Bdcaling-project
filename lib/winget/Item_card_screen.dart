import 'package:flutter/cupertino.dart';

class ItemCard_screen extends StatelessWidget {
   ItemCard_screen({super.key,required this.ItemCard});

   Map<String, dynamic> ItemCard={};

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            Container(
              padding: EdgeInsets.all(8),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors:[
                    Color(0xFF80EBA0),
                    Color(0xFF59B879),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(14),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.network(
                  '${ItemCard['image']}',
                  width: 85,
                  height: 85,
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8,),
            Text(
              '${ItemCard['caname']}',
              style: TextStyle(
                color: Color(0xff31276A),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
