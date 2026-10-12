// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_sub_parameter_sub_parameter_validation_allowed_values_value_oneof_value_parameter_value.dart';

class CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValue {
  /// The name of the parameter.
  final pulumi.Input<String?>? name;
  /// The value of the parameter.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValueParameterValue?>? parameterValue;

  /// Creates a new [CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  const CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValue({
    this.name,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameterValue': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValueParameterValue, Map<String, dynamic>>(parameterValue, (value) => value.toMap()),
    };
  }

  factory CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValue(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterValue: (() { final guardedValue = map['parameterValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubParameterSubParameterValidationAllowedValuesValueOneofValueParameterValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
