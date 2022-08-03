import 'package:flutter/material.dart';
import 'package:trusty/utils/custom_icon.dart';
import 'package:trusty/utils/sizes.dart';
import 'package:trusty/utils/styles.dart';

class TestDialog extends StatelessWidget {
  const TestDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  Widget contentBox(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size10,
          horizontal: Sizes.size15,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.size10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            header(context),
            body(context),
          ],
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: const Icon(
                Icons.close,
                size: Sizes.size35,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              CustomIcon.question,
              size: Sizes.size50,
              color: Styles.color11,
            ),
          ],
        ),
        Sizes.divider20,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select the category of \nsymptoms you have',
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontSize: Sizes.size20,
              ),
            ),
          ],
        ),
        Sizes.divider20,
      ],
    );
  }

  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.size15),
      child: Column(
        children: [
          customButton(
            context,
            text: 'Weakness or Fatigue / Weight loss / No appetite',
            type: 'latent',
          ),
          Sizes.divider30,
          customButton(
            context,
            text: 'Coughing up blood / Pain in the chest / Fever',
            type: 'active',
          ),
          Sizes.divider40,
        ],
      ),
    );
  }

  Widget customButton(
    BuildContext context, {
    required String text,
    required String type,
  }) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(Sizes.size15),
        decoration: const BoxDecoration(
          color: Styles.color10,
          borderRadius: BorderRadius.all(Radius.circular(Sizes.size25)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).primaryColorDark,
            fontSize: Sizes.size20,
          ),
        ),
      ),
      onTap: () =>
          Navigator.popAndPushNamed(context, 'test_result', arguments: type),
    );
  }
}

class ConclusionDialog extends StatelessWidget {
  const ConclusionDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  Widget contentBox(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size10,
          horizontal: Sizes.size15,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(Sizes.size10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [body(context)],
        ),
      ),
    );
  }

  Widget body(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: const Icon(
                Icons.close,
                size: Sizes.size35,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        const Icon(
          Icons.rate_review,
          size: Sizes.size50 + Sizes.size20,
          color: Styles.color13,
        ),
        Sizes.divider20,
        Text(
          'Conclusion:',
          style: TextStyle(
            color: Theme.of(context).primaryColorDark,
            fontSize: Sizes.size20,
          ),
        ),
        Sizes.divider40,
        const Padding(
          padding: EdgeInsets.all(Sizes.size15),
          child: Text(
            'See a qualified medical personel for further diagonosis and medications',
            style: TextStyle(
              fontSize: Sizes.size20 - 2,
            ),
          ),
        ),
        Sizes.divider40,
        Sizes.divider40,
      ],
    );
  }
}
