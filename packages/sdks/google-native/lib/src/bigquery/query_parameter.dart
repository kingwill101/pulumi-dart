// ignore_for_file: unused_element, unnecessary_cast

import 'query_parameter_type.dart';
import 'query_parameter_value.dart';

class QueryParameter {
  /// [Optional] If unset, this is a positional parameter. Otherwise, should be unique within a query.
  final String? name;
  /// [Required] The type of this parameter.
  final QueryParameterType? parameterType;
  /// [Required] The value of this parameter.
  final QueryParameterValue? parameterValue;

  /// Creates a new [QueryParameter].
  /// [name] [Optional] If unset, this is a positional parameter. Otherwise, should be unique within a query.
  /// [parameterType] [Required] The type of this parameter.
  /// [parameterValue] [Required] The value of this parameter.
  QueryParameter({
    this.name,
    this.parameterType,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameterType': ?parameterType == null ? null : parameterType!.toMap(),
      'parameterValue': ?parameterValue == null ? null : parameterValue!.toMap(),
    };
  }

  factory QueryParameter.fromMap(Map<String, dynamic> map) {
    return QueryParameter(
      name: map['name'] == null ? null : map['name'] as String,
      parameterType: map['parameterType'] == null ? null : QueryParameterType.fromMap((map['parameterType'] as Map).cast<String, dynamic>()),
      parameterValue: map['parameterValue'] == null ? null : QueryParameterValue.fromMap((map['parameterValue'] as Map).cast<String, dynamic>()),
    );
  }
}

