// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lite_subscription_delivery_config.dart';

/// {@template pulumi_pubsub_lite_subscription_lite_subscription_args_doc}
/// The set of arguments for LiteSubscription.
/// {@endtemplate}
/// {@macro pulumi_pubsub_lite_subscription_lite_subscription_args_doc}
class LiteSubscriptionArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The settings for this subscription's message delivery.
  /// Structure is documented below.
  final pulumi.Input<LiteSubscriptionDeliveryConfig>? deliveryConfig;
  /// Name of the subscription.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the pubsub lite topic.
  final pulumi.Input<String>? region;
  /// A reference to a Topic resource.
  final pulumi.Input<String> topic;
  /// The zone of the pubsub lite topic.
  final pulumi.Input<String>? zone;

  /// Creates a new [LiteSubscriptionArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deliveryConfig] The settings for this subscription's message delivery.
  /// [name] Name of the subscription.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the pubsub lite topic.
  /// [topic] A reference to a Topic resource.
  /// [zone] The zone of the pubsub lite topic.
  const LiteSubscriptionArgs({
    this.deletionPolicy,
    this.deliveryConfig,
    this.name,
    this.project,
    this.region,
    required this.topic,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'deliveryConfig': ?pulumi.Input.mapOptionalInputValue<LiteSubscriptionDeliveryConfig, Map<String, dynamic>>(deliveryConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'topic': topic,
      'zone': ?zone,
    };
  }

  factory LiteSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return LiteSubscriptionArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deliveryConfig: (() { final guardedValue = map['deliveryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LiteSubscriptionDeliveryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topic: pulumi.Input.fromValue(map['topic'] as String),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
