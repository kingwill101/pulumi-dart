// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_cloud_control_metadata_cloud_control_details_parameter_parameter_value_oneof_value_parameter_value.dart';

class FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue {
  /// The name of the parameter.
  final pulumi.Input<String>? name;
  /// The value of the parameter.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValue>? parameterValue;

  /// Creates a new [FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue].
  /// [name] The name of the parameter.
  /// [parameterValue] The value of the parameter.
  const FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue({
    this.name,
    this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameterValue': ?pulumi.Input.mapOptionalInputValue<FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValue, Map<String, dynamic>>(parameterValue, (value) => value.toMap()),
    };
  }

  factory FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterValue: (() { final guardedValue = map['parameterValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
