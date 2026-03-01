// ignore_for_file: unused_element, unnecessary_cast

import 'standard_sql_struct_type_response.dart';

/// The data type of a variable such as a function argument. Examples include: * INT64: `{"typeKind": "INT64"}` * ARRAY: { "typeKind": "ARRAY", "arrayElementType": {"typeKind": "STRING"} } * STRUCT>: { "typeKind": "STRUCT", "structType": { "fields": [ { "name": "x", "type": {"typeKind": "STRING"} }, { "name": "y", "type": { "typeKind": "ARRAY", "arrayElementType": {"typeKind": "DATE"} } } ] } }
class StandardSqlDataTypeResponse {
  /// The type of the array's elements, if type_kind = "ARRAY".
  final StandardSqlDataTypeResponse arrayElementType;
  /// The type of the range's elements, if type_kind = "RANGE".
  final StandardSqlDataTypeResponse rangeElementType;
  /// The fields of this struct, in order, if type_kind = "STRUCT".
  final StandardSqlStructTypeResponse structType;
  /// The top level type of this field. Can be any GoogleSQL data type (e.g., "INT64", "DATE", "ARRAY").
  final String typeKind;

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
      'arrayElementType': arrayElementType.toMap(),
      'rangeElementType': rangeElementType.toMap(),
      'structType': structType.toMap(),
      'typeKind': typeKind,
    };
  }

  factory StandardSqlDataTypeResponse.fromMap(Map<String, dynamic> map) {
    return StandardSqlDataTypeResponse(
      arrayElementType: StandardSqlDataTypeResponse.fromMap((map['arrayElementType'] as Map).cast<String, dynamic>()),
      rangeElementType: StandardSqlDataTypeResponse.fromMap((map['rangeElementType'] as Map).cast<String, dynamic>()),
      structType: StandardSqlStructTypeResponse.fromMap((map['structType'] as Map).cast<String, dynamic>()),
      typeKind: map['typeKind'] as String,
    );
  }
}

