// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_project_notification_config_streaming_config.dart';

/// {@template pulumi_securitycenter_v2_project_notification_config_v2_project_notification_config_args_doc}
/// The set of arguments for V2ProjectNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v2_project_notification_config_v2_project_notification_config_args_doc}
class V2ProjectNotificationConfigArgs {
  /// This must be unique within the project.
  final pulumi.Input<String> configId;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// Location ID for the parent project. Defaults to `global` if location is not provided.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String>? pubsubTopic;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<V2ProjectNotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [V2ProjectNotificationConfigArgs].
  /// [configId] This must be unique within the project.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [location] Location ID for the parent project. Defaults to `global` if location is not provided.
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [streamingConfig] The config for triggering streaming-based notifications.
  const V2ProjectNotificationConfigArgs({
    required this.configId,
    this.description,
    this.location,
    this.project,
    this.pubsubTopic,
    required this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'description': ?description,
      'location': ?location,
      'project': ?project,
      'pubsubTopic': ?pubsubTopic,
      'streamingConfig': pulumi.Input.mapInputValue<V2ProjectNotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory V2ProjectNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2ProjectNotificationConfigArgs(
      configId: pulumi.Input.fromValue(map['configId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubsubTopic: (() { final guardedValue = map['pubsubTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamingConfig: pulumi.Input.fromValue(V2ProjectNotificationConfigStreamingConfig.fromMap((map['streamingConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

