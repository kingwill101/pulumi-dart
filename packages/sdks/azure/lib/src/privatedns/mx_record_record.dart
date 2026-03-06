// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MxRecordRecord {
  /// The FQDN of the exchange to MX record points to.
  final pulumi.Input<String> exchange;
  /// The preference of the MX record.
  final pulumi.Input<int> preference;

  /// Creates a new [MxRecordRecord].
  /// [exchange] The FQDN of the exchange to MX record points to.
  /// [preference] The preference of the MX record.
  const MxRecordRecord({
    required this.exchange,
    required this.preference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exchange': exchange,
      'preference': preference,
    };
  }

  factory MxRecordRecord.fromMap(Map<String, dynamic> map) {
    return MxRecordRecord(
      exchange: pulumi.Input.fromValue(map['exchange'] as String),
      preference: pulumi.Input.fromValue(map['preference'] as int),
    );
  }
}

