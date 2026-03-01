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
    required pulumi.Output<String> configId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> organization,
    required pulumi.Output<String> pubsubTopic,
    required pulumi.Output<NotificationConfigStreamingConfig> streamingConfig,
  }) :
      configId = pulumi.Input.asInput<String>(configId),
      description = pulumi.Input.asOptionalInput<String>(description),
      organization = pulumi.Input.asInput<String>(organization),
      pubsubTopic = pulumi.Input.asInput<String>(pubsubTopic),
      streamingConfig = pulumi.Input.asInput<NotificationConfigStreamingConfig>(streamingConfig);

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
      configId: pulumi.Output.create<String>(map['configId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      pubsubTopic: pulumi.Output.create<String>(map['pubsubTopic'] as String),
      streamingConfig: pulumi.Output.create<NotificationConfigStreamingConfig>(NotificationConfigStreamingConfig.fromMap((map['streamingConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

