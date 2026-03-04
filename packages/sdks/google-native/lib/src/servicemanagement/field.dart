// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_cardinality.dart';
import 'field_kind.dart';
import 'option.dart';

/// A single field of a message type.
class Field {
  /// The field cardinality.
  final pulumi.Input<FieldCardinality>? cardinality;

  /// The string value of the default value of this field. Proto2 syntax only.
  final pulumi.Input<String>? defaultValue;

  /// The field JSON name.
  final pulumi.Input<String>? jsonName;

  /// The field type.
  final pulumi.Input<FieldKind>? kind;

  /// The field name.
  final pulumi.Input<String>? name;

  /// The field number.
  final pulumi.Input<int>? number;

  /// The index of the field type in `Type.oneofs`, for message or enumeration types. The first type has index 1; zero means the type is not in the list.
  final pulumi.Input<int>? oneofIndex;

  /// The protocol buffer options.
  final pulumi.Input<List<Option>>? options;

  /// Whether to use alternative packed wire representation.
  final pulumi.Input<bool>? packed;

  /// The field type URL, without the scheme, for message or enumeration types. Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
  final pulumi.Input<String>? typeUrl;

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
      'cardinality':
          ?pulumi.Input.mapOptionalInputValue<FieldCardinality, String>(
            cardinality,
            (value) => value.wireValue,
          ),
      'defaultValue': ?defaultValue,
      'jsonName': ?jsonName,
      'kind': ?pulumi.Input.mapOptionalInputValue<FieldKind, String>(
        kind,
        (value) => value.wireValue,
      ),
      'name': ?name,
      'number': ?number,
      'oneofIndex': ?oneofIndex,
      'options':
          ?pulumi.Input.mapOptionalInputValue<
            List<Option>,
            List<Map<String, dynamic>>
          >(
            options,
            (value) => pulumi.Input.encodeList<Option, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'packed': ?packed,
      'typeUrl': ?typeUrl,
    };
  }

  factory Field.fromMap(Map<String, dynamic> map) {
    return Field(
      cardinality: (() {
        final guardedValue = map['cardinality'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FieldCardinality.fromValue(guardedValue as String),
        );
      })(),
      defaultValue: (() {
        final guardedValue = map['defaultValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jsonName: (() {
        final guardedValue = map['jsonName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FieldKind.fromValue(guardedValue as String),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      number: (() {
        final guardedValue = map['number'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      oneofIndex: (() {
        final guardedValue = map['oneofIndex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      options: (() {
        final guardedValue = map['options'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Option>(
            guardedValue,
            (value) => Option.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      packed: (() {
        final guardedValue = map['packed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      typeUrl: (() {
        final guardedValue = map['typeUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
