import 'package:flutter_test/flutter_test.dart';

import 'package:firestore_util/firestore_util.dart';

void main() {
  test('Test: parse method', () {
    dynamic mockresponse = {
      "fields": {
        "code": {"stringValue": "TASK002"},
        "transaction_type": {"stringValue": "CR"},
        "title": {"stringValue": "A new task 2"}
      }
    };
    final parsedObj = FirestoreUtil.parse(mockresponse);
    expect(parsedObj['code'], 'TASK002');
  });
  test('Test: toFirestoreFormat method', () {
    dynamic mockresponse = {"code": "TASK002", "transaction_type": "CR", "title": "A new task 2"};
    final parsedObj = FirestoreUtil.toFirestoreFormat(mockresponse);
    print(parsedObj);
    // expect(parsedObj['code'], 'TASK002');
  });
}
