// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_cardinality.dart';
import 'field_kind.dart';
import 'option.dart';

/// A single field of a message type.
class Field {
  /// The field cardinality.
  final FieldCardinality? cardinality;
  /// The string value of the default value of this field. Proto2 syntax only.
  final String? defaultValue;
  /// The field JSON name.
  final String? jsonName;
  /// The field type.
  final FieldKind? kind;
  /// The field name.
  final String? name;
  /// The field number.
  final int? number;
  /// The index of the field type in `Type.oneofs`, for message or enumeration types. The first type has index 1; zero means the type is not in the list.
  final int? oneofIndex;
  /// The protocol buffer options.
  final List<Option>? options;
  /// Whether to use alternative packed wire representation.
  final bool? packed;
  /// The field type URL, without the scheme, for message or enumeration types. Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
  final String? typeUrl;

  /// Creates a new [Field].
  /// [cardinality] The field cardinality.
  /// [defaultValue] The string value of the default value of this field. Proto2 syntax only.
  /// [jsonName] The field JSON name.
  /// [kind] The field type.
  /// [name] The field name.
  /// [number] The field number.
  /// [oneofIndex] The index of the field type in `Type.oneofs`, for message or enumeration types. The first type has index 1; zero means the type is not in the list.
  /// [options] The protocol buffer options.
  /// [packed] Whether to use alternative packed wire representation.
  /// [typeUrl] The field type URL, without the scheme, for message or enumeration types. Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
  Field({
    this.cardinality,
    this.defaultValue,
    this.jsonName,
    this.kind,
    this.name,
    this.number,
    this.oneofIndex,
    this.options,
    this.packed,
    this.typeUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardinality': ?cardinality == null ? null : cardinality!.value,
      'defaultValue': ?defaultValue,
      'jsonName': ?jsonName,
      'kind': ?kind == null ? null : kind!.value,
      'name': ?name,
      'number': ?number,
      'oneofIndex': ?oneofIndex,
      'options': ?options == null ? null : pulumi.Input.encodeList<Option, Map<String, dynamic>>(options!, (value) => value.toMap()),
      'packed': ?packed,
      'typeUrl': ?typeUrl,
    };
  }

  factory Field.fromMap(Map<String, dynamic> map) {
    return Field(
      cardinality: map['cardinality'] == null ? null : FieldCardinality.fromValue(map['cardinality'] as String),
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'] as String,
      jsonName: map['jsonName'] == null ? null : map['jsonName'] as String,
      kind: map['kind'] == null ? null : FieldKind.fromValue(map['kind'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      number: map['number'] == null ? null : map['number'] as int,
      oneofIndex: map['oneofIndex'] == null ? null : map['oneofIndex'] as int,
      options: map['options'] == null ? null : pulumi.Input.decodeList<Option>(map['options'], (value) => Option.fromMap((value as Map).cast<String, dynamic>())),
      packed: map['packed'] == null ? null : map['packed'] as bool,
      typeUrl: map['typeUrl'] == null ? null : map['typeUrl'] as String,
    );
  }
}

