// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_organization_notification_config_streaming_config.dart';

/// {@template pulumi_securitycenter_v2_organization_notification_config_v2_organization_notification_config_args_doc}
/// The set of arguments for V2OrganizationNotificationConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v2_organization_notification_config_v2_organization_notification_config_args_doc}
class V2OrganizationNotificationConfigArgs {
  /// This must be unique within the organization.
  final pulumi.Input<String> configId;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// location Id is provided by organization. If not provided, Use global as default.
  final pulumi.Input<String>? location;
  /// The organization whose Cloud Security Command Center the Notification
  /// Config lives in.
  final pulumi.Input<String> organization;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String> pubsubTopic;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<V2OrganizationNotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [V2OrganizationNotificationConfigArgs].
  /// [configId] This must be unique within the organization.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [location] location Id is provided by organization. If not provided, Use global as default.
  /// [organization] The organization whose Cloud Security Command Center the Notification
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [streamingConfig] The config for triggering streaming-based notifications.
  V2OrganizationNotificationConfigArgs({
    required pulumi.Output<String> configId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    required pulumi.Output<String> organization,
    required pulumi.Output<String> pubsubTopic,
    required pulumi.Output<V2OrganizationNotificationConfigStreamingConfig> streamingConfig,
  }) :
      configId = pulumi.Input.asInput<String>(configId),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      organization = pulumi.Input.asInput<String>(organization),
      pubsubTopic = pulumi.Input.asInput<String>(pubsubTopic),
      streamingConfig = pulumi.Input.asInput<V2OrganizationNotificationConfigStreamingConfig>(streamingConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'description': ?description,
      'location': ?location,
      'organization': organization,
      'pubsubTopic': pubsubTopic,
      'streamingConfig': pulumi.Input.mapInputValue<V2OrganizationNotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory V2OrganizationNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2OrganizationNotificationConfigArgs(
      configId: pulumi.Output.create<String>(map['configId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      pubsubTopic: pulumi.Output.create<String>(map['pubsubTopic'] as String),
      streamingConfig: pulumi.Output.create<V2OrganizationNotificationConfigStreamingConfig>(V2OrganizationNotificationConfigStreamingConfig.fromMap((map['streamingConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

