// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_sub_parameter_sub_parameter_validation_allowed_values.dart';
import 'cloud_control_parameter_spec_sub_parameter_sub_parameter_validation_int_range.dart';
import 'cloud_control_parameter_spec_sub_parameter_sub_parameter_validation_regexp_pattern.dart';

class CloudControlParameterSpecSubParameterSubParameterValidation {
  /// Allowed set of values for the parameter.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterSubParameterValidationAllowedValues?>? allowedValues;
  /// Number range for number parameters.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterSubParameterValidationIntRange?>? intRange;
  /// Regular Expression Validator for parameter values.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterSubParameterValidationRegexpPattern?>? regexpPattern;

  /// Creates a new [CloudControlParameterSpecSubParameterSubParameterValidation].
  /// [allowedValues] Allowed set of values for the parameter.
  /// [intRange] Number range for number parameters.
  /// [regexpPattern] Regular Expression Validator for parameter values.
  const CloudControlParameterSpecSubParameterSubParameterValidation({
    this.allowedValues,
    this.intRange,
    this.regexpPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterSubParameterValidationAllowedValues, Map<String, dynamic>>(allowedValues, (value) => value.toMap()),
      'intRange': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterSubParameterValidationIntRange, Map<String, dynamic>>(intRange, (value) => value.toMap()),
      'regexpPattern': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterSubParameterValidationRegexpPattern, Map<String, dynamic>>(regexpPattern, (value) => value.toMap()),
    };
  }

  factory CloudControlParameterSpecSubParameterSubParameterValidation.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubParameterValidation(
      allowedValues: (() { final guardedValue = map['allowedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubParameterSubParameterValidationAllowedValues.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intRange: (() { final guardedValue = map['intRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubParameterSubParameterValidationIntRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexpPattern: (() { final guardedValue = map['regexpPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubParameterSubParameterValidationRegexpPattern.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
