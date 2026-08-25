// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action_pub_sub_notification_pubsub_condition.dart';

class PreventionDiscoveryConfigActionPubSubNotification {
  /// How much data to include in the pub/sub message.
  /// Possible values are: `TABLE_PROFILE`, `RESOURCE_NAME`.
  final pulumi.Input<String?>? detailOfMessage;
  /// The type of event that triggers a Pub/Sub. At most one PubSubNotification per EventType is permitted.
  /// Possible values are: `NEW_PROFILE`, `CHANGED_PROFILE`, `SCORE_INCREASED`, `ERROR_CHANGED`.
  final pulumi.Input<String?>? event;
  /// Conditions for triggering pubsub
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition?>? pubsubCondition;
  /// Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}.
  final pulumi.Input<String?>? topic;

  /// Creates a new [PreventionDiscoveryConfigActionPubSubNotification].
  /// [detailOfMessage] How much data to include in the pub/sub message.
  /// [event] The type of event that triggers a Pub/Sub. At most one PubSubNotification per EventType is permitted.
  /// [pubsubCondition] Conditions for triggering pubsub
  /// [topic] Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}.
  const PreventionDiscoveryConfigActionPubSubNotification({
    this.detailOfMessage,
    this.event,
    this.pubsubCondition,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailOfMessage': ?detailOfMessage,
      'event': ?event,
      'pubsubCondition': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition, Map<String, dynamic>>(pubsubCondition, (value) => value.toMap()),
      'topic': ?topic,
    };
  }

  factory PreventionDiscoveryConfigActionPubSubNotification.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionPubSubNotification(
      detailOfMessage: (() { final guardedValue = map['detailOfMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      event: (() { final guardedValue = map['event']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubsubCondition: (() { final guardedValue = map['pubsubCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
