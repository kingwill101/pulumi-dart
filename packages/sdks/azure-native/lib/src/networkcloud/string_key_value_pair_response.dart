// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StringKeyValuePairResponse {
  /// The key to the mapped value.
  final pulumi.Input<String> key;
  /// The value of the mapping key.
  final pulumi.Input<String> value;

  /// Creates a new [StringKeyValuePairResponse].
  /// [key] The key to the mapped value.
  /// [value] The value of the mapping key.
  StringKeyValuePairResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory StringKeyValuePairResponse.fromMap(Map<String, dynamic> map) {
    return StringKeyValuePairResponse(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

