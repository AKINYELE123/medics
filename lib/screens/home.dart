import 'package:flutter/material.dart';
import 'package:trusty/screens/parts/dialog.dart';
import 'package:trusty/utils/custom_icon.dart';
import 'package:trusty/utils/sizes.dart';
import 'package:trusty/utils/styles.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () => Future.value(false),
        child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.size40, horizontal: Sizes.size25),
          child: ListView(
            children: [
              searchBar(),
              Sizes.divider40,
              header(),
              Sizes.divider30,
              testSection(),
              Sizes.divider30,
              serviceSection(),
              Sizes.divider30,
              otherSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget searchBar() {
    ThemeData theme = Theme.of(context);
    return TextFormField(
      style: TextStyle(color: theme.primaryColorDark),
      decoration: InputDecoration(
        hintText: 'Search',
        filled: true,
        fillColor: Styles.color10,
        hintStyle: TextStyle(color: theme.primaryColorDark),
        suffixIcon: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.search, color: theme.primaryColorDark),
          onPressed: () {},
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Styles.color8),
          borderRadius: BorderRadius.all(Radius.circular(Sizes.size10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Styles.color8),
          borderRadius: BorderRadius.all(Radius.circular(Sizes.size10)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Styles.color8),
          borderRadius: BorderRadius.all(Radius.circular(Sizes.size10)),
        ),
      ),
    );
  }

  Widget header() {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'TRUSTY',
          style: TextStyle(
            fontSize: Sizes.size20 + 2,
            color: theme.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        InkWell(
          child: Container(
            height: Sizes.size100 + Sizes.size20,
            padding: const EdgeInsets.all(Sizes.size15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  const BorderRadius.all(Radius.circular(Sizes.size10)),
              boxShadow: [
                BoxShadow(
                  color: theme.primaryColor.withOpacity(0.2),
                  spreadRadius: Sizes.size5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Image(image: AssetImage('assets/images/tb_logo.png')),
                Sizes.space30,
                Expanded(
                  child: Text(
                    "Click here to get updated about the disease",
                    softWrap: true,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: Sizes.size20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          onTap: () => Navigator.pushNamed(context, 'details', arguments: 0),
        )
      ],
    );
  }

  Widget testSection() {
    ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: Sizes.size100,
          child: Text(
            'Run Test for symptoms',
            style: TextStyle(
              fontSize: Sizes.size15,
              color: theme.primaryColorDark,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Image(image: AssetImage('assets/images/arrow.png')),
        InkWell(
          child: Stack(
            alignment: Alignment.center,
            children: const [
              Image(image: AssetImage('assets/images/gradiant_circle.png')),
              Icon(CustomIcon.meter, size: Sizes.size30),
            ],
          ),
          onTap: () => showDialog(
            context: context,
            builder: (context) => const TestDialog(),
          ),
        ),
      ],
    );
  }

  Widget serviceSection() {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Services',
          style: TextStyle(
            fontSize: Sizes.size20 - 3,
            color: Styles.color1,
            fontWeight: FontWeight.bold,
          ),
        ),
        Sizes.divider10,
        Row(
          children: [
            tile(
              backColor: Styles.color5,
              borderColor: Styles.outline1,
              child: tileChild(
                theme: theme,
                icon: CustomIcon.healthicons_symptom_outline,
                iconColor: Styles.color6,
                label: 'Symptoms',
              ),
              onTap: () =>
                  Navigator.pushNamed(context, 'details', arguments: 1),
            ),
            tile(
              backColor: Styles.color7,
              borderColor: Styles.outline2,
              child: tileChild(
                theme: theme,
                icon: CustomIcon.question,
                iconColor: Styles.color11,
                label: 'FAQ',
              ),
              onTap: () =>
                  Navigator.pushNamed(context, 'details', arguments: 6),
            ),
            tile(
              backColor: Styles.color12,
              borderColor: Styles.color8,
              child: tileChild(
                theme: theme,
                icon: CustomIcon.fluent_warning_24_regular,
                iconColor: Styles.color8,
                label: 'Precaution',
              ),
              onTap: () =>
                  Navigator.pushNamed(context, 'details', arguments: 5),
            ),
          ],
        ),
      ],
    );
  }

  Widget otherSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Others',
          style: TextStyle(
            fontSize: Sizes.size20 - 3,
            color: Styles.color1,
            fontWeight: FontWeight.bold,
          ),
        ),
        Sizes.divider10,
        Row(
          children: [
            tile(
              image: const DecorationImage(
                image: AssetImage('assets/images/diet.png'),
                fit: BoxFit.cover,
              ),
              child: tileChild2(label: 'Diets'),
              onTap: () =>
                  Navigator.pushNamed(context, 'details', arguments: 2),
            ),
            tile(
              image: const DecorationImage(
                image: AssetImage('assets/images/exercise.png'),
                fit: BoxFit.cover,
              ),
              child: tileChild2(label: 'Exercises'),
              onTap: () =>
                  Navigator.pushNamed(context, 'details', arguments: 4),
            ),
            tile(
              image: const DecorationImage(
                image: AssetImage('assets/images/drugs.png'),
                fit: BoxFit.cover,
              ),
              child: tileChild2(label: 'Drugs'),
              onTap: () =>
                  Navigator.pushNamed(context, 'details', arguments: 3),
            ),
          ],
        ),
      ],
    );
  }

  Widget tile({
    Color? backColor,
    Color borderColor = Colors.transparent,
    DecorationImage? image,
    Widget? child,
    void Function()? onTap,
  }) {
    double screenWidth = MediaQuery.of(context).size.width - Sizes.size50;
    return Row(
      children: [
        InkWell(
          child: Container(
            width: (screenWidth / 3) - Sizes.size10,
            height: Sizes.size100 + Sizes.size50,
            decoration: BoxDecoration(
              color: backColor,
              image: image,
              border: Border.all(color: borderColor),
              borderRadius:
                  const BorderRadius.all(Radius.circular(Sizes.size10)),
            ),
            child: child,
          ),
          onTap: onTap,
        ),
        Sizes.space10,
      ],
    );
  }

  Widget tileChild(
      {required ThemeData theme,
      IconData? icon,
      Color? iconColor,
      String? label}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: Sizes.size60,
          color: iconColor,
        ),
        Sizes.divider15,
        Text(
          '$label',
          style: TextStyle(
            color: theme.primaryColorDark,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  Widget tileChild2({String? label}) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(Sizes.size15),
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: Sizes.size5, horizontal: Sizes.size15),
        decoration: BoxDecoration(
          color: Styles.color9,
          borderRadius: const BorderRadius.all(Radius.circular(Sizes.size10)),
        ),
        child: Text(
          '$label',
          style: TextStyle(color: theme.primaryColorDark),
        ),
      ),
    );
  }
}
