import 'package:flutter/material.dart';
import 'package:trusty/data/data.dart';
import 'package:trusty/utils/sizes.dart';

class Diets extends StatelessWidget {
  const Diets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    List<Widget> list = [
      Text(
        Diet.otherList[0],
        style: TextStyle(
          color: theme.primaryColorDark,
          fontSize: Sizes.size15,
          fontWeight: FontWeight.bold,
        ),
      ),
    ];
    for (int i = 1; i < Diet.otherList.length; i++) {
      list.add(Text('*   ${Diet.otherList[i]}'));
    }
    list.add(Sizes.divider15);
    list.add(
      Text(
        Diet.donotEatList[0],
        style: TextStyle(
          color: theme.primaryColorDark,
          fontSize: Sizes.size15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    list.add(
      Text(
        Diet.donotEatList[1],
        style: TextStyle(color: theme.primaryColorDark),
      ),
    );
    for (int i = 2; i < Diet.donotEatList.length; i++) {
      list.add(Text('*   ${Diet.donotEatList[i]}'));
    }

    list.add(Sizes.divider20);
    list.add(
      Text(
        'Notes',
        style: TextStyle(
          color: theme.primaryColorDark,
          fontSize: Sizes.size15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    list.add(const Text(
      Diet.note,
      textAlign: TextAlign.justify,
    ));
    list.add(Sizes.divider20);

    //build method
    return Container(
      padding: const EdgeInsets.all(Sizes.size25),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Diet.title,
                  style: TextStyle(
                    color: theme.primaryColorDark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Sizes.divider15,
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(Sizes.size15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                            Radius.circular(Sizes.size10)),
                        boxShadow: [
                          BoxShadow(
                            color: theme.primaryColor.withOpacity(0.2),
                            spreadRadius: Sizes.size5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Diet.list[index],
                            softWrap: true,
                            style: const TextStyle(
                              fontSize: Sizes.size15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Sizes.divider20,
                          SizedBox(
                            width: double.infinity,
                            child: Image(
                              image: AssetImage(Diet.images[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Sizes.divider20,
                  ],
                );
              },
              childCount: Diet.list.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: list,
            ),
          ),
        ],
      ),
    );
  }
}
