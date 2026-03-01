// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_notification_config_streaming_config.dart';

/// Input properties used for looking up and filtering ProjectNotificationConfig resources.
class ProjectNotificationConfigState {
  /// This must be unique within the organization.
  final pulumi.Input<String>? configId;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// The resource name of this notification config, in the format
  /// `projects/{{projectId}}/notificationConfigs/{{config_id}}`.
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
  final pulumi.Input<ProjectNotificationConfigStreamingConfig>? streamingConfig;

  /// Creates a new [ProjectNotificationConfigState].
  /// [configId] This must be unique within the organization.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [name] The resource name of this notification config, in the format
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [serviceAccount] The service account that needs "pubsub.topics.publish" permission to
  /// [streamingConfig] The config for triggering streaming-based notifications.
  ProjectNotificationConfigState({
    pulumi.Output<String>? configId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? pubsubTopic,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<ProjectNotificationConfigStreamingConfig>? streamingConfig,
  }) :
      configId = pulumi.Input.asOptionalInput<String>(configId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pubsubTopic = pulumi.Input.asOptionalInput<String>(pubsubTopic),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      streamingConfig = pulumi.Input.asOptionalInput<ProjectNotificationConfigStreamingConfig>(streamingConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'pubsubTopic': ?pubsubTopic,
      'serviceAccount': ?serviceAccount,
      'streamingConfig': ?pulumi.Input.mapOptionalInputValue<ProjectNotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory ProjectNotificationConfigState.fromMap(Map<String, dynamic> map) {
    return ProjectNotificationConfigState(
      configId: map['configId'] == null ? null : pulumi.Output.create<String>(map['configId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pubsubTopic: map['pubsubTopic'] == null ? null : pulumi.Output.create<String>(map['pubsubTopic'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      streamingConfig: map['streamingConfig'] == null ? null : pulumi.Output.create<ProjectNotificationConfigStreamingConfig>(ProjectNotificationConfigStreamingConfig.fromMap((map['streamingConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

