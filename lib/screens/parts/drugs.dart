import 'package:flutter/material.dart';
import 'package:trusty/data/data.dart';
import 'package:trusty/utils/sizes.dart';

class Drugs extends StatelessWidget {
  const Drugs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Drug.title,
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
                            Drug.list[index],
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
                              image: AssetImage(Drug.images[index]),
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
              childCount: Drug.list.length,
            ),
          )
        ],
      ),
    );
  }
}
