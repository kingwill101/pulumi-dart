// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueryParameterValue {
  /// [Optional] The array values, if this is an array type.
  final pulumi.Input<List<QueryParameterValue>>? arrayValues;
  /// [Optional] The struct field values, in order of the struct type's declaration.
  final pulumi.Input<Map<String, String>>? structValues;
  /// [Optional] The value of this value, if a simple scalar type.
  final pulumi.Input<String>? value;

  /// Creates a new [QueryParameterValue].
  /// [arrayValues] [Optional] The array values, if this is an array type.
  /// [structValues] [Optional] The struct field values, in order of the struct type's declaration.
  /// [value] [Optional] The value of this value, if a simple scalar type.
  QueryParameterValue({
    this.arrayValues,
    this.structValues,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayValues': ?pulumi.Input.mapOptionalInputValue<List<QueryParameterValue>, List<Map<String, dynamic>>>(arrayValues, (value) => pulumi.Input.encodeList<QueryParameterValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'structValues': ?structValues,
      'value': ?value,
    };
  }

  factory QueryParameterValue.fromMap(Map<String, dynamic> map) {
    return QueryParameterValue(
      arrayValues: map['arrayValues'] == null ? null : (pulumi.Input.decodeList<QueryParameterValue>(map['arrayValues'], (value) => QueryParameterValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
      structValues: map['structValues'] == null ? null : ((map['structValues'] as Map).cast<String, String>()).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

