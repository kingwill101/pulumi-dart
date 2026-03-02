// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_config_streaming_config.dart';

/// Input properties used for looking up and filtering NotificationConfig resources.
class NotificationConfigState {
  /// This must be unique within the organization.
  final pulumi.Input<String>? configId;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// The resource name of this notification config, in the format
  /// `organizations/{{organization}}/notificationConfigs/{{config_id}}`.
  final pulumi.Input<String>? name;
  /// The organization whose Cloud Security Command Center the Notification
  /// Config lives in.
  final pulumi.Input<String>? organization;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String>? pubsubTopic;
  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  final pulumi.Input<String>? serviceAccount;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<NotificationConfigStreamingConfig>? streamingConfig;

  /// Creates a new [NotificationConfigState].
  /// [configId] This must be unique within the organization.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [name] The resource name of this notification config, in the format
  /// [organization] The organization whose Cloud Security Command Center the Notification
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [serviceAccount] The service account that needs "pubsub.topics.publish" permission to
  /// [streamingConfig] The config for triggering streaming-based notifications.
  NotificationConfigState({
    this.configId,
    this.description,
    this.name,
    this.organization,
    this.pubsubTopic,
    this.serviceAccount,
    this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'description': ?description,
      'name': ?name,
      'organization': ?organization,
      'pubsubTopic': ?pubsubTopic,
      'serviceAccount': ?serviceAccount,
      'streamingConfig': ?pulumi.Input.mapOptionalInputValue<NotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory NotificationConfigState.fromMap(Map<String, dynamic> map) {
    return NotificationConfigState(
      configId: map['configId'] == null ? null : (map['configId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      organization: map['organization'] == null ? null : (map['organization']! as String).input(),
      pubsubTopic: map['pubsubTopic'] == null ? null : (map['pubsubTopic']! as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      streamingConfig: map['streamingConfig'] == null ? null : (NotificationConfigStreamingConfig.fromMap((map['streamingConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

