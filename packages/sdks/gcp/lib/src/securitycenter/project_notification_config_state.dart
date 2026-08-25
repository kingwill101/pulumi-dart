// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_notification_config_streaming_config.dart';

/// Input properties used for looking up and filtering ProjectNotificationConfig resources.
class ProjectNotificationConfigState {
  /// This must be unique within the organization.
  final pulumi.Input<String?>? configId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String?>? description;
  /// The resource name of this notification config, in the format
  /// `projects/{{projectId}}/notificationConfigs/{{config_id}}`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[projectId]/topics/[topic]".
  final pulumi.Input<String?>? pubsubTopic;
  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  final pulumi.Input<String?>? serviceAccount;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<ProjectNotificationConfigStreamingConfig?>? streamingConfig;

  /// Creates a new [ProjectNotificationConfigState].
  /// [configId] This must be unique within the organization.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [name] The resource name of this notification config, in the format
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [serviceAccount] The service account that needs "pubsub.topics.publish" permission to
  /// [streamingConfig] The config for triggering streaming-based notifications.
  const ProjectNotificationConfigState({
    this.configId,
    this.deletionPolicy,
    this.description,
    this.name,
    this.project,
    this.pubsubTopic,
    this.serviceAccount,
    this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'deletionPolicy': ?deletionPolicy,
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
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubsubTopic: (() { final guardedValue = map['pubsubTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamingConfig: (() { final guardedValue = map['streamingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectNotificationConfigStreamingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
