// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enum_value_response.dart';
import 'option_response.dart';
import 'source_context_response.dart';

/// Enum type definition.
class EnumResponse {
  /// The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  final String edition;
  /// Enum value definitions.
  final List<EnumValueResponse> enumvalue;
  /// Enum type name.
  final String name;
  /// Protocol buffer options.
  final List<OptionResponse> options;
  /// The source context.
  final SourceContextResponse sourceContext;
  /// The source syntax.
  final String syntax;

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
      'enumvalue': pulumi.Input.encodeList<EnumValueResponse, Map<String, dynamic>>(enumvalue, (value) => value.toMap()),
      'name': name,
      'options': pulumi.Input.encodeList<OptionResponse, Map<String, dynamic>>(options, (value) => value.toMap()),
      'sourceContext': sourceContext.toMap(),
      'syntax': syntax,
    };
  }

  factory EnumResponse.fromMap(Map<String, dynamic> map) {
    return EnumResponse(
      edition: map['edition'] as String,
      enumvalue: pulumi.Input.decodeList<EnumValueResponse>(map['enumvalue'], (value) => EnumValueResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      options: pulumi.Input.decodeList<OptionResponse>(map['options'], (value) => OptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      sourceContext: SourceContextResponse.fromMap((map['sourceContext'] as Map).cast<String, dynamic>()),
      syntax: map['syntax'] as String,
    );
  }
}

