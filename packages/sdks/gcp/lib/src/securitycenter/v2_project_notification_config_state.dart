// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_project_notification_config_streaming_config.dart';

/// Input properties used for looking up and filtering V2ProjectNotificationConfig resources.
class V2ProjectNotificationConfigState {
  /// This must be unique within the project.
  final pulumi.Input<String>? configId;

  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;

  /// Location ID for the parent project. Defaults to `global` if location is not provided.
  final pulumi.Input<String>? location;

  /// The resource name of this notification config, in the format
  /// `projects/{{projectId}}/locations/{{location}}/notificationConfigs/{{config_id}}`.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String>? pubsubTopic;

  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  final pulumi.Input<String>? serviceAccount;

  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<V2ProjectNotificationConfigStreamingConfig>?
  streamingConfig;

  /// Creates a new [V2ProjectNotificationConfigState].
  /// [configId] This must be unique within the project.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [location] Location ID for the parent project. Defaults to `global` if location is not provided.
  /// [name] The resource name of this notification config, in the format
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [serviceAccount] The service account that needs "pubsub.topics.publish" permission to
  /// [streamingConfig] The config for triggering streaming-based notifications.
  V2ProjectNotificationConfigState({
    this.configId,
    this.description,
    this.location,
    this.name,
    this.project,
    this.pubsubTopic,
    this.serviceAccount,
    this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pubsubTopic': ?pubsubTopic,
      'serviceAccount': ?serviceAccount,
      'streamingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            V2ProjectNotificationConfigStreamingConfig,
            Map<String, dynamic>
          >(streamingConfig, (value) => value.toMap()),
    };
  }

  factory V2ProjectNotificationConfigState.fromMap(Map<String, dynamic> map) {
    return V2ProjectNotificationConfigState(
      configId: (() {
        final guardedValue = map['configId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pubsubTopic: (() {
        final guardedValue = map['pubsubTopic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      streamingConfig: (() {
        final guardedValue = map['streamingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2ProjectNotificationConfigStreamingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
