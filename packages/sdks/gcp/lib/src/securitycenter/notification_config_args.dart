// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_config_streaming_config.dart';

/// {@template pulumi_securitycenter_notification_config_notification_config_args_doc}
/// The set of arguments for NotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_notification_config_notification_config_args_doc}
class NotificationConfigArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> configId;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// The organization whose Cloud Security Command Center the Notification
  /// Config lives in.
  final pulumi.Input<String> organization;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String> pubsubTopic;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<NotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [NotificationConfigArgs].
  /// [configId] This must be unique within the organization.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [organization] The organization whose Cloud Security Command Center the Notification
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [streamingConfig] The config for triggering streaming-based notifications.
  NotificationConfigArgs({
    required this.configId,
    this.description,
    required this.organization,
    required this.pubsubTopic,
    required this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'description': ?description,
      'organization': organization,
      'pubsubTopic': pubsubTopic,
      'streamingConfig': pulumi.Input.mapInputValue<NotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory NotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return NotificationConfigArgs(
      configId: (map['configId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      organization: (map['organization'] as String).input(),
      pubsubTopic: (map['pubsubTopic'] as String).input(),
      streamingConfig: (NotificationConfigStreamingConfig.fromMap((map['streamingConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

