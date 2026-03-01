// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field.dart';
import 'option.dart';
import 'source_context.dart';
import 'type_syntax.dart';

/// A protocol buffer message type.
class Type {
  /// The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  final String? edition;
  /// The list of fields.
  final List<Field>? fields;
  /// The fully qualified message name.
  final String? name;
  /// The list of types appearing in `oneof` definitions in this type.
  final List<String>? oneofs;
  /// The protocol buffer options.
  final List<Option>? options;
  /// The source context.
  final SourceContext? sourceContext;
  /// The source syntax.
  final TypeSyntax? syntax;

  /// Creates a new [Type].
  /// [edition] The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  /// [fields] The list of fields.
  /// [name] The fully qualified message name.
  /// [oneofs] The list of types appearing in `oneof` definitions in this type.
  /// [options] The protocol buffer options.
  /// [sourceContext] The source context.
  /// [syntax] The source syntax.
  Type({
    this.edition,
    this.fields,
    this.name,
    this.oneofs,
    this.options,
    this.sourceContext,
    this.syntax,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edition': ?edition,
      'fields': ?fields == null ? null : pulumi.Input.encodeList<Field, Map<String, dynamic>>(fields!, (value) => value.toMap()),
      'name': ?name,
      'oneofs': ?oneofs,
      'options': ?options == null ? null : pulumi.Input.encodeList<Option, Map<String, dynamic>>(options!, (value) => value.toMap()),
      'sourceContext': ?sourceContext == null ? null : sourceContext!.toMap(),
      'syntax': ?syntax == null ? null : syntax!.value,
    };
  }

  factory Type.fromMap(Map<String, dynamic> map) {
    return Type(
      edition: map['edition'] == null ? null : map['edition'] as String,
      fields: map['fields'] == null ? null : pulumi.Input.decodeList<Field>(map['fields'], (value) => Field.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      oneofs: map['oneofs'] == null ? null : (map['oneofs'] as List).cast<String>(),
      options: map['options'] == null ? null : pulumi.Input.decodeList<Option>(map['options'], (value) => Option.fromMap((value as Map).cast<String, dynamic>())),
      sourceContext: map['sourceContext'] == null ? null : SourceContext.fromMap((map['sourceContext'] as Map).cast<String, dynamic>()),
      syntax: map['syntax'] == null ? null : TypeSyntax.fromValue(map['syntax'] as String),
    );
  }
}

