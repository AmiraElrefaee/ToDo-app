import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Custom_bottom.dart';
import 'custom_text_field.dart';

class addNoteForm extends StatefulWidget {
  const addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  @override
  final GlobalKey<FormState> formKey =GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String ?title ,subTitle;
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
         const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value){
              title=value;
            },
            hint: 'Title',
      
          ),
         const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value){
              subTitle=value;
            },
            hint: 'content',
            maxlines: 5,
          ),
       const SizedBox(height: 100,),
          CustomBottom(
            onTap: (){
              if (formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else
                {
                  autovalidateMode=AutovalidateMode.always;
                  setState(() {

                  });
                }
            },
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

