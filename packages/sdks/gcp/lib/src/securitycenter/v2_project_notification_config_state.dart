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
  final pulumi.Input<V2ProjectNotificationConfigStreamingConfig>? streamingConfig;

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
    pulumi.Output<String>? configId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? pubsubTopic,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<V2ProjectNotificationConfigStreamingConfig>? streamingConfig,
  }) :
      configId = pulumi.Input.asOptionalInput<String>(configId),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pubsubTopic = pulumi.Input.asOptionalInput<String>(pubsubTopic),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      streamingConfig = pulumi.Input.asOptionalInput<V2ProjectNotificationConfigStreamingConfig>(streamingConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pubsubTopic': ?pubsubTopic,
      'serviceAccount': ?serviceAccount,
      'streamingConfig': ?pulumi.Input.mapOptionalInputValue<V2ProjectNotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory V2ProjectNotificationConfigState.fromMap(Map<String, dynamic> map) {
    return V2ProjectNotificationConfigState(
      configId: map['configId'] == null ? null : pulumi.Output.create<String>(map['configId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pubsubTopic: map['pubsubTopic'] == null ? null : pulumi.Output.create<String>(map['pubsubTopic'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      streamingConfig: map['streamingConfig'] == null ? null : pulumi.Output.create<V2ProjectNotificationConfigStreamingConfig>(V2ProjectNotificationConfigStreamingConfig.fromMap((map['streamingConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

