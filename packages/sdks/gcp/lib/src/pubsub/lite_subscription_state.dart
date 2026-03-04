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
      'deliveryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            LiteSubscriptionDeliveryConfig,
            Map<String, dynamic>
          >(deliveryConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'topic': ?topic,
      'zone': ?zone,
    };
  }

  factory LiteSubscriptionState.fromMap(Map<String, dynamic> map) {
    return LiteSubscriptionState(
      deliveryConfig: (() {
        final guardedValue = map['deliveryConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LiteSubscriptionDeliveryConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      topic: (() {
        final guardedValue = map['topic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
