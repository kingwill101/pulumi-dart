// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_cloud_control_detail_parameter_parameter_value_oneof_value_parameter_value.dart';

class FrameworkCloudControlDetailParameterParameterValueOneofValue {
  /// The name of the parameter.
  final pulumi.Input<String>? name;
  /// The value of the parameter.
  /// Structure is documented below.
  final pulumi.Input<FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue>? parameterValue;

  /// Creates a new [FrameworkCloudControlDetailParameterParameterValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  FrameworkCloudControlDetailParameterParameterValueOneofValue({
    this.name,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameterValue': ?pulumi.Input.mapOptionalInputValue<FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue, Map<String, dynamic>>(parameterValue, (value) => value.toMap()),
    };
  }

  factory FrameworkCloudControlDetailParameterParameterValueOneofValue.fromMap(Map<String, dynamic> map) {
    return FrameworkCloudControlDetailParameterParameterValueOneofValue(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parameterValue: map['parameterValue'] == null ? null : (FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue.fromMap((map['parameterValue']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

