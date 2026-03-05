// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_config.dart';
import 'export_config.dart';

/// {@template pulumi_pubsublite_v1_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_pubsublite_v1_subscription_args_doc}
class SubscriptionArgs {
  /// The settings for this subscription's message delivery.
  final pulumi.Input<DeliveryConfig>? deliveryConfig;
  /// If present, messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a destination.
  final pulumi.Input<ExportConfig>? exportConfig;
  final pulumi.Input<String>? location;
  /// The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// If true, the newly created subscription will only receive messages published after the subscription was created. Otherwise, the entire message backlog will be received on the subscription. Defaults to false.
  final pulumi.Input<bool>? skipBacklog;
  /// Required. The ID to use for the subscription, which will become the final component of the subscription's name. This value is structured like: `my-sub-name`.
  final pulumi.Input<String> subscriptionId;
  /// The name of the topic this subscription is attached to. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  final pulumi.Input<String>? topic;

  /// Creates a new [SubscriptionArgs].
  /// [deliveryConfig] The settings for this subscription's message delivery.
  /// [exportConfig] If present, messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a destination.
  /// [location] Optional.
  /// [name] The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  /// [project] Optional.
  /// [skipBacklog] If true, the newly created subscription will only receive messages published after the subscription was created. Otherwise, the entire message backlog will be received on the subscription. Defaults to false.
  /// [subscriptionId] Required. The ID to use for the subscription, which will become the final component of the subscription's name. This value is structured like: `my-sub-name`.
  /// [topic] The name of the topic this subscription is attached to. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  SubscriptionArgs({
    this.deliveryConfig,
    this.exportConfig,
    this.location,
    this.name,
    this.project,
    this.skipBacklog,
    required this.subscriptionId,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryConfig': ?pulumi.Input.mapOptionalInputValue<DeliveryConfig, Map<String, dynamic>>(deliveryConfig, (value) => value.toMap()),
      'exportConfig': ?pulumi.Input.mapOptionalInputValue<ExportConfig, Map<String, dynamic>>(exportConfig, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'skipBacklog': ?skipBacklog,
      'subscriptionId': subscriptionId,
      'topic': ?topic,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      deliveryConfig: (() { final guardedValue = map['deliveryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeliveryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exportConfig: (() { final guardedValue = map['exportConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipBacklog: (() { final guardedValue = map['skipBacklog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

