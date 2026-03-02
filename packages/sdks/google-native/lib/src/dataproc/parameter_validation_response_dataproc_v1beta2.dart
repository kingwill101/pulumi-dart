// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_validation_response_dataproc_v1beta2.dart';
import 'value_validation_response_dataproc_v1beta2.dart';

/// Configuration for parameter validation.
class ParameterValidationResponseDataprocV1beta2 {
  /// Validation based on regular expressions.
  final pulumi.Input<RegexValidationResponseDataprocV1beta2> regex;
  /// Validation based on a list of allowed values.
  final pulumi.Input<ValueValidationResponseDataprocV1beta2> values;

  /// Creates a new [ParameterValidationResponseDataprocV1beta2].
  /// [regex] Validation based on regular expressions.
  /// [values] Validation based on a list of allowed values.
  ParameterValidationResponseDataprocV1beta2({
    required this.regex,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': pulumi.Input.mapInputValue<RegexValidationResponseDataprocV1beta2, Map<String, dynamic>>(regex, (value) => value.toMap()),
      'values': pulumi.Input.mapInputValue<ValueValidationResponseDataprocV1beta2, Map<String, dynamic>>(values, (value) => value.toMap()),
    };
  }

  factory ParameterValidationResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ParameterValidationResponseDataprocV1beta2(
      regex: (RegexValidationResponseDataprocV1beta2.fromMap((map['regex'] as Map).cast<String, dynamic>())).input(),
      values: (ValueValidationResponseDataprocV1beta2.fromMap((map['values'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

