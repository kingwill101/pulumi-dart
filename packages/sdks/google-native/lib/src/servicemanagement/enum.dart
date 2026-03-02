// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enum_syntax.dart';
import 'enum_value.dart';
import 'option.dart';
import 'source_context.dart';

/// Enum type definition.
class Enum {
  /// The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  final pulumi.Input<String>? edition;
  /// Enum value definitions.
  final pulumi.Input<List<EnumValue>>? enumvalue;
  /// Enum type name.
  final pulumi.Input<String>? name;
  /// Protocol buffer options.
  final pulumi.Input<List<Option>>? options;
  /// The source context.
  final pulumi.Input<SourceContext>? sourceContext;
  /// The source syntax.
  final pulumi.Input<EnumSyntax>? syntax;

  /// Creates a new [Enum].
  /// [edition] The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  /// [enumvalue] Enum value definitions.
  /// [name] Enum type name.
  /// [options] Protocol buffer options.
  /// [sourceContext] The source context.
  /// [syntax] The source syntax.
  Enum({
    this.edition,
    this.enumvalue,
    this.name,
    this.options,
    this.sourceContext,
    this.syntax,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edition': ?edition,
      'enumvalue': ?pulumi.Input.mapOptionalInputValue<List<EnumValue>, List<Map<String, dynamic>>>(enumvalue, (value) => pulumi.Input.encodeList<EnumValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'options': ?pulumi.Input.mapOptionalInputValue<List<Option>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<Option, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceContext': ?pulumi.Input.mapOptionalInputValue<SourceContext, Map<String, dynamic>>(sourceContext, (value) => value.toMap()),
      'syntax': ?pulumi.Input.mapOptionalInputValue<EnumSyntax, String>(syntax, (value) => value.value),
    };
  }

  factory Enum.fromMap(Map<String, dynamic> map) {
    return Enum(
      edition: map['edition'] == null ? null : (map['edition']! as String).input(),
      enumvalue: map['enumvalue'] == null ? null : (pulumi.Input.decodeList<EnumValue>(map['enumvalue']!, (value) => EnumValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      options: map['options'] == null ? null : (pulumi.Input.decodeList<Option>(map['options']!, (value) => Option.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceContext: map['sourceContext'] == null ? null : (SourceContext.fromMap((map['sourceContext']! as Map).cast<String, dynamic>())).input(),
      syntax: map['syntax'] == null ? null : (EnumSyntax.fromValue(map['syntax']! as String)).input(),
    );
  }
}

