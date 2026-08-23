// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_cloud_control_metadata_cloud_control_details_parameter_parameter_value.dart';

class FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter {
  /// The name of the parameter.
  final pulumi.Input<String> name;
  /// Possible parameter value types.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValue> parameterValue;

  /// Creates a new [FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter].
  /// [name] The name of the parameter.
  /// [parameterValue] Possible parameter value types.
  const FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter({
    required this.name,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameterValue': pulumi.Input.mapInputValue<FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValue, Map<String, dynamic>>(parameterValue, (value) => value.toMap()),
    };
  }

  factory FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameterValue: pulumi.Input.fromValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValue.fromMap((map['parameterValue']! as Map).cast<String, dynamic>())),
    );
  }
}
