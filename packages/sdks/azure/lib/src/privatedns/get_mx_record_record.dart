// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMxRecordRecord {
  /// The mail server responsible for the domain covered by the MX record.
  final pulumi.Input<String> exchange;
  /// String representing the "preference” value of the MX records. Records with lower preference value take priority.
  final pulumi.Input<int> preference;

  /// Creates a new [GetMxRecordRecord].
  /// [exchange] The mail server responsible for the domain covered by the MX record.
  /// [preference] String representing the "preference” value of the MX records. Records with lower preference value take priority.
  GetMxRecordRecord({
    required this.exchange,
    required this.preference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exchange': exchange,
      'preference': preference,
    };
  }

  factory GetMxRecordRecord.fromMap(Map<String, dynamic> map) {
    return GetMxRecordRecord(
      exchange: (map['exchange'] as String).input(),
      preference: (map['preference'] as int).input(),
    );
  }
}

