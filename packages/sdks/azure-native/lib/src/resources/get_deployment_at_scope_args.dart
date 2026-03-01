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
  GetDeploymentAtScopeArgs({
    required pulumi.Output<String> deploymentName,
    required pulumi.Output<String> scope,
  }) :
      deploymentName = pulumi.Input.asInput<String>(deploymentName),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': deploymentName,
      'scope': scope,
    };
  }

  factory GetDeploymentAtScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentAtScopeArgs(
      deploymentName: pulumi.Output.create<String>(map['deploymentName'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

