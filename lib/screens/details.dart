import 'package:flutter/material.dart';
import 'package:trusty/screens/parts/diets.dart';
import 'package:trusty/screens/parts/drugs.dart';
import 'package:trusty/screens/parts/exercises.dart';
import 'package:trusty/screens/parts/facts.dart';
import 'package:trusty/screens/parts/faq.dart';
import 'package:trusty/screens/parts/precautions.dart';
import 'package:trusty/screens/parts/symptoms.dart';
import 'package:trusty/utils/sizes.dart';
import 'package:trusty/utils/styles.dart';

class Details extends StatefulWidget {
  final int index;
  const Details({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final List<Tab> _tabs = const [
    Tab(text: "Facts"),
    Tab(text: "Symptoms"),
    Tab(text: "Diets"),
    Tab(text: "Drugs"),
    Tab(text: "Exercises"),
    Tab(text: "Precautions"),
    Tab(text: "FAQ"),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DefaultTabController(
      initialIndex: widget.index,
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tuberculosis', style: theme.textTheme.headline6),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(Sizes.size80),
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: Sizes.size5, horizontal: Sizes.size10),
              decoration: const BoxDecoration(
                  color: Styles.color3,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Sizes.size15),
                    topRight: Radius.circular(Sizes.size15),
                  )),
              child: TabBar(
                tabs: _tabs,
                isScrollable: true,
                labelColor: Styles.color2,
                unselectedLabelColor: Colors.black,
                indicatorColor: Styles.color2,
              ),
            ),
          ),
        ),
        body: const TabBarView(children: [
          Facts(),
          Symptoms(),
          Diets(),
          Drugs(),
          Exercises(),
          Precautions(),
          Faq(),
        ]),
      ),
    );
  }
}
