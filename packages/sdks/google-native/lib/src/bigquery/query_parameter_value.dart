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
      arrayValues: (() { final guardedValue = map['arrayValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QueryParameterValue>(guardedValue, (value) => QueryParameterValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      structValues: (() { final guardedValue = map['structValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

