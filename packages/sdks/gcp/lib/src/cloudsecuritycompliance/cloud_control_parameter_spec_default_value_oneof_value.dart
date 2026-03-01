// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_control_parameter_spec_default_value_oneof_value_parameter_value.dart';

class CloudControlParameterSpecDefaultValueOneofValue {
  /// The name of the parameter.
  final String? name;
  /// The value of the parameter.
  /// Structure is documented below.
  final CloudControlParameterSpecDefaultValueOneofValueParameterValue? parameterValue;

  /// Creates a new [CloudControlParameterSpecDefaultValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  CloudControlParameterSpecDefaultValueOneofValue({
    this.name,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameterValue': ?parameterValue == null ? null : parameterValue!.toMap(),
    };
  }

  factory CloudControlParameterSpecDefaultValueOneofValue.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecDefaultValueOneofValue(
      name: map['name'] == null ? null : map['name'] as String,
      parameterValue: map['parameterValue'] == null ? null : CloudControlParameterSpecDefaultValueOneofValueParameterValue.fromMap((map['parameterValue'] as Map).cast<String, dynamic>()),
    );
  }
}

