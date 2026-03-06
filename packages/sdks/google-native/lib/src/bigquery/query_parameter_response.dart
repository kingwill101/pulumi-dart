// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_parameter_type_response.dart';
import 'query_parameter_value_response.dart';

class QueryParameterResponse {
  /// [Optional] If unset, this is a positional parameter. Otherwise, should be unique within a query.
  final pulumi.Input<String> name;
  /// [Required] The type of this parameter.
  final pulumi.Input<QueryParameterTypeResponse> parameterType;
  /// [Required] The value of this parameter.
  final pulumi.Input<QueryParameterValueResponse> parameterValue;

  /// Creates a new [QueryParameterResponse].
  /// [name] [Optional] If unset, this is a positional parameter. Otherwise, should be unique within a query.
  /// [parameterType] [Required] The type of this parameter.
  /// [parameterValue] [Required] The value of this parameter.
  const QueryParameterResponse({
    required this.name,
    required this.parameterType,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameterType': pulumi.Input.mapInputValue<QueryParameterTypeResponse, Map<String, dynamic>>(parameterType, (value) => value.toMap()),
      'parameterValue': pulumi.Input.mapInputValue<QueryParameterValueResponse, Map<String, dynamic>>(parameterValue, (value) => value.toMap()),
    };
  }

  factory QueryParameterResponse.fromMap(Map<String, dynamic> map) {
    return QueryParameterResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameterType: pulumi.Input.fromValue(QueryParameterTypeResponse.fromMap((map['parameterType']! as Map).cast<String, dynamic>())),
      parameterValue: pulumi.Input.fromValue(QueryParameterValueResponse.fromMap((map['parameterValue']! as Map).cast<String, dynamic>())),
    );
  }
}

