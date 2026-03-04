// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_cloud_control_detail_parameter_parameter_value_oneof_value_parameter_value.dart';

class FrameworkCloudControlDetailParameterParameterValueOneofValue {
  /// The name of the parameter.
  final pulumi.Input<String>? name;

  /// The value of the parameter.
  /// Structure is documented below.
  final pulumi.Input<
    FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue
  >?
  parameterValue;

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
      'parameterValue':
          ?pulumi.Input.mapOptionalInputValue<
            FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue,
            Map<String, dynamic>
          >(parameterValue, (value) => value.toMap()),
    };
  }

  factory FrameworkCloudControlDetailParameterParameterValueOneofValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return FrameworkCloudControlDetailParameterParameterValueOneofValue(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameterValue: (() {
        final guardedValue = map['parameterValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FrameworkCloudControlDetailParameterParameterValueOneofValueParameterValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
