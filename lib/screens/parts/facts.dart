import 'package:flutter/material.dart';
import 'package:trusty/data/data.dart';
import 'package:trusty/utils/sizes.dart';

class Facts extends StatelessWidget {
  const Facts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    List<Widget> list = [];
    for (int i = 1; i < Fact.list.length; i++) {
      list.add(Text('*   ${Fact.list[i]}'));
    }
    return Container(
      padding: const EdgeInsets.all(Sizes.size25),
      child: ListView(
        children: [
          Text(
            Fact.title,
            style: TextStyle(
              color: theme.primaryColorDark,
              fontSize: Sizes.size15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Sizes.divider10,
          Text(Fact.body[0], textAlign: TextAlign.justify),
          Sizes.divider10,
          const SizedBox(
            width: double.infinity,
            child: Image(
              image: AssetImage(Fact.image),
              fit: BoxFit.contain,
            ),
          ),
          Sizes.divider10,
          Text(Fact.body[1], textAlign: TextAlign.justify),
          Sizes.divider10,
          Text(
            Fact.list[0],
            style: TextStyle(
              color: theme.primaryColorDark,
              fontWeight: FontWeight.bold,
            ),
          ),
          Sizes.divider10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: list,
          ),
          Sizes.divider15,
          Text(Fact.body[2], textAlign: TextAlign.justify),
          Sizes.divider10,
        ],
      ),
    );
  }
}
