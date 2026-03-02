// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_request_header_example.dart';

class ApiOperationRequestHeader {
  /// The default value for this Header.
  final pulumi.Input<String>? defaultValue;
  /// A description of this Header.
  final pulumi.Input<String>? description;
  /// One or more `example` blocks as defined above.
  final pulumi.Input<List<ApiOperationRequestHeaderExample>>? examples;
  /// The Name of this Header.
  final pulumi.Input<String> name;
  /// Is this Header Required?
  final pulumi.Input<bool> required;
  /// The name of the Schema.
  final pulumi.Input<String>? schemaId;
  /// The Type of this Header, such as a `string`.
  final pulumi.Input<String> type;
  /// The type name defined by the Schema.
  final pulumi.Input<String>? typeName;
  /// One or more acceptable values for this Header.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ApiOperationRequestHeader].
  /// [defaultValue] The default value for this Header.
  /// [description] A description of this Header.
  /// [examples] One or more `example` blocks as defined above.
  /// [name] The Name of this Header.
  /// [required] Is this Header Required?
  /// [schemaId] The name of the Schema.
  /// [type] The Type of this Header, such as a `string`.
  /// [typeName] The type name defined by the Schema.
  /// [values] One or more acceptable values for this Header.
  ApiOperationRequestHeader({
    this.defaultValue,
    this.description,
    this.examples,
    required this.name,
    required this.required,
    this.schemaId,
    required this.type,
    this.typeName,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'description': ?description,
      'examples': ?pulumi.Input.mapOptionalInputValue<List<ApiOperationRequestHeaderExample>, List<Map<String, dynamic>>>(examples, (value) => pulumi.Input.encodeList<ApiOperationRequestHeaderExample, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'required': required,
      'schemaId': ?schemaId,
      'type': type,
      'typeName': ?typeName,
      'values': ?values,
    };
  }

  factory ApiOperationRequestHeader.fromMap(Map<String, dynamic> map) {
    return ApiOperationRequestHeader(
      defaultValue: map['defaultValue'] == null ? null : (map['defaultValue'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      examples: map['examples'] == null ? null : (pulumi.Input.decodeList<ApiOperationRequestHeaderExample>(map['examples'], (value) => ApiOperationRequestHeaderExample.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      required: (map['required'] as bool).input(),
      schemaId: map['schemaId'] == null ? null : (map['schemaId'] as String).input(),
      type: (map['type'] as String).input(),
      typeName: map['typeName'] == null ? null : (map['typeName'] as String).input(),
      values: map['values'] == null ? null : ((map['values'] as List).cast<String>()).input(),
    );
  }
}

