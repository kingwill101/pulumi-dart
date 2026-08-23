// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsupport_support_event_subscription_support_event_subscription_args_doc}
/// The set of arguments for SupportEventSubscription.
/// {@endtemplate}
/// {@macro pulumi_cloudsupport_support_event_subscription_support_event_subscription_args_doc}
class SupportEventSubscriptionArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The organization ID for the support event subscription.
  final pulumi.Input<String> organization;
  /// The name of the Pub/Sub topic to publish notifications to.
  /// Format: projects/{project}/topics/{topic}
  final pulumi.Input<String> pubSubTopic;

  /// Creates a new [SupportEventSubscriptionArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [organization] The organization ID for the support event subscription.
  /// [pubSubTopic] The name of the Pub/Sub topic to publish notifications to.
  const SupportEventSubscriptionArgs({
    this.deletionPolicy,
    required this.organization,
    required this.pubSubTopic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'organization': organization,
      'pubSubTopic': pubSubTopic,
    };
  }

  factory SupportEventSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SupportEventSubscriptionArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      pubSubTopic: pulumi.Input.fromValue(map['pubSubTopic'] as String),
    );
  }
}
