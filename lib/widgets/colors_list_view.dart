import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_application/add_note_cubit/add_note_cubit.dart';
import 'package:notes_application/widgets/color_item.dart';

import '../constants.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  @override

  int currentIndex=0;


  Widget build(BuildContext context) {

    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child:  InkWell(
            onTap: (){
              currentIndex=index;
              BlocProvider.of<AddNoteCubit>(context).color=colors[currentIndex];
              setState(() {

              });
            },
            child: ColorItem(
              colors: colors[index],
              isActive: currentIndex==index ?true :false,
            ),
          ),
        );

      },),
    );
  }
}
