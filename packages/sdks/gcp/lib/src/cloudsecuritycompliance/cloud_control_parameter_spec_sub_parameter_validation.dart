// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_sub_parameter_validation_allowed_values.dart';
import 'cloud_control_parameter_spec_sub_parameter_validation_int_range.dart';
import 'cloud_control_parameter_spec_sub_parameter_validation_regexp_pattern.dart';

class CloudControlParameterSpecSubParameterValidation {
  /// Allowed set of values for the parameter.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterValidationAllowedValues>? allowedValues;
  /// Number range for number parameters.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterValidationIntRange>? intRange;
  /// Regular Expression Validator for parameter values.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterValidationRegexpPattern>? regexpPattern;

  /// Creates a new [CloudControlParameterSpecSubParameterValidation].
  /// [allowedValues] Allowed set of values for the parameter.
  /// [intRange] Number range for number parameters.
  /// [regexpPattern] Regular Expression Validator for parameter values.
  const CloudControlParameterSpecSubParameterValidation({
    this.allowedValues,
    this.intRange,
    this.regexpPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterValidationAllowedValues, Map<String, dynamic>>(allowedValues, (value) => value.toMap()),
      'intRange': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterValidationIntRange, Map<String, dynamic>>(intRange, (value) => value.toMap()),
      'regexpPattern': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterValidationRegexpPattern, Map<String, dynamic>>(regexpPattern, (value) => value.toMap()),
    };
  }

  factory CloudControlParameterSpecSubParameterValidation.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterValidation(
      allowedValues: (() { final guardedValue = map['allowedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubParameterValidationAllowedValues.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intRange: (() { final guardedValue = map['intRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubParameterValidationIntRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexpPattern: (() { final guardedValue = map['regexpPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubParameterValidationRegexpPattern.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

