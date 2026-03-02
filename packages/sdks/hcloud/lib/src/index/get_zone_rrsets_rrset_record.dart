// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneRrsetsRrsetRecord {
  /// Comment of the record.
  final pulumi.Input<String> comment;
  /// Value of the record.
  final pulumi.Input<String> value;

  /// Creates a new [GetZoneRrsetsRrsetRecord].
  /// [comment] Comment of the record.
  /// [value] Value of the record.
  GetZoneRrsetsRrsetRecord({
    required this.comment,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'value': value,
    };
  }

  factory GetZoneRrsetsRrsetRecord.fromMap(Map<String, dynamic> map) {
    return GetZoneRrsetsRrsetRecord(
      comment: (map['comment'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

