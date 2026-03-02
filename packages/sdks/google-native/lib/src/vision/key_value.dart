// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A product label represented as a key-value pair.
class KeyValue {
  /// The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
  final pulumi.Input<String>? key;
  /// The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
  final pulumi.Input<String>? value;

  /// Creates a new [KeyValue].
  /// [key] The key of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
  /// [value] The value of the label attached to the product. Cannot be empty and cannot exceed 128 bytes.
  KeyValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory KeyValue.fromMap(Map<String, dynamic> map) {
    return KeyValue(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

