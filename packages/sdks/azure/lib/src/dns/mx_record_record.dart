// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MxRecordRecord {
  /// The mail server responsible for the domain covered by the MX record.
  final pulumi.Input<String> exchange;

  /// String representing the "preference” value of the MX records. Records with lower preference value take priority.
  final pulumi.Input<String> preference;

  /// Creates a new [MxRecordRecord].
  /// [exchange] The mail server responsible for the domain covered by the MX record.
  /// [preference] String representing the "preference” value of the MX records. Records with lower preference value take priority.
  MxRecordRecord({required this.exchange, required this.preference});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exchange': exchange, 'preference': preference};
  }

  factory MxRecordRecord.fromMap(Map<String, dynamic> map) {
    return MxRecordRecord(
      exchange: pulumi.Input.fromValue(map['exchange'] as String),
      preference: pulumi.Input.fromValue(map['preference'] as String),
    );
  }
}
