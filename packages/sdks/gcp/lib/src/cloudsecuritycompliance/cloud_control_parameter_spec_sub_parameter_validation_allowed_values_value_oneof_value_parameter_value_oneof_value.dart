// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_sub_parameter_validation_allowed_values_value_oneof_value_parameter_value_oneof_value_parameter_value.dart';

class CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueOneofValue {
  /// The name of the parameter.
  final pulumi.Input<String?>? name;
  /// The value of the parameter.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValue?>? parameterValue;

  /// Creates a new [CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  const CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueOneofValue({
    this.name,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameterValue': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValue, Map<String, dynamic>>(parameterValue, (value) => value.toMap()),
    };
  }

  factory CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueOneofValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueOneofValue(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterValue: (() { final guardedValue = map['parameterValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubParameterValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
