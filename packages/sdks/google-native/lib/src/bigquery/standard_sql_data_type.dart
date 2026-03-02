// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_sql_data_type_type_kind.dart';
import 'standard_sql_struct_type.dart';

/// The data type of a variable such as a function argument. Examples include: * INT64: `{"typeKind": "INT64"}` * ARRAY: { "typeKind": "ARRAY", "arrayElementType": {"typeKind": "STRING"} } * STRUCT>: { "typeKind": "STRUCT", "structType": { "fields": [ { "name": "x", "type": {"typeKind": "STRING"} }, { "name": "y", "type": { "typeKind": "ARRAY", "arrayElementType": {"typeKind": "DATE"} } } ] } }
class StandardSqlDataType {
  /// The type of the array's elements, if type_kind = "ARRAY".
  final pulumi.Input<StandardSqlDataType>? arrayElementType;
  /// The type of the range's elements, if type_kind = "RANGE".
  final pulumi.Input<StandardSqlDataType>? rangeElementType;
  /// The fields of this struct, in order, if type_kind = "STRUCT".
  final pulumi.Input<StandardSqlStructType>? structType;
  /// The top level type of this field. Can be any GoogleSQL data type (e.g., "INT64", "DATE", "ARRAY").
  final pulumi.Input<StandardSqlDataTypeTypeKind> typeKind;

  /// Creates a new [StandardSqlDataType].
  /// [arrayElementType] The type of the array's elements, if type_kind = "ARRAY".
  /// [rangeElementType] The type of the range's elements, if type_kind = "RANGE".
  /// [structType] The fields of this struct, in order, if type_kind = "STRUCT".
  /// [typeKind] The top level type of this field. Can be any GoogleSQL data type (e.g., "INT64", "DATE", "ARRAY").
  StandardSqlDataType({
    this.arrayElementType,
    this.rangeElementType,
    this.structType,
    required this.typeKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayElementType': ?pulumi.Input.mapOptionalInputValue<StandardSqlDataType, Map<String, dynamic>>(arrayElementType, (value) => value.toMap()),
      'rangeElementType': ?pulumi.Input.mapOptionalInputValue<StandardSqlDataType, Map<String, dynamic>>(rangeElementType, (value) => value.toMap()),
      'structType': ?pulumi.Input.mapOptionalInputValue<StandardSqlStructType, Map<String, dynamic>>(structType, (value) => value.toMap()),
      'typeKind': pulumi.Input.mapInputValue<StandardSqlDataTypeTypeKind, String>(typeKind, (value) => value.value),
    };
  }

  factory StandardSqlDataType.fromMap(Map<String, dynamic> map) {
    return StandardSqlDataType(
      arrayElementType: map['arrayElementType'] == null ? null : (StandardSqlDataType.fromMap((map['arrayElementType'] as Map).cast<String, dynamic>())).input(),
      rangeElementType: map['rangeElementType'] == null ? null : (StandardSqlDataType.fromMap((map['rangeElementType'] as Map).cast<String, dynamic>())).input(),
      structType: map['structType'] == null ? null : (StandardSqlStructType.fromMap((map['structType'] as Map).cast<String, dynamic>())).input(),
      typeKind: (StandardSqlDataTypeTypeKind.fromValue(map['typeKind'] as String)).input(),
    );
  }
}

