import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_application/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  @override

  int currentIndex=0;
  List <Color> colors=[
    Color(0xffFFCDB2),
    Color(0xffE5989B),
    Color(0xffB5838D),
    Color(0xff8D8896),
    Color(0xff9B5DE5),
    Color(0xffF15BB5),
    Color(0xffFEE440),
    Color(0xff00BBF9),
    Color(0xff00F5D4)
  ];

  Widget build(BuildContext context) {

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: colors.length,
      itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child:  InkWell(
          onTap: (){
            currentIndex=index;
            setState(() {

            });
          },
          child: ColorItem(
            colors: colors[index],
            isActive: currentIndex==index ?true :false,
          ),
        ),
      );

    },);
  }
}
