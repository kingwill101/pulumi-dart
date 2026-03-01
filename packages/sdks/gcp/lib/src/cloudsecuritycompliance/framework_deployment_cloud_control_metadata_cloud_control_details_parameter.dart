// ignore_for_file: unused_element, unnecessary_cast

import 'framework_deployment_cloud_control_metadata_cloud_control_details_parameter_parameter_value.dart';

class FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter {
  /// The name of the parameter.
  final String name;
  /// Possible parameter value types.
  /// Structure is documented below.
  final FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValue parameterValue;

  /// Creates a new [FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter].
  /// [name] The name of the parameter.
  /// [parameterValue] Possible parameter value types.
  FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter({
    required this.name,
    required this.parameterValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameterValue': parameterValue.toMap(),
    };
  }

  factory FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameter(
      name: map['name'] as String,
      parameterValue: FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValue.fromMap((map['parameterValue'] as Map).cast<String, dynamic>()),
    );
  }
}

