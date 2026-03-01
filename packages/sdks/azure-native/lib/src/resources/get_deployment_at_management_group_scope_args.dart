// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_deployment_at_management_group_scope_args_doc}
/// Arguments for getDeploymentAtManagementGroupScope.
/// {@endtemplate}
/// {@macro pulumi_resources_get_deployment_at_management_group_scope_args_doc}
class GetDeploymentAtManagementGroupScopeArgs {
  /// The name of the deployment.
  final pulumi.Input<String> deploymentName;
  /// The management group ID.
  final pulumi.Input<String> groupId;

  /// Creates a new [GetDeploymentAtManagementGroupScopeArgs].
  /// [deploymentName] The name of the deployment.
  /// [groupId] The management group ID.
  GetDeploymentAtManagementGroupScopeArgs({
    required pulumi.Output<String> deploymentName,
    required pulumi.Output<String> groupId,
  }) :
      deploymentName = pulumi.Input.asInput<String>(deploymentName),
      groupId = pulumi.Input.asInput<String>(groupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': deploymentName,
      'groupId': groupId,
    };
  }

  factory GetDeploymentAtManagementGroupScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentAtManagementGroupScopeArgs(
      deploymentName: pulumi.Output.create<String>(map['deploymentName'] as String),
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
    );
  }
}

