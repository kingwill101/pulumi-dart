// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key value tuple.
class KeyValueItemResponse {
  /// Key of tuple.
  final pulumi.Input<String> key;
  /// Value of tuple.
  final pulumi.Input<String> value;

  /// Creates a new [KeyValueItemResponse].
  /// [key] Key of tuple.
  /// [value] Value of tuple.
  KeyValueItemResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory KeyValueItemResponse.fromMap(Map<String, dynamic> map) {
    return KeyValueItemResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

