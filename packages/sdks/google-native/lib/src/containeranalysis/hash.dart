// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hash_type.dart';

/// Container message for hash values.
class Hash {
  /// The type of hash that was performed.
  final pulumi.Input<HashType>? type;
  /// The hash value.
  final pulumi.Input<String>? value;

  /// Creates a new [Hash].
  /// [type] The type of hash that was performed.
  /// [value] The hash value.
  Hash({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<HashType, String>(type, (value) => value.wireValue),
      'value': ?value,
    };
  }

  factory Hash.fromMap(Map<String, dynamic> map) {
    return Hash(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HashType.fromValue(guardedValue as String)); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

