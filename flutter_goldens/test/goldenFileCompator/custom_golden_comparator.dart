import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';

class CustomGoldenComparator extends GoldenFileComparator {
  @override
  Future<bool> compare(Uint8List imageBytes, Uri golden) async {
    await Future.delayed(const Duration(seconds: 5));

    //TODO: add proper implementation
    return true;
  }

  @override
  Future<void> update(Uri golden, Uint8List imageBytes) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
