// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_validation_allowed_values_value_oneof_value_parameter_value_oneof_value_parameter_value.dart';

class CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValue {
  /// The name of the parameter.
  final pulumi.Input<String?>? name;
  /// The value of the parameter.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValue?>? parameterValue;

  /// Creates a new [CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  const CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValue({
    this.name,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameterValue': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValue, Map<String, dynamic>>(parameterValue, (value) => value.toMap()),
    };
  }

  factory CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValue(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterValue: (() { final guardedValue = map['parameterValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecValidationAllowedValuesValueOneofValueParameterValueOneofValueParameterValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
