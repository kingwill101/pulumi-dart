// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_validation_dataproc_v1beta2.dart';
import 'value_validation_dataproc_v1beta2.dart';

/// Configuration for parameter validation.
class ParameterValidationDataprocV1beta2 {
  /// Validation based on regular expressions.
  final pulumi.Input<RegexValidationDataprocV1beta2>? regex;
  /// Validation based on a list of allowed values.
  final pulumi.Input<ValueValidationDataprocV1beta2>? values;

  /// Creates a new [ParameterValidationDataprocV1beta2].
  /// [regex] Validation based on regular expressions.
  /// [values] Validation based on a list of allowed values.
  const ParameterValidationDataprocV1beta2({
    this.regex,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': ?pulumi.Input.mapOptionalInputValue<RegexValidationDataprocV1beta2, Map<String, dynamic>>(regex, (value) => value.toMap()),
      'values': ?pulumi.Input.mapOptionalInputValue<ValueValidationDataprocV1beta2, Map<String, dynamic>>(values, (value) => value.toMap()),
    };
  }

  factory ParameterValidationDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ParameterValidationDataprocV1beta2(
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegexValidationDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ValueValidationDataprocV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
