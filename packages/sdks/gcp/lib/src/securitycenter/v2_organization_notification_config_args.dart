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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String?>? description;
  /// location Id is provided by organization. If not provided, Use global as default.
  final pulumi.Input<String?>? location;
  /// The organization whose Cloud Security Command Center the Notification
  /// Config lives in.
  final pulumi.Input<String> organization;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[projectId]/topics/[topic]".
  final pulumi.Input<String> pubsubTopic;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<V2OrganizationNotificationConfigStreamingConfig> streamingConfig;

  /// Creates a new [V2OrganizationNotificationConfigArgs].
  /// [configId] This must be unique within the organization.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [location] location Id is provided by organization. If not provided, Use global as default.
  /// [organization] The organization whose Cloud Security Command Center the Notification
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [streamingConfig] The config for triggering streaming-based notifications.
  const V2OrganizationNotificationConfigArgs({
    required this.configId,
    this.deletionPolicy,
    this.description,
    this.location,
    required this.organization,
    required this.pubsubTopic,
    required this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'location': ?location,
      'organization': organization,
      'pubsubTopic': pubsubTopic,
      'streamingConfig': pulumi.Input.mapInputValue<V2OrganizationNotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory V2OrganizationNotificationConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2OrganizationNotificationConfigArgs(
      configId: pulumi.Input.fromValue(map['configId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      pubsubTopic: pulumi.Input.fromValue(map['pubsubTopic'] as String),
      streamingConfig: pulumi.Input.fromValue(V2OrganizationNotificationConfigStreamingConfig.fromMap((map['streamingConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
