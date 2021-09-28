import 'package:flutter_test/flutter_test.dart';

import 'package:firestore_util/firestore_util.dart';

void main() {
  test('adds one to input values', () {
    dynamic mockresponse = {
      "code": {"stringValue": "TASK002"},
      "transaction_type": {"stringValue": "CR"},
      "title": {"stringValue": "A new task 2"}
    };
    final parsedObj = FirestoreUtil.parse(mockresponse);
    expect(parsedObj['code'], 'TASK002');
  });
}
