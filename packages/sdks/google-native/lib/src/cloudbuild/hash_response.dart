// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container message for hash values.
class HashResponse {
  /// The type of hash that was performed.
  final pulumi.Input<String> type;
  /// The hash value.
  final pulumi.Input<String> value;

  /// Creates a new [HashResponse].
  /// [type] The type of hash that was performed.
  /// [value] The hash value.
  HashResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory HashResponse.fromMap(Map<String, dynamic> map) {
    return HashResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

