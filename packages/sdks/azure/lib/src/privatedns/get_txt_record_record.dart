// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTxtRecordRecord {
  /// The value of the record. Max length: 1024 characters
  final pulumi.Input<String> value;

  /// Creates a new [GetTxtRecordRecord].
  /// [value] The value of the record. Max length: 1024 characters
  GetTxtRecordRecord({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory GetTxtRecordRecord.fromMap(Map<String, dynamic> map) {
    return GetTxtRecordRecord(
      value: (map['value'] as String).input(),
    );
  }
}

