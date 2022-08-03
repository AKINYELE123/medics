import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trusty/screens/parts/dialog.dart';
import 'package:trusty/utils/sizes.dart';
import 'package:trusty/utils/styles.dart';

class TestResult extends StatefulWidget {
  final String type;
  const TestResult({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  _TestResultState createState() => _TestResultState();
}

class _TestResultState extends State<TestResult> {
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _onTapHandler;
  }

  @override
  void dispose() {
    super.dispose();
    _tapGestureRecognizer.dispose();
  }

  void _onTapHandler() {
    Navigator.pushNamed(context, 'details', arguments: 6);
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Test Result',
          style: TextStyle(
            color: theme.primaryColorDark,
            fontSize: Sizes.size20,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(Sizes.size30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }

  Widget header() {
    ThemeData theme = Theme.of(context);
    if (widget.type == 'latent') {
      return Text(
        'Latent TB:',
        style: TextStyle(
          color: theme.primaryColorDark,
          fontSize: Sizes.size20,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    return Text(
      'Active TB:',
      style: TextStyle(
        color: theme.primaryColorDark,
        fontSize: Sizes.size20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget body() {
    ThemeData theme = Theme.of(context);
    if (widget.type == 'latent') {
      String latent = 'Latent TB is the early stage of TB '
          'which means the bacteria is not active in your body.';
      return Text(
        latent,
        style: TextStyle(
          color: theme.primaryColorDark,
          fontSize: Sizes.size15,
          height: 2.0,
        ),
      );
    }
    String active = 'Active TB  means the bacteria is active in your body.';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          active,
          style: const TextStyle(
            fontSize: Sizes.size15 + 2,
            height: 2.0,
          ),
        ),
        Sizes.divider40,
        Sizes.divider40,
        Sizes.divider40,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Conclusion',
              style: TextStyle(
                color: theme.primaryColorDark,
                fontSize: Sizes.size20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                InkWell(
                  child: const CircleAvatar(
                    backgroundColor: Styles.color14,
                    radius: Sizes.size30,
                    child: Icon(
                      Icons.rate_review,
                      size: Sizes.size35,
                      color: Styles.color13,
                    ),
                  ),
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) => const ConclusionDialog()),
                ),
                const Text(
                  'Click to view',
                  style: TextStyle(color: Styles.color13),
                )
              ],
            ),
          ],
        ),
        Sizes.divider40,
        Sizes.divider20,
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            text: 'Click ',
            style: TextStyle(
              fontSize: Sizes.size20 - 2,
              height: 2.0,
              color: theme.primaryColorDark,
            ),
            children: [
              TextSpan(
                text: 'here ',
                style: const TextStyle(
                  fontSize: Sizes.size20 - 2,
                  height: 2.0,
                  color: Styles.color8,
                ),
                recognizer: _tapGestureRecognizer,
              ),
              TextSpan(
                text: 'to read about the Frequently Asked Questions (FAQs)',
                style: TextStyle(
                  fontSize: Sizes.size20 - 2,
                  height: 2.0,
                  color: theme.primaryColorDark,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
