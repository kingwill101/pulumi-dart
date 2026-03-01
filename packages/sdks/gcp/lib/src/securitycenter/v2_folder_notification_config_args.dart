// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_folder_notification_config_streaming_config.dart';

/// {@template pulumi_securitycenter_v2_folder_notification_config_v2_folder_notification_config_args_doc}
/// The set of arguments for V2FolderNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v2_folder_notification_config_v2_folder_notification_config_args_doc}
class V2FolderNotificationConfigArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> configId;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// Numerical ID of the parent folder.
  final pulumi.Input<String> folder;
  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final pulumi.Input<String>? location;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String> pubsubTopic;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<V2FolderNotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [V2FolderNotificationConfigArgs].
  /// [configId] This must be unique within the organization.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [folder] Numerical ID of the parent folder.
  /// [location] Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [streamingConfig] The config for triggering streaming-based notifications.
  V2FolderNotificationConfigArgs({
    required pulumi.Output<String> configId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> folder,
    pulumi.Output<String>? location,
    required pulumi.Output<String> pubsubTopic,
    required pulumi.Output<V2FolderNotificationConfigStreamingConfig> streamingConfig,
  }) :
      configId = pulumi.Input.asInput<String>(configId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asInput<String>(folder),
      location = pulumi.Input.asOptionalInput<String>(location),
      pubsubTopic = pulumi.Input.asInput<String>(pubsubTopic),
      streamingConfig = pulumi.Input.asInput<V2FolderNotificationConfigStreamingConfig>(streamingConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'description': ?description,
      'folder': folder,
      'location': ?location,
      'pubsubTopic': pubsubTopic,
      'streamingConfig': pulumi.Input.mapInputValue<V2FolderNotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory V2FolderNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2FolderNotificationConfigArgs(
      configId: pulumi.Output.create<String>(map['configId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folder: pulumi.Output.create<String>(map['folder'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      pubsubTopic: pulumi.Output.create<String>(map['pubsubTopic'] as String),
      streamingConfig: pulumi.Output.create<V2FolderNotificationConfigStreamingConfig>(V2FolderNotificationConfigStreamingConfig.fromMap((map['streamingConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

