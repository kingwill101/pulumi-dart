// ignore_for_file: unused_element, unnecessary_cast

import 'streaming_config_response.dart';

/// Result data returned by getNotificationConfig.
class GetNotificationConfigResult {
  /// The description of the notification config (max of 1024 characters).
  final String? description;
  /// The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/notificationConfigs/notify_public_bucket", "folders/{folder_id}/notificationConfigs/notify_public_bucket", or "projects/{project_id}/notificationConfigs/notify_public_bucket".
  final String? name;
  /// The Pub/Sub topic to send notifications to. Its format is "projects/[project_id]/topics/[topic]".
  final String? pubsubTopic;
  /// The service account that needs "pubsub.topics.publish" permission to publish to the Pub/Sub topic.
  final String? serviceAccount;
  /// The config for triggering streaming-based notifications.
  final StreamingConfigResponse? streamingConfig;

  /// Creates a new [GetNotificationConfigResult].
  /// [description] The description of the notification config (max of 1024 characters).
  /// [name] The relative resource name of this notification config. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/notificationConfigs/notify_public_bucket", "folders/{folder_id}/notificationConfigs/notify_public_bucket", or "projects/{project_id}/notificationConfigs/notify_public_bucket".
  /// [pubsubTopic] The Pub/Sub topic to send notifications to. Its format is "projects/[project_id]/topics/[topic]".
  /// [serviceAccount] The service account that needs "pubsub.topics.publish" permission to publish to the Pub/Sub topic.
  /// [streamingConfig] The config for triggering streaming-based notifications.
  const GetNotificationConfigResult({
    this.description,
    this.name,
    this.pubsubTopic,
    this.serviceAccount,
    this.streamingConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'pubsubTopic': ?pubsubTopic,
      'serviceAccount': ?serviceAccount,
      'streamingConfig': ?streamingConfig?.toMap(),
    };
  }

  factory GetNotificationConfigResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationConfigResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pubsubTopic: (() { final guardedValue = map['pubsubTopic']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      streamingConfig: (() { final guardedValue = map['streamingConfig']; if (guardedValue == null) return null; return StreamingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
