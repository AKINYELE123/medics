import 'package:flutter/material.dart';
import 'package:trusty/data/data.dart';
import 'package:trusty/utils/sizes.dart';

class Faq extends StatelessWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    //q4 list
    List<Widget> q4 = [];
    for (int i = 0; i < FAQ.ans4.length; i++) {
      q4.add(Row(
        children: [
          const Text('*'),
          Sizes.space20,
          Expanded(
            child: Text(
              FAQ.ans4[i],
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ));
      q4.add(Sizes.divider10);
    }

    //q5 list
    List<Widget> q5 = [];
    for (int i = 0; i < FAQ.ans5.length; i++) {
      q5.add(Row(
        children: [
          const Text('*'),
          Sizes.space20,
          Expanded(
            child: Text(
              FAQ.ans5[i],
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ));
      q5.add(Sizes.divider10);
    }
    for (int i = 0; i < FAQ.ans5b.length; i++) {
      q5.add(Row(
        children: [
          Sizes.space30,
          const Text('-  '),
          Expanded(
            child: Text(
              FAQ.ans5b[i],
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ));
      q5.add(Sizes.divider10);
    }
    q5.add(const Text(
      FAQ.ans5bNote,
      textAlign: TextAlign.justify,
    ));

    //q6 list
    List<Widget> q6 = [
      Text(
        FAQ.ans6a[0],
        textAlign: TextAlign.justify,
      ),
    ];
    for (int i = 1; i < FAQ.ans6a.length; i++) {
      q6.add(Row(
        children: [
          const Text('*'),
          Sizes.space20,
          Expanded(
            child: Text(
              FAQ.ans6a[i],
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ));
      q6.add(Sizes.divider10);
    }
    q6.add(
      Text(
        FAQ.ans6b[0],
        textAlign: TextAlign.justify,
      ),
    );
    for (int i = 1; i < FAQ.ans6b.length; i++) {
      q6.add(Row(
        children: [
          const Text('*'),
          Sizes.space20,
          Expanded(
            child: Text(
              FAQ.ans6b[i],
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ));
      q6.add(Sizes.divider10);
    }

    return Container(
      padding: const EdgeInsets.all(Sizes.size25),
      child: ListView(
        children: [
          Text(
            FAQ.title,
            style: TextStyle(
              color: theme.primaryColorDark,
              fontWeight: FontWeight.bold,
            ),
          ),
          Sizes.divider15,

          //Question 1
          ExpansionTile(
            title: Text(
              FAQ.questions[0],
              style: TextStyle(
                color: theme.primaryColorDark,
                fontSize: Sizes.size20,
                fontWeight: FontWeight.bold,
              ),
            ),
            tilePadding: EdgeInsets.zero,
            childrenPadding:
                const EdgeInsets.symmetric(horizontal: Sizes.size10),
            children: [
              Sizes.divider10,
              Text(
                FAQ.answers[0],
                textAlign: TextAlign.justify,
              ),
              Sizes.divider20,
            ],
          ),
          Sizes.divider10,

          //Question 2
          ExpansionTile(
            title: Text(
              FAQ.questions[1],
              style: TextStyle(
                color: theme.primaryColorDark,
                fontSize: Sizes.size20,
                fontWeight: FontWeight.bold,
              ),
            ),
            tilePadding: EdgeInsets.zero,
            childrenPadding:
                const EdgeInsets.symmetric(horizontal: Sizes.size10),
            children: [
              Sizes.divider10,
              Text(
                FAQ.answers[1],
                textAlign: TextAlign.justify,
              ),
              Sizes.divider10,
              const SizedBox(
                width: double.infinity,
                child: Image(
                  image: AssetImage(FAQ.image),
                  fit: BoxFit.contain,
                ),
              ),
              Sizes.divider20,
            ],
          ),
          Sizes.divider10,

          //Question 3
          ExpansionTile(
            title: Text(
              FAQ.questions[2],
              style: TextStyle(
                color: theme.primaryColorDark,
                fontSize: Sizes.size20,
                fontWeight: FontWeight.bold,
              ),
            ),
            tilePadding: EdgeInsets.zero,
            childrenPadding:
                const EdgeInsets.symmetric(horizontal: Sizes.size10),
            children: [
              Sizes.divider10,
              Text(
                FAQ.answers[2],
                textAlign: TextAlign.justify,
              ),
              Sizes.divider20,
            ],
          ),
          Sizes.divider10,

          //Question 4
          ExpansionTile(
            tilePadding: EdgeInsets.zero,
            childrenPadding:
                const EdgeInsets.symmetric(horizontal: Sizes.size10),
            title: Text(
              FAQ.questions[3],
              style: TextStyle(
                color: theme.primaryColorDark,
                fontSize: Sizes.size20,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              Sizes.divider10,
              Text(
                FAQ.answers[3],
                textAlign: TextAlign.justify,
              ),
              Sizes.divider10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: q4,
              ),
              Sizes.divider20,
            ],
          ),
          Sizes.divider10,

          //Question 5
          ExpansionTile(
            tilePadding: EdgeInsets.zero,
            childrenPadding:
                const EdgeInsets.symmetric(horizontal: Sizes.size10),
            title: Text(
              FAQ.questions[4],
              style: TextStyle(
                color: theme.primaryColorDark,
                fontSize: Sizes.size20,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              Sizes.divider10,
              Text(
                FAQ.answers[4],
                textAlign: TextAlign.justify,
              ),
              Sizes.divider10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: q5,
              ),
              Sizes.divider20,
            ],
          ),
          Sizes.divider10,

          //Question 6
          ExpansionTile(
            tilePadding: EdgeInsets.zero,
            childrenPadding:
                const EdgeInsets.symmetric(horizontal: Sizes.size10),
            title: Text(
              FAQ.questions[5],
              style: TextStyle(
                color: theme.primaryColorDark,
                fontSize: Sizes.size20,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              Sizes.divider10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: q6,
              ),
              Sizes.divider20,
            ],
          ),
          Sizes.divider10,

          //Question 7
          ExpansionTile(
            title: Text(
              FAQ.questions[6],
              style: TextStyle(
                color: theme.primaryColorDark,
                fontSize: Sizes.size20,
                fontWeight: FontWeight.bold,
              ),
            ),
            tilePadding: EdgeInsets.zero,
            childrenPadding:
                const EdgeInsets.symmetric(horizontal: Sizes.size10),
            children: [
              Sizes.divider10,
              Text(
                FAQ.answers[5],
                textAlign: TextAlign.justify,
              ),
              Sizes.divider20,
            ],
          ),
          Sizes.divider10,

          //Question 8
          ExpansionTile(
            title: Text(
              FAQ.questions[7],
              style: TextStyle(
                color: theme.primaryColorDark,
                fontSize: Sizes.size20,
                fontWeight: FontWeight.bold,
              ),
            ),
            tilePadding: EdgeInsets.zero,
            childrenPadding:
                const EdgeInsets.symmetric(horizontal: Sizes.size10),
            children: [
              Sizes.divider10,
              Text(
                FAQ.answers[6],
                textAlign: TextAlign.justify,
              ),
              Sizes.divider20,
            ],
          ),
          Sizes.divider20,
        ],
      ),
    );
  }
}
