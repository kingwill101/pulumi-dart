// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lite_subscription_delivery_config.dart';

/// Input properties used for looking up and filtering LiteSubscription resources.
class LiteSubscriptionState {
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
  final pulumi.Input<String>? topic;
  /// The zone of the pubsub lite topic.
  final pulumi.Input<String>? zone;

  /// Creates a new [LiteSubscriptionState].
  /// [deliveryConfig] The settings for this subscription's message delivery.
  /// [name] Name of the subscription.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the pubsub lite topic.
  /// [topic] A reference to a Topic resource.
  /// [zone] The zone of the pubsub lite topic.
  LiteSubscriptionState({
    this.deliveryConfig,
    this.name,
    this.project,
    this.region,
    this.topic,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryConfig': ?pulumi.Input.mapOptionalInputValue<LiteSubscriptionDeliveryConfig, Map<String, dynamic>>(deliveryConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'topic': ?topic,
      'zone': ?zone,
    };
  }

  factory LiteSubscriptionState.fromMap(Map<String, dynamic> map) {
    return LiteSubscriptionState(
      deliveryConfig: map['deliveryConfig'] == null ? null : (LiteSubscriptionDeliveryConfig.fromMap((map['deliveryConfig']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

