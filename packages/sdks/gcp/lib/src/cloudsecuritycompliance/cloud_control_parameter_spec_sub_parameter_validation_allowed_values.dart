// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_sub_parameter_validation_allowed_values_value.dart';

class CloudControlParameterSpecSubParameterValidationAllowedValues {
  /// List of allowed values for the parameter.
  /// Structure is documented below.
  final pulumi.Input<List<CloudControlParameterSpecSubParameterValidationAllowedValuesValue>> values;

  /// Creates a new [CloudControlParameterSpecSubParameterValidationAllowedValues].
  /// [values] List of allowed values for the parameter.
  const CloudControlParameterSpecSubParameterValidationAllowedValues({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': pulumi.Input.mapInputValue<List<CloudControlParameterSpecSubParameterValidationAllowedValuesValue>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<CloudControlParameterSpecSubParameterValidationAllowedValuesValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CloudControlParameterSpecSubParameterValidationAllowedValues.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterValidationAllowedValues(
      values: pulumi.Input.fromValue(pulumi.Input.decodeList<CloudControlParameterSpecSubParameterValidationAllowedValuesValue>(map['values']!, (value) => CloudControlParameterSpecSubParameterValidationAllowedValuesValue.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

