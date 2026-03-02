// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A TXT record.
class TxtRecord {
  /// The text value of this TXT record.
  final pulumi.Input<List<String>>? value;

  /// Creates a new [TxtRecord].
  /// [value] The text value of this TXT record.
  TxtRecord({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TxtRecord.fromMap(Map<String, dynamic> map) {
    return TxtRecord(
      value: map['value'] == null ? null : ((map['value']! as List).cast<String>()).input(),
    );
  }
}

