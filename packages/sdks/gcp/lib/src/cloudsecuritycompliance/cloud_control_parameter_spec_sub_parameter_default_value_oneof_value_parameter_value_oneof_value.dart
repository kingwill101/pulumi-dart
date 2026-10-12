// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_sub_parameter_default_value_oneof_value_parameter_value_oneof_value_parameter_value.dart';

class CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValue {
  /// The name of the parameter.
  final pulumi.Input<String?>? name;
  /// The value of the parameter.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValueParameterValue?>? parameterValue;

  /// Creates a new [CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  const CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValue({
    this.name,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameterValue': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValueParameterValue, Map<String, dynamic>>(parameterValue, (value) => value.toMap()),
    };
  }

  factory CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValue(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterValue: (() { final guardedValue = map['parameterValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubParameterDefaultValueOneofValueParameterValueOneofValueParameterValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
