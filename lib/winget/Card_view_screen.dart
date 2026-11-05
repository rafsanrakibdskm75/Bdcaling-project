import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardViewScreen extends StatelessWidget {
   CardViewScreen({super.key,required this.CardView});

    Map<String, dynamic> CardView={};

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle item tap
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 12,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            // Banner Image
            Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    '${CardView['image']}',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
      
            const SizedBox(height: 8),
      
            // Title and Price
            Row(
              children: [
                Expanded(
                  child: Text(
                    '${CardView['tile']}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF555555),
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                Text(
                  '${CardView['price']}',
                  style: const TextStyle(
                    color: Color(0xFF555555),
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
      
            const SizedBox(height: 5),
      
            // Rating
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 16,
                ),
                const SizedBox(width: 4),
                 Text(
                  '${CardView['rating']}',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
