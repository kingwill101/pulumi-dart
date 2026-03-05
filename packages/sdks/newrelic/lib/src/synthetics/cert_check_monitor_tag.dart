// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertCheckMonitorTag {
  /// Name of the tag key.
  final pulumi.Input<String> key;
  /// Values associated with the tag key.
  final pulumi.Input<List<String>> values;

  /// Creates a new [CertCheckMonitorTag].
  /// [key] Name of the tag key.
  /// [values] Values associated with the tag key.
  CertCheckMonitorTag({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory CertCheckMonitorTag.fromMap(Map<String, dynamic> map) {
    return CertCheckMonitorTag(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

