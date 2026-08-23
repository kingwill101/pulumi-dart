// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_deployment_at_scope_args_doc}
/// Arguments for getDeploymentAtScope.
/// {@endtemplate}
/// {@macro pulumi_resources_get_deployment_at_scope_args_doc}
class GetDeploymentAtScopeArgs {
  /// The name of the deployment.
  final pulumi.Input<String> deploymentName;
  /// The resource scope.
  final pulumi.Input<String> scope;

  /// Creates a new [GetDeploymentAtScopeArgs].
  /// [deploymentName] The name of the deployment.
  /// [scope] The resource scope.
  const GetDeploymentAtScopeArgs({
    required this.deploymentName,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': deploymentName,
      'scope': scope,
    };
  }

  factory GetDeploymentAtScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentAtScopeArgs(
      deploymentName: pulumi.Input.fromValue(map['deploymentName'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
