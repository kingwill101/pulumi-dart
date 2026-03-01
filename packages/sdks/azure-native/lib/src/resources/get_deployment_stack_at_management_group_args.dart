// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_deployment_stack_at_management_group_args_doc}
/// Arguments for getDeploymentStackAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_resources_get_deployment_stack_at_management_group_args_doc}
class GetDeploymentStackAtManagementGroupArgs {
  /// Name of the deployment stack.
  final pulumi.Input<String> deploymentStackName;
  /// The name of the management group. The name is case insensitive.
  final pulumi.Input<String> managementGroupId;

  /// Creates a new [GetDeploymentStackAtManagementGroupArgs].
  /// [deploymentStackName] Name of the deployment stack.
  /// [managementGroupId] The name of the management group. The name is case insensitive.
  GetDeploymentStackAtManagementGroupArgs({
    required pulumi.Output<String> deploymentStackName,
    required pulumi.Output<String> managementGroupId,
  }) :
      deploymentStackName = pulumi.Input.asInput<String>(deploymentStackName),
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStackName': deploymentStackName,
      'managementGroupId': managementGroupId,
    };
  }

  factory GetDeploymentStackAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentStackAtManagementGroupArgs(
      deploymentStackName: pulumi.Output.create<String>(map['deploymentStackName'] as String),
      managementGroupId: pulumi.Output.create<String>(map['managementGroupId'] as String),
    );
  }
}

