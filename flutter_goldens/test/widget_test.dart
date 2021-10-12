// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_goldens/main.dart';

import 'goldenFileCompator/custom_golden_comparator.dart';

void main() {
  //TODO: comment/uncomment
  //goldenFileComparator = CustomGoldenComparator();
  testWidgets('Golden test sample', (WidgetTester tester) async {
    const String GOLDEN_DIR = "goldens/";

    const String GOLDEN_FILE_NAME = "${GOLDEN_DIR}my_app.png";

    await tester.pumpWidget(const MyApp());

    await expectLater(
        find.byType(MyApp),
        // comparison is done asynchronously so use expectLater()
        matchesGoldenFile(GOLDEN_FILE_NAME));
  });
}
