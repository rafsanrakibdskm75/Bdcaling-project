import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CutomButton extends StatelessWidget {
  const CutomButton({super.key,required this.ButtonText,required this.onTab});

final ButtonText;
final VoidCallback onTab;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        padding: EdgeInsets.only(top: 4,bottom: 4),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: CustomText(text: ButtonText ,color: Colors.white,fontWeight: FontWeight.w700,),
        ),
      ),
    );
  }
}
