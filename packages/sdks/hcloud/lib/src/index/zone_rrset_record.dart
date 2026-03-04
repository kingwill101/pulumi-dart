// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneRrsetRecord {
  /// Comment of the record.
  final pulumi.Input<String>? comment;

  /// Value of the record.
  final pulumi.Input<String> value;

  /// Creates a new [ZoneRrsetRecord].
  /// [comment] Comment of the record.
  /// [value] Value of the record.
  ZoneRrsetRecord({this.comment, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comment': ?comment, 'value': value};
  }

  factory ZoneRrsetRecord.fromMap(Map<String, dynamic> map) {
    return ZoneRrsetRecord(
      comment: (() {
        final guardedValue = map['comment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
