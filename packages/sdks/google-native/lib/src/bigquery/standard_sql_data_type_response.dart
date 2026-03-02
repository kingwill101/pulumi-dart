// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_sql_struct_type_response.dart';

/// The data type of a variable such as a function argument. Examples include: * INT64: `{"typeKind": "INT64"}` * ARRAY: { "typeKind": "ARRAY", "arrayElementType": {"typeKind": "STRING"} } * STRUCT>: { "typeKind": "STRUCT", "structType": { "fields": [ { "name": "x", "type": {"typeKind": "STRING"} }, { "name": "y", "type": { "typeKind": "ARRAY", "arrayElementType": {"typeKind": "DATE"} } } ] } }
class StandardSqlDataTypeResponse {
  /// The type of the array's elements, if type_kind = "ARRAY".
  final pulumi.Input<StandardSqlDataTypeResponse> arrayElementType;
  /// The type of the range's elements, if type_kind = "RANGE".
  final pulumi.Input<StandardSqlDataTypeResponse> rangeElementType;
  /// The fields of this struct, in order, if type_kind = "STRUCT".
  final pulumi.Input<StandardSqlStructTypeResponse> structType;
  /// The top level type of this field. Can be any GoogleSQL data type (e.g., "INT64", "DATE", "ARRAY").
  final pulumi.Input<String> typeKind;

  /// Creates a new [StandardSqlDataTypeResponse].
  /// [arrayElementType] The type of the array's elements, if type_kind = "ARRAY".
  /// [rangeElementType] The type of the range's elements, if type_kind = "RANGE".
  /// [structType] The fields of this struct, in order, if type_kind = "STRUCT".
  /// [typeKind] The top level type of this field. Can be any GoogleSQL data type (e.g., "INT64", "DATE", "ARRAY").
  StandardSqlDataTypeResponse({
    required this.arrayElementType,
    required this.rangeElementType,
    required this.structType,
    required this.typeKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayElementType': pulumi.Input.mapInputValue<StandardSqlDataTypeResponse, Map<String, dynamic>>(arrayElementType, (value) => value.toMap()),
      'rangeElementType': pulumi.Input.mapInputValue<StandardSqlDataTypeResponse, Map<String, dynamic>>(rangeElementType, (value) => value.toMap()),
      'structType': pulumi.Input.mapInputValue<StandardSqlStructTypeResponse, Map<String, dynamic>>(structType, (value) => value.toMap()),
      'typeKind': typeKind,
    };
  }

  factory StandardSqlDataTypeResponse.fromMap(Map<String, dynamic> map) {
    return StandardSqlDataTypeResponse(
      arrayElementType: (StandardSqlDataTypeResponse.fromMap((map['arrayElementType'] as Map).cast<String, dynamic>())).input(),
      rangeElementType: (StandardSqlDataTypeResponse.fromMap((map['rangeElementType'] as Map).cast<String, dynamic>())).input(),
      structType: (StandardSqlStructTypeResponse.fromMap((map['structType'] as Map).cast<String, dynamic>())).input(),
      typeKind: (map['typeKind'] as String).input(),
    );
  }
}

