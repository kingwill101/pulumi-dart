// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_deployment_args_doc}
/// Arguments for getDeployment.
/// {@endtemplate}
/// {@macro pulumi_resources_get_deployment_args_doc}
class GetDeploymentArgs {
  /// The name of the deployment.
  final pulumi.Input<String> deploymentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeploymentArgs].
  /// [deploymentName] The name of the deployment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDeploymentArgs({
    required this.deploymentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': deploymentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArgs(
      deploymentName: pulumi.Input.fromValue(map['deploymentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
