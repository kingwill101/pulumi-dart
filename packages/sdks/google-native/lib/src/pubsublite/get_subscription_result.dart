// ignore_for_file: unused_element, unnecessary_cast

import 'delivery_config_response.dart';
import 'export_config_response.dart';

/// Result data returned by getSubscription.
class GetSubscriptionResult {
  /// The settings for this subscription's message delivery.
  final DeliveryConfigResponse? deliveryConfig;
  /// If present, messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a destination.
  final ExportConfigResponse? exportConfig;
  /// The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  final String? name;
  /// The name of the topic this subscription is attached to. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  final String? topic;

  /// Creates a new [GetSubscriptionResult].
  /// [deliveryConfig] The settings for this subscription's message delivery.
  /// [exportConfig] If present, messages are automatically written from the Pub/Sub Lite topic associated with this subscription to a destination.
  /// [name] The name of the subscription. Structured like: projects/{project_number}/locations/{location}/subscriptions/{subscription_id}
  /// [topic] The name of the topic this subscription is attached to. Structured like: projects/{project_number}/locations/{location}/topics/{topic_id}
  const GetSubscriptionResult({
    this.deliveryConfig,
    this.exportConfig,
    this.name,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryConfig': ?deliveryConfig?.toMap(),
      'exportConfig': ?exportConfig?.toMap(),
      'name': ?name,
      'topic': ?topic,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      deliveryConfig: (() { final guardedValue = map['deliveryConfig']; if (guardedValue == null) return null; return DeliveryConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      exportConfig: (() { final guardedValue = map['exportConfig']; if (guardedValue == null) return null; return ExportConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
