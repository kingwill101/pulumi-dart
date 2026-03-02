// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_parameter_type.dart';
import 'query_parameter_value.dart';

class QueryParameter {
  /// [Optional] If unset, this is a positional parameter. Otherwise, should be unique within a query.
  final pulumi.Input<String>? name;
  /// [Required] The type of this parameter.
  final pulumi.Input<QueryParameterType>? parameterType;
  /// [Required] The value of this parameter.
  final pulumi.Input<QueryParameterValue>? parameterValue;

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
      'parameterType': ?pulumi.Input.mapOptionalInputValue<QueryParameterType, Map<String, dynamic>>(parameterType, (value) => value.toMap()),
      'parameterValue': ?pulumi.Input.mapOptionalInputValue<QueryParameterValue, Map<String, dynamic>>(parameterValue, (value) => value.toMap()),
    };
  }

  factory QueryParameter.fromMap(Map<String, dynamic> map) {
    return QueryParameter(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameterType: map['parameterType'] == null ? null : (QueryParameterType.fromMap((map['parameterType'] as Map).cast<String, dynamic>())).input(),
      parameterValue: map['parameterValue'] == null ? null : (QueryParameterValue.fromMap((map['parameterValue'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

