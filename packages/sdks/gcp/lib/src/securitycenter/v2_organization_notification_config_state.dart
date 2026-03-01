// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_organization_notification_config_streaming_config.dart';

/// Input properties used for looking up and filtering V2OrganizationNotificationConfig resources.
class V2OrganizationNotificationConfigState {
  /// This must be unique within the organization.
  final pulumi.Input<String>? configId;
  /// The description of the notification config (max of 1024 characters).
  final pulumi.Input<String>? description;
  /// location Id is provided by organization. If not provided, Use global as default.
  final pulumi.Input<String>? location;
  /// The resource name of this notification config, in the format
  /// `organizations/{{organization}}/notificationConfigs/{{config_id}}`.
  final pulumi.Input<String>? name;
  /// The organization whose Cloud Security Command Center the Notification
  /// Config lives in.
  final pulumi.Input<String>? organization;
  /// The Pub/Sub topic to send notifications to. Its format is
  /// "projects/[project_id]/topics/[topic]".
  final pulumi.Input<String>? pubsubTopic;
  /// The service account that needs "pubsub.topics.publish" permission to
  /// publish to the Pub/Sub topic.
  final pulumi.Input<String>? serviceAccount;
  /// The config for triggering streaming-based notifications.
  /// Structure is documented below.
  final pulumi.Input<V2OrganizationNotificationConfigStreamingConfig>? streamingConfig;

  /// Creates a new [V2OrganizationNotificationConfigState].
  /// [configId] This must be unique within the organization.
  /// [description] The description of the notification config (max of 1024 characters).
  /// [location] location Id is provided by organization. If not provided, Use global as default.
  /// [name] The resource name of this notification config, in the format
  /// [organization] The organization whose Cloud Security Command Center the Notification
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is
  /// [serviceAccount] The service account that needs "pubsub.topics.publish" permission to
  /// [streamingConfig] The config for triggering streaming-based notifications.
  V2OrganizationNotificationConfigState({
    pulumi.Output<String>? configId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organization,
    pulumi.Output<String>? pubsubTopic,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<V2OrganizationNotificationConfigStreamingConfig>? streamingConfig,
  }) :
      configId = pulumi.Input.asOptionalInput<String>(configId),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organization = pulumi.Input.asOptionalInput<String>(organization),
      pubsubTopic = pulumi.Input.asOptionalInput<String>(pubsubTopic),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      streamingConfig = pulumi.Input.asOptionalInput<V2OrganizationNotificationConfigStreamingConfig>(streamingConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'organization': ?organization,
      'pubsubTopic': ?pubsubTopic,
      'serviceAccount': ?serviceAccount,
      'streamingConfig': ?pulumi.Input.mapOptionalInputValue<V2OrganizationNotificationConfigStreamingConfig, Map<String, dynamic>>(streamingConfig, (value) => value.toMap()),
    };
  }

  factory V2OrganizationNotificationConfigState.fromMap(Map<String, dynamic> map) {
    return V2OrganizationNotificationConfigState(
      configId: map['configId'] == null ? null : pulumi.Output.create<String>(map['configId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organization: map['organization'] == null ? null : pulumi.Output.create<String>(map['organization'] as String),
      pubsubTopic: map['pubsubTopic'] == null ? null : pulumi.Output.create<String>(map['pubsubTopic'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      streamingConfig: map['streamingConfig'] == null ? null : pulumi.Output.create<V2OrganizationNotificationConfigStreamingConfig>(V2OrganizationNotificationConfigStreamingConfig.fromMap((map['streamingConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

