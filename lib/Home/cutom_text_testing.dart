import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../winget/Cutom_button.dart';
import '../winget/custom_text.dart';

class CutomTextTesting extends StatelessWidget {
   CutomTextTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('CutomTextTesting'),
      ),
      body: Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 20,horizontal: 20),
      child:CutomButton(ButtonText: 'Log In', onTab: () {  },),
      ),
    );
  }
}
//https://www.figma.com/community/file/1143575071825582037/task-management-to-do-list-app