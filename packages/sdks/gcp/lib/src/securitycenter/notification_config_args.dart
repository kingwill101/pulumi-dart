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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// The organization whose Cloud Security Command Center the Notification
  /// Config lives in.
  final pulumi.Input<String> organization;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[projectId]/topics/[topic]".
  final pulumi.Input<String> pubsubTopic;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<NotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [NotificationConfigArgs].
  /// [configId] This must be unique within the organization.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [organization] The organization whose Cloud Security Command Center the Notification
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [streamingConfig] The config for triggering streaming-based notifications.
  const NotificationConfigArgs({
    required this.configId,
    this.deletionPolicy,
    this.description,
    required this.organization,
    required this.pubsubTopic,
    required this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'organization': organization,
      'pubsubTopic': pubsubTopic,
      'streamingConfig': pulumi.Input.mapInputValue<NotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory NotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return NotificationConfigArgs(
      configId: pulumi.Input.fromValue(map['configId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      pubsubTopic: pulumi.Input.fromValue(map['pubsubTopic'] as String),
      streamingConfig: pulumi.Input.fromValue(NotificationConfigStreamingConfig.fromMap((map['streamingConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
