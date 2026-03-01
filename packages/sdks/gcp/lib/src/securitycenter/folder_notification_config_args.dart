// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_notification_config_streaming_config.dart';

/// {@template pulumi_securitycenter_folder_notification_config_folder_notification_config_args_doc}
/// The set of arguments for FolderNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_folder_notification_config_folder_notification_config_args_doc}
class FolderNotificationConfigArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> configId;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// Numerical ID of the parent folder.
  final pulumi.Input<String> folder;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String> pubsubTopic;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<FolderNotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [FolderNotificationConfigArgs].
  /// [configId] This must be unique within the organization.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [folder] Numerical ID of the parent folder.
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [streamingConfig] The config for triggering streaming-based notifications.
  FolderNotificationConfigArgs({
    required pulumi.Output<String> configId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> folder,
    required pulumi.Output<String> pubsubTopic,
    required pulumi.Output<FolderNotificationConfigStreamingConfig> streamingConfig,
  }) :
      configId = pulumi.Input.asInput<String>(configId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asInput<String>(folder),
      pubsubTopic = pulumi.Input.asInput<String>(pubsubTopic),
      streamingConfig = pulumi.Input.asInput<FolderNotificationConfigStreamingConfig>(streamingConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'description': ?description,
      'folder': folder,
      'pubsubTopic': pubsubTopic,
      'streamingConfig': pulumi.Input.mapInputValue<FolderNotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory FolderNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return FolderNotificationConfigArgs(
      configId: pulumi.Output.create<String>(map['configId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folder: pulumi.Output.create<String>(map['folder'] as String),
      pubsubTopic: pulumi.Output.create<String>(map['pubsubTopic'] as String),
      streamingConfig: pulumi.Output.create<FolderNotificationConfigStreamingConfig>(FolderNotificationConfigStreamingConfig.fromMap((map['streamingConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

