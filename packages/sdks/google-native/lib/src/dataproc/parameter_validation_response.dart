// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_validation_response.dart';
import 'value_validation_response.dart';

/// Configuration for parameter validation.
class ParameterValidationResponse {
  /// Validation based on regular expressions.
  final pulumi.Input<RegexValidationResponse> regex;
  /// Validation based on a list of allowed values.
  final pulumi.Input<ValueValidationResponse> values;

  /// Creates a new [ParameterValidationResponse].
  /// [regex] Validation based on regular expressions.
  /// [values] Validation based on a list of allowed values.
  const ParameterValidationResponse({
    required this.regex,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': pulumi.Input.mapInputValue<RegexValidationResponse, Map<String, dynamic>>(regex, (value) => value.toMap()),
      'values': pulumi.Input.mapInputValue<ValueValidationResponse, Map<String, dynamic>>(values, (value) => value.toMap()),
    };
  }

  factory ParameterValidationResponse.fromMap(Map<String, dynamic> map) {
    return ParameterValidationResponse(
      regex: pulumi.Input.fromValue(RegexValidationResponse.fromMap((map['regex']! as Map).cast<String, dynamic>())),
      values: pulumi.Input.fromValue(ValueValidationResponse.fromMap((map['values']! as Map).cast<String, dynamic>())),
    );
  }
}

