import 'package:flutter/cupertino.dart';

import 'Note_item.dart';

class notesListView extends StatelessWidget {
  const notesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: ListView.builder(
          padding: EdgeInsets.zero,
            itemCount: 3,
            itemBuilder: (context,index)
            {
          return const Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: const NotemItem(),
          );
        }),
      ),
    );
  }
}
