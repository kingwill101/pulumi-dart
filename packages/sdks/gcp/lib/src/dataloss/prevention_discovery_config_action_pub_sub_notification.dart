// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_action_pub_sub_notification_pubsub_condition.dart';

class PreventionDiscoveryConfigActionPubSubNotification {
  /// How much data to include in the pub/sub message.
  /// Possible values are: `TABLE_PROFILE`, `RESOURCE_NAME`.
  final pulumi.Input<String>? detailOfMessage;
  /// The type of event that triggers a Pub/Sub. At most one PubSubNotification per EventType is permitted.
  /// Possible values are: `NEW_PROFILE`, `CHANGED_PROFILE`, `SCORE_INCREASED`, `ERROR_CHANGED`.
  final pulumi.Input<String>? event;
  /// Conditions for triggering pubsub
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition>? pubsubCondition;
  /// Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}.
  final pulumi.Input<String>? topic;

  /// Creates a new [PreventionDiscoveryConfigActionPubSubNotification].
  /// [detailOfMessage] How much data to include in the pub/sub message.
  /// [event] The type of event that triggers a Pub/Sub. At most one PubSubNotification per EventType is permitted.
  /// [pubsubCondition] Conditions for triggering pubsub
  /// [topic] Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}.
  PreventionDiscoveryConfigActionPubSubNotification({
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
      detailOfMessage: map['detailOfMessage'] == null ? null : (map['detailOfMessage']! as String).input(),
      event: map['event'] == null ? null : (map['event']! as String).input(),
      pubsubCondition: map['pubsubCondition'] == null ? null : (PreventionDiscoveryConfigActionPubSubNotificationPubsubCondition.fromMap((map['pubsubCondition']! as Map).cast<String, dynamic>())).input(),
      topic: map['topic'] == null ? null : (map['topic']! as String).input(),
    );
  }
}

