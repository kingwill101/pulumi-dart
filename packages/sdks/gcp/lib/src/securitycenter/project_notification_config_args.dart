// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_notification_config_streaming_config.dart';

/// {@template pulumi_securitycenter_project_notification_config_project_notification_config_args_doc}
/// The set of arguments for ProjectNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_project_notification_config_project_notification_config_args_doc}
class ProjectNotificationConfigArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> configId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[projectId]/topics/[topic]".
  final pulumi.Input<String> pubsubTopic;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<ProjectNotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [ProjectNotificationConfigArgs].
  /// [configId] This must be unique within the organization.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [project] The ID of the project in which the resource belongs.
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [streamingConfig] The config for triggering streaming-based notifications.
  const ProjectNotificationConfigArgs({
    required this.configId,
    this.deletionPolicy,
    this.description,
    this.project,
    required this.pubsubTopic,
    required this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'project': ?project,
      'pubsubTopic': pubsubTopic,
      'streamingConfig': pulumi.Input.mapInputValue<ProjectNotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory ProjectNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return ProjectNotificationConfigArgs(
      configId: pulumi.Input.fromValue(map['configId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubsubTopic: pulumi.Input.fromValue(map['pubsubTopic'] as String),
      streamingConfig: pulumi.Input.fromValue(ProjectNotificationConfigStreamingConfig.fromMap((map['streamingConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
