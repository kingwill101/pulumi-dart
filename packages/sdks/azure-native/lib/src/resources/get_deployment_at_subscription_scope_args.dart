// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_deployment_at_subscription_scope_args_doc}
/// Arguments for getDeploymentAtSubscriptionScope.
/// {@endtemplate}
/// {@macro pulumi_resources_get_deployment_at_subscription_scope_args_doc}
class GetDeploymentAtSubscriptionScopeArgs {
  /// The name of the deployment.
  final pulumi.Input<String> deploymentName;

  /// Creates a new [GetDeploymentAtSubscriptionScopeArgs].
  /// [deploymentName] The name of the deployment.
  const GetDeploymentAtSubscriptionScopeArgs({
    required this.deploymentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentName': deploymentName,
    };
  }

  factory GetDeploymentAtSubscriptionScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentAtSubscriptionScopeArgs(
      deploymentName: pulumi.Input.fromValue(map['deploymentName'] as String),
    );
  }
}
