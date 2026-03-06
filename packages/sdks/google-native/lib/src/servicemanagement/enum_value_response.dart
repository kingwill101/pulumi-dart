// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'option_response.dart';

/// Enum value definition.
class EnumValueResponse {
  /// Enum value name.
  final pulumi.Input<String> name;
  /// Enum value number.
  final pulumi.Input<int> number;
  /// Protocol buffer options.
  final pulumi.Input<List<OptionResponse>> options;

  /// Creates a new [EnumValueResponse].
  /// [name] Enum value name.
  /// [number] Enum value number.
  /// [options] Protocol buffer options.
  const EnumValueResponse({
    required this.name,
    required this.number,
    required this.options,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'number': number,
      'options': pulumi.Input.mapInputValue<List<OptionResponse>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<OptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnumValueResponse.fromMap(Map<String, dynamic> map) {
    return EnumValueResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      number: pulumi.Input.fromValue(map['number'] as int),
      options: pulumi.Input.fromValue(pulumi.Input.decodeList<OptionResponse>(map['options']!, (value) => OptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

