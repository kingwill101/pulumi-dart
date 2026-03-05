// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_deployment_stack_at_resource_group_args_doc}
/// Arguments for getDeploymentStackAtResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_resources_get_deployment_stack_at_resource_group_args_doc}
class GetDeploymentStackAtResourceGroupArgs {
  /// Name of the deployment stack.
  final pulumi.Input<String> deploymentStackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeploymentStackAtResourceGroupArgs].
  /// [deploymentStackName] Name of the deployment stack.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDeploymentStackAtResourceGroupArgs({
    required this.deploymentStackName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStackName': deploymentStackName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeploymentStackAtResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentStackAtResourceGroupArgs(
      deploymentStackName: pulumi.Input.fromValue(map['deploymentStackName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

