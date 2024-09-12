import 'package:flutter/cupertino.dart';
import 'package:notes_application/widgets/color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context,index){
      return const ColorItem();

    },);
  }
}
