// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_deployment_at_tenant_scope_args_doc}
/// Arguments for getDeploymentAtTenantScope.
/// {@endtemplate}
/// {@macro pulumi_resources_get_deployment_at_tenant_scope_args_doc}
class GetDeploymentAtTenantScopeArgs {
  /// The name of the deployment.
  final pulumi.Input<String> deploymentName;

  /// Creates a new [GetDeploymentAtTenantScopeArgs].
  /// [deploymentName] The name of the deployment.
  const GetDeploymentAtTenantScopeArgs({
    required this.deploymentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': deploymentName,
    };
  }

  factory GetDeploymentAtTenantScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentAtTenantScopeArgs(
      deploymentName: pulumi.Input.fromValue(map['deploymentName'] as String),
    );
  }
}

