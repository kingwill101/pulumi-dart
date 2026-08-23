// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regex_validation.dart';
import 'value_validation.dart';

/// Configuration for parameter validation.
class ParameterValidation {
  /// Validation based on regular expressions.
  final pulumi.Input<RegexValidation>? regex;
  /// Validation based on a list of allowed values.
  final pulumi.Input<ValueValidation>? values;

  /// Creates a new [ParameterValidation].
  /// [regex] Validation based on regular expressions.
  /// [values] Validation based on a list of allowed values.
  const ParameterValidation({
    this.regex,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': ?pulumi.Input.mapOptionalInputValue<RegexValidation, Map<String, dynamic>>(regex, (value) => value.toMap()),
      'values': ?pulumi.Input.mapOptionalInputValue<ValueValidation, Map<String, dynamic>>(values, (value) => value.toMap()),
    };
  }

  factory ParameterValidation.fromMap(Map<String, dynamic> map) {
    return ParameterValidation(
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegexValidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ValueValidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
