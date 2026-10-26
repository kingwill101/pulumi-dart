// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_sub_parameter_sub_parameter_validation_allowed_values_value.dart';

class CloudControlParameterSpecSubParameterSubParameterValidationAllowedValues {
  /// List of allowed values for the parameter.
  /// Structure is documented below.
  final pulumi.Input<List<CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValue>> values;

  /// Creates a new [CloudControlParameterSpecSubParameterSubParameterValidationAllowedValues].
  /// [values] List of allowed values for the parameter.
  const CloudControlParameterSpecSubParameterSubParameterValidationAllowedValues({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': pulumi.Input.mapInputValue<List<CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CloudControlParameterSpecSubParameterSubParameterValidationAllowedValues.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubParameterValidationAllowedValues(
      values: pulumi.Input.fromValue(pulumi.Input.decodeList<CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValue>(map['values']!, (value) => CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValue.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
