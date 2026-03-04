// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_validation_allowed_values_value_oneof_value_parameter_value.dart';

class CloudControlParameterSpecValidationAllowedValuesValueOneofValue {
  /// The name of the parameter.
  final pulumi.Input<String>? name;

  /// The value of the parameter.
  /// Structure is documented below.
  final pulumi.Input<
    CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValue
  >?
  parameterValue;

  /// Creates a new [CloudControlParameterSpecValidationAllowedValuesValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  CloudControlParameterSpecValidationAllowedValuesValueOneofValue({
    this.name,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameterValue':
          ?pulumi.Input.mapOptionalInputValue<
            CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValue,
            Map<String, dynamic>
          >(parameterValue, (value) => value.toMap()),
    };
  }

  factory CloudControlParameterSpecValidationAllowedValuesValueOneofValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudControlParameterSpecValidationAllowedValuesValueOneofValue(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameterValue: (() {
        final guardedValue = map['parameterValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
