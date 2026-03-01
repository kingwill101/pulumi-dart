// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'option.dart';

/// Enum value definition.
class EnumValue {
  /// Enum value name.
  final String? name;
  /// Enum value number.
  final int? number;
  /// Protocol buffer options.
  final List<Option>? options;

  /// Creates a new [EnumValue].
  /// [name] Enum value name.
  /// [number] Enum value number.
  /// [options] Protocol buffer options.
  EnumValue({
    this.name,
    this.number,
    this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'number': ?number,
      'options': ?options == null ? null : pulumi.Input.encodeList<Option, Map<String, dynamic>>(options!, (value) => value.toMap()),
    };
  }

  factory EnumValue.fromMap(Map<String, dynamic> map) {
    return EnumValue(
      name: map['name'] == null ? null : map['name'] as String,
      number: map['number'] == null ? null : map['number'] as int,
      options: map['options'] == null ? null : pulumi.Input.decodeList<Option>(map['options'], (value) => Option.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

