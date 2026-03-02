// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An MX record.
class MxRecordResponse {
  /// The domain name of the mail host for this MX record.
  final pulumi.Input<String>? exchange;
  /// The preference value for this MX record.
  final pulumi.Input<int>? preference;

  /// Creates a new [MxRecordResponse].
  /// [exchange] The domain name of the mail host for this MX record.
  /// [preference] The preference value for this MX record.
  MxRecordResponse({
    this.exchange,
    this.preference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exchange': ?exchange,
      'preference': ?preference,
    };
  }

  factory MxRecordResponse.fromMap(Map<String, dynamic> map) {
    return MxRecordResponse(
      exchange: map['exchange'] == null ? null : (map['exchange']! as String).input(),
      preference: map['preference'] == null ? null : (map['preference']! as int).input(),
    );
  }
}

