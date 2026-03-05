import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_notification_config_args.dart';
import 'streaming_config_response.dart';

/// Creates a notification config.
class OrganizationNotificationConfig extends pulumi.CustomResource {
  /// Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters and contain alphanumeric characters, underscores, or hyphens only.
  late final pulumi.Output<String> configId;
  /// The description of the notification config (max of 1024 characters).
  late final pulumi.Output<String> description;
  /// The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/notificationConfigs/notify_public_bucket", "folders/{folder_id}/notificationConfigs/notify_public_bucket", or "projects/{project_id}/notificationConfigs/notify_public_bucket".
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  /// The Pub/Sub topic to send notifications to. Its format is "projects/[project_id]/topics/[topic]".
  late final pulumi.Output<String> pubsubTopic;
  /// The service account that needs "pubsub.topics.publish" permission to publish to the Pub/Sub topic.
  late final pulumi.Output<String> serviceAccount;
  /// The config for triggering streaming-based notifications.
  late final pulumi.Output<StreamingConfigResponse> streamingConfig;

  /// Creates a new [OrganizationNotificationConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationNotificationConfig]. {@macro pulumi_securitycenter_v1_organization_notification_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationNotificationConfig(
    String name, {
    OrganizationNotificationConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:securitycenter/v1:OrganizationNotificationConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<String>('configId');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    pubsubTopic = registerOutput<String>('pubsubTopic');
    serviceAccount = registerOutput<String>('serviceAccount');
    streamingConfig = registerOutput<StreamingConfigResponse>('streamingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
