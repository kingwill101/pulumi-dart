// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_get_subscription_template_deployment_get_subscription_template_deployment_args_doc}
/// Arguments for getSubscriptionTemplateDeployment.
/// {@endtemplate}
/// {@macro pulumi_core_get_subscription_template_deployment_get_subscription_template_deployment_args_doc}
class GetSubscriptionTemplateDeploymentArgs {
  /// The name of this Subscription Template Deployment.
  final pulumi.Input<String> name;

  /// Creates a new [GetSubscriptionTemplateDeploymentArgs].
  /// [name] The name of this Subscription Template Deployment.
  GetSubscriptionTemplateDeploymentArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetSubscriptionTemplateDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionTemplateDeploymentArgs(
      name: (map['name'] as String).input(),
    );
  }
}

