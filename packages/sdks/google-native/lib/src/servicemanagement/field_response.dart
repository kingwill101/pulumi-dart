// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'option_response.dart';

/// A single field of a message type.
class FieldResponse {
  /// The field cardinality.
  final String cardinality;
  /// The string value of the default value of this field. Proto2 syntax only.
  final String defaultValue;
  /// The field JSON name.
  final String jsonName;
  /// The field type.
  final String kind;
  /// The field name.
  final String name;
  /// The field number.
  final int number;
  /// The index of the field type in `Type.oneofs`, for message or enumeration types. The first type has index 1; zero means the type is not in the list.
  final int oneofIndex;
  /// The protocol buffer options.
  final List<OptionResponse> options;
  /// Whether to use alternative packed wire representation.
  final bool packed;
  /// The field type URL, without the scheme, for message or enumeration types. Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
  final String typeUrl;

  /// Creates a new [FieldResponse].
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
  FieldResponse({
    required this.cardinality,
    required this.defaultValue,
    required this.jsonName,
    required this.kind,
    required this.name,
    required this.number,
    required this.oneofIndex,
    required this.options,
    required this.packed,
    required this.typeUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardinality': cardinality,
      'defaultValue': defaultValue,
      'jsonName': jsonName,
      'kind': kind,
      'name': name,
      'number': number,
      'oneofIndex': oneofIndex,
      'options': pulumi.Input.encodeList<OptionResponse, Map<String, dynamic>>(options, (value) => value.toMap()),
      'packed': packed,
      'typeUrl': typeUrl,
    };
  }

  factory FieldResponse.fromMap(Map<String, dynamic> map) {
    return FieldResponse(
      cardinality: map['cardinality'] as String,
      defaultValue: map['defaultValue'] as String,
      jsonName: map['jsonName'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      number: map['number'] as int,
      oneofIndex: map['oneofIndex'] as int,
      options: pulumi.Input.decodeList<OptionResponse>(map['options'], (value) => OptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      packed: map['packed'] as bool,
      typeUrl: map['typeUrl'] as String,
    );
  }
}

