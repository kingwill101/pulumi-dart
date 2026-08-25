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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String?>? description;
  /// Numerical ID of the parent folder.
  final pulumi.Input<String> folder;
  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final pulumi.Input<String?>? location;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[projectId]/topics/[topic]".
  final pulumi.Input<String> pubsubTopic;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<V2FolderNotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [V2FolderNotificationConfigArgs].
  /// [configId] This must be unique within the organization.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [folder] Numerical ID of the parent folder.
  /// [location] Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [streamingConfig] The config for triggering streaming-based notifications.
  const V2FolderNotificationConfigArgs({
    required this.configId,
    this.deletionPolicy,
    this.description,
    required this.folder,
    this.location,
    required this.pubsubTopic,
    required this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'folder': folder,
      'location': ?location,
      'pubsubTopic': pubsubTopic,
      'streamingConfig': pulumi.Input.mapInputValue<V2FolderNotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory V2FolderNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2FolderNotificationConfigArgs(
      configId: pulumi.Input.fromValue(map['configId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: pulumi.Input.fromValue(map['folder'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubsubTopic: pulumi.Input.fromValue(map['pubsubTopic'] as String),
      streamingConfig: pulumi.Input.fromValue(V2FolderNotificationConfigStreamingConfig.fromMap((map['streamingConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
