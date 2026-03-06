// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field.dart';
import 'option.dart';
import 'source_context.dart';
import 'type_syntax.dart';

/// A protocol buffer message type.
class Type {
  /// The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  final pulumi.Input<String>? edition;
  /// The list of fields.
  final pulumi.Input<List<Field>>? fields;
  /// The fully qualified message name.
  final pulumi.Input<String>? name;
  /// The list of types appearing in `oneof` definitions in this type.
  final pulumi.Input<List<String>>? oneofs;
  /// The protocol buffer options.
  final pulumi.Input<List<Option>>? options;
  /// The source context.
  final pulumi.Input<SourceContext>? sourceContext;
  /// The source syntax.
  final pulumi.Input<TypeSyntax>? syntax;

  /// Creates a new [Type].
  /// [edition] The source edition string, only valid when syntax is SYNTAX_EDITIONS.
  /// [fields] The list of fields.
  /// [name] The fully qualified message name.
  /// [oneofs] The list of types appearing in `oneof` definitions in this type.
  /// [options] The protocol buffer options.
  /// [sourceContext] The source context.
  /// [syntax] The source syntax.
  const Type({
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
      'fields': ?pulumi.Input.mapOptionalInputValue<List<Field>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<Field, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'oneofs': ?oneofs,
      'options': ?pulumi.Input.mapOptionalInputValue<List<Option>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<Option, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceContext': ?pulumi.Input.mapOptionalInputValue<SourceContext, Map<String, dynamic>>(sourceContext, (value) => value.toMap()),
      'syntax': ?pulumi.Input.mapOptionalInputValue<TypeSyntax, String>(syntax, (value) => value.wireValue),
    };
  }

  factory Type.fromMap(Map<String, dynamic> map) {
    return Type(
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Field>(guardedValue, (value) => Field.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oneofs: (() { final guardedValue = map['oneofs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Option>(guardedValue, (value) => Option.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceContext: (() { final guardedValue = map['sourceContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      syntax: (() { final guardedValue = map['syntax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TypeSyntax.fromValue(guardedValue as String)); })(),
    );
  }
}

