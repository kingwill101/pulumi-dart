// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_deployment_stack_at_subscription_args_doc}
/// Arguments for getDeploymentStackAtSubscription.
/// {@endtemplate}
/// {@macro pulumi_resources_get_deployment_stack_at_subscription_args_doc}
class GetDeploymentStackAtSubscriptionArgs {
  /// Name of the deployment stack.
  final pulumi.Input<String> deploymentStackName;

  /// Creates a new [GetDeploymentStackAtSubscriptionArgs].
  /// [deploymentStackName] Name of the deployment stack.
  GetDeploymentStackAtSubscriptionArgs({
    required this.deploymentStackName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStackName': deploymentStackName,
    };
  }

  factory GetDeploymentStackAtSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentStackAtSubscriptionArgs(
      deploymentStackName: pulumi.Input.fromValue(map['deploymentStackName'] as String),
    );
  }
}

