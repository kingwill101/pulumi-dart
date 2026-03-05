// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enum_value_response.dart';
import 'option_response.dart';
import 'source_context_response.dart';

/// Enum type definition.
class EnumResponse {
  /// The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  final pulumi.Input<String> edition;
  /// Enum value definitions.
  final pulumi.Input<List<EnumValueResponse>> enumvalue;
  /// Enum type name.
  final pulumi.Input<String> name;
  /// Protocol buffer options.
  final pulumi.Input<List<OptionResponse>> options;
  /// The source context.
  final pulumi.Input<SourceContextResponse> sourceContext;
  /// The source syntax.
  final pulumi.Input<String> syntax;

  /// Creates a new [EnumResponse].
  /// [edition] The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  /// [enumvalue] Enum value definitions.
  /// [name] Enum type name.
  /// [options] Protocol buffer options.
  /// [sourceContext] The source context.
  /// [syntax] The source syntax.
  EnumResponse({
    required this.edition,
    required this.enumvalue,
    required this.name,
    required this.options,
    required this.sourceContext,
    required this.syntax,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edition': edition,
      'enumvalue': pulumi.Input.mapInputValue<List<EnumValueResponse>, List<Map<String, dynamic>>>(enumvalue, (value) => pulumi.Input.encodeList<EnumValueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'options': pulumi.Input.mapInputValue<List<OptionResponse>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<OptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceContext': pulumi.Input.mapInputValue<SourceContextResponse, Map<String, dynamic>>(sourceContext, (value) => value.toMap()),
      'syntax': syntax,
    };
  }

  factory EnumResponse.fromMap(Map<String, dynamic> map) {
    return EnumResponse(
      edition: pulumi.Input.fromValue(map['edition'] as String),
      enumvalue: pulumi.Input.fromValue(pulumi.Input.decodeList<EnumValueResponse>(map['enumvalue']!, (value) => EnumValueResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      options: pulumi.Input.fromValue(pulumi.Input.decodeList<OptionResponse>(map['options']!, (value) => OptionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      sourceContext: pulumi.Input.fromValue(SourceContextResponse.fromMap((map['sourceContext']! as Map).cast<String, dynamic>())),
      syntax: pulumi.Input.fromValue(map['syntax'] as String),
    );
  }
}

