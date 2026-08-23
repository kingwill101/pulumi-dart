// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_cloud_control_detail_parameter_parameter_value.dart';

class FrameworkCloudControlDetailParameter {
  /// The name of the parameter.
  final pulumi.Input<String> name;
  /// Possible parameter value types.
  /// Structure is documented below.
  final pulumi.Input<FrameworkCloudControlDetailParameterParameterValue> parameterValue;

  /// Creates a new [FrameworkCloudControlDetailParameter].
  /// [name] The name of the parameter.
  /// [parameterValue] Possible parameter value types.
  const FrameworkCloudControlDetailParameter({
    required this.name,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameterValue': pulumi.Input.mapInputValue<FrameworkCloudControlDetailParameterParameterValue, Map<String, dynamic>>(parameterValue, (value) => value.toMap()),
    };
  }

  factory FrameworkCloudControlDetailParameter.fromMap(Map<String, dynamic> map) {
    return FrameworkCloudControlDetailParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameterValue: pulumi.Input.fromValue(FrameworkCloudControlDetailParameterParameterValue.fromMap((map['parameterValue']! as Map).cast<String, dynamic>())),
    );
  }
}
