// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_validation_allowed_values.dart';
import 'cloud_control_parameter_spec_validation_int_range.dart';
import 'cloud_control_parameter_spec_validation_regexp_pattern.dart';

class CloudControlParameterSpecValidation {
  /// Allowed set of values for the parameter.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecValidationAllowedValues>? allowedValues;
  /// Number range for number parameters.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecValidationIntRange>? intRange;
  /// Regular Expression Validator for parameter values.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecValidationRegexpPattern>? regexpPattern;

  /// Creates a new [CloudControlParameterSpecValidation].
  /// [allowedValues] Allowed set of values for the parameter.
  /// [intRange] Number range for number parameters.
  /// [regexpPattern] Regular Expression Validator for parameter values.
  const CloudControlParameterSpecValidation({
    this.allowedValues,
    this.intRange,
    this.regexpPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecValidationAllowedValues, Map<String, dynamic>>(allowedValues, (value) => value.toMap()),
      'intRange': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecValidationIntRange, Map<String, dynamic>>(intRange, (value) => value.toMap()),
      'regexpPattern': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecValidationRegexpPattern, Map<String, dynamic>>(regexpPattern, (value) => value.toMap()),
    };
  }

  factory CloudControlParameterSpecValidation.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecValidation(
      allowedValues: (() { final guardedValue = map['allowedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecValidationAllowedValues.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intRange: (() { final guardedValue = map['intRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecValidationIntRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regexpPattern: (() { final guardedValue = map['regexpPattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecValidationRegexpPattern.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

