import 'package:flutter/material.dart';
import 'package:trusty/data/data.dart';
import 'package:trusty/utils/sizes.dart';

class Precautions extends StatelessWidget {
  const Precautions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<Widget> list = [];
    for (int i = 0; i < Precaution.list.length; i++) {
      list.add(Row(
        children: [
          Text('${i + 1}.'),
          Sizes.space20,
          Expanded(
            child: Text(
              Precaution.list[i],
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ));
      list.add(Sizes.divider10);
    }
    return Container(
      padding: const EdgeInsets.all(Sizes.size25),
      child: ListView(
        children: [
          Text(
            Precaution.title,
            style: TextStyle(
              color: theme.primaryColorDark,
              fontSize: Sizes.size15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Sizes.divider15,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: list,
          ),
        ],
      ),
    );
  }
}
