// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_notification_config_streaming_config.dart';

/// Input properties used for looking up and filtering FolderNotificationConfig resources.
class FolderNotificationConfigState {
  /// This must be unique within the organization.
  final pulumi.Input<String>? configId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// Numerical ID of the parent folder.
  final pulumi.Input<String>? folder;
  /// The resource name of this notification config, in the format
  /// `folders/{{folder}}/notificationConfigs/{{config_id}}`.
  final pulumi.Input<String>? name;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[projectId]/topics/[topic]".
  final pulumi.Input<String>? pubsubTopic;
  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  final pulumi.Input<String>? serviceAccount;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<FolderNotificationConfigStreamingConfig>? streamingConfig;

  /// Creates a new [FolderNotificationConfigState].
  /// [configId] This must be unique within the organization.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [folder] Numerical ID of the parent folder.
  /// [name] The resource name of this notification config, in the format
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [serviceAccount] The service account that needs "pubsub.topics.publish" permission to
  /// [streamingConfig] The config for triggering streaming-based notifications.
  const FolderNotificationConfigState({
    this.configId,
    this.deletionPolicy,
    this.description,
    this.folder,
    this.name,
    this.pubsubTopic,
    this.serviceAccount,
    this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'folder': ?folder,
      'name': ?name,
      'pubsubTopic': ?pubsubTopic,
      'serviceAccount': ?serviceAccount,
      'streamingConfig': ?pulumi.Input.mapOptionalInputValue<FolderNotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory FolderNotificationConfigState.fromMap(Map<String, dynamic> map) {
    return FolderNotificationConfigState(
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubsubTopic: (() { final guardedValue = map['pubsubTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamingConfig: (() { final guardedValue = map['streamingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FolderNotificationConfigStreamingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
