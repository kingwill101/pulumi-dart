// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_folder_notification_config_streaming_config.dart';

/// Input properties used for looking up and filtering V2FolderNotificationConfig resources.
class V2FolderNotificationConfigState {
  /// This must be unique within the organization.
  final pulumi.Input<String>? configId;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// Numerical ID of the parent folder.
  final pulumi.Input<String>? folder;
  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final pulumi.Input<String>? location;
  /// The resource name of this notification config, in the format
  /// `folders/{{folder}}/locations/{{location}}/notificationConfigs/{{config_id}}`.
  final pulumi.Input<String>? name;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String>? pubsubTopic;
  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  final pulumi.Input<String>? serviceAccount;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<V2FolderNotificationConfigStreamingConfig>? streamingConfig;

  /// Creates a new [V2FolderNotificationConfigState].
  /// [configId] This must be unique within the organization.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [folder] Numerical ID of the parent folder.
  /// [location] Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  /// [name] The resource name of this notification config, in the format
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [serviceAccount] The service account that needs "pubsub.topics.publish" permission to
  /// [streamingConfig] The config for triggering streaming-based notifications.
  V2FolderNotificationConfigState({
    pulumi.Output<String>? configId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? folder,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pubsubTopic,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<V2FolderNotificationConfigStreamingConfig>? streamingConfig,
  }) :
      configId = pulumi.Input.asOptionalInput<String>(configId),
      description = pulumi.Input.asOptionalInput<String>(description),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      pubsubTopic = pulumi.Input.asOptionalInput<String>(pubsubTopic),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      streamingConfig = pulumi.Input.asOptionalInput<V2FolderNotificationConfigStreamingConfig>(streamingConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'description': ?description,
      'folder': ?folder,
      'location': ?location,
      'name': ?name,
      'pubsubTopic': ?pubsubTopic,
      'serviceAccount': ?serviceAccount,
      'streamingConfig': ?pulumi.Input.mapOptionalInputValue<V2FolderNotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory V2FolderNotificationConfigState.fromMap(Map<String, dynamic> map) {
    return V2FolderNotificationConfigState(
      configId: map['configId'] == null ? null : pulumi.Output.create<String>(map['configId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pubsubTopic: map['pubsubTopic'] == null ? null : pulumi.Output.create<String>(map['pubsubTopic'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      streamingConfig: map['streamingConfig'] == null ? null : pulumi.Output.create<V2FolderNotificationConfigStreamingConfig>(V2FolderNotificationConfigStreamingConfig.fromMap((map['streamingConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

