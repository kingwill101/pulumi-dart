// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AllUpdatesRule defines notifications that are sent based on budget spend and thresholds.
class GoogleCloudBillingBudgetsV1beta1AllUpdatesRule {
  /// Optional. When set to true, disables default notifications sent when a threshold is exceeded. Default notifications are sent to those with Billing Account Administrator and Billing Account User IAM roles for the target account.
  final pulumi.Input<bool>? disableDefaultIamRecipients;
  /// Optional. When set to true, and when the budget has a single project configured, notifications will be sent to project level recipients of that project. This field will be ignored if the budget has multiple or no project configured. Currently, project level recipients are the users with `Owner` role on a cloud project.
  final pulumi.Input<bool>? enableProjectLevelRecipients;
  /// Optional. Targets to send notifications to when a threshold is exceeded. This is in addition to default recipients who have billing account IAM roles. The value is the full REST resource name of a monitoring notification channel with the form `projects/{project_id}/notificationChannels/{channel_id}`. A maximum of 5 channels are allowed. See https://cloud.google.com/billing/docs/how-to/budgets-notification-recipients for more details.
  final pulumi.Input<List<String>>? monitoringNotificationChannels;
  /// Optional. The name of the Pub/Sub topic where budget related messages will be published, in the form `projects/{project_id}/topics/{topic_id}`. Updates are sent at regular intervals to the topic. The topic needs to be created before the budget is created; see https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications for more details. Caller is expected to have `pubsub.topics.setIamPolicy` permission on the topic when it's set for a budget, otherwise, the API call will fail with PERMISSION_DENIED. See https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#permissions_required_for_this_task for more details on Pub/Sub roles and permissions.
  final pulumi.Input<String>? pubsubTopic;
  /// Optional. Required when AllUpdatesRule.pubsub_topic is set. The schema version of the notification sent to AllUpdatesRule.pubsub_topic. Only "1.0" is accepted. It represents the JSON schema as defined in https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification_format.
  final pulumi.Input<String>? schemaVersion;

  /// Creates a new [GoogleCloudBillingBudgetsV1beta1AllUpdatesRule].
  /// [disableDefaultIamRecipients] Optional. When set to true, disables default notifications sent when a threshold is exceeded. Default notifications are sent to those with Billing Account Administrator and Billing Account User IAM roles for the target account.
  /// [enableProjectLevelRecipients] Optional. When set to true, and when the budget has a single project configured, notifications will be sent to project level recipients of that project. This field will be ignored if the budget has multiple or no project configured. Currently, project level recipients are the users with `Owner` role on a cloud project.
  /// [monitoringNotificationChannels] Optional. Targets to send notifications to when a threshold is exceeded. This is in addition to default recipients who have billing account IAM roles. The value is the full REST resource name of a monitoring notification channel with the form `projects/{project_id}/notificationChannels/{channel_id}`. A maximum of 5 channels are allowed. See https://cloud.google.com/billing/docs/how-to/budgets-notification-recipients for more details.
  /// [pubsubTopic] Optional. The name of the Pub/Sub topic where budget related messages will be published, in the form `projects/{project_id}/topics/{topic_id}`. Updates are sent at regular intervals to the topic. The topic needs to be created before the budget is created; see https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications for more details. Caller is expected to have `pubsub.topics.setIamPolicy` permission on the topic when it's set for a budget, otherwise, the API call will fail with PERMISSION_DENIED. See https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#permissions_required_for_this_task for more details on Pub/Sub roles and permissions.
  /// [schemaVersion] Optional. Required when AllUpdatesRule.pubsub_topic is set. The schema version of the notification sent to AllUpdatesRule.pubsub_topic. Only "1.0" is accepted. It represents the JSON schema as defined in https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification_format.
  const GoogleCloudBillingBudgetsV1beta1AllUpdatesRule({
    this.disableDefaultIamRecipients,
    this.enableProjectLevelRecipients,
    this.monitoringNotificationChannels,
    this.pubsubTopic,
    this.schemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableDefaultIamRecipients': ?disableDefaultIamRecipients,
      'enableProjectLevelRecipients': ?enableProjectLevelRecipients,
      'monitoringNotificationChannels': ?monitoringNotificationChannels,
      'pubsubTopic': ?pubsubTopic,
      'schemaVersion': ?schemaVersion,
    };
  }

  factory GoogleCloudBillingBudgetsV1beta1AllUpdatesRule.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBillingBudgetsV1beta1AllUpdatesRule(
      disableDefaultIamRecipients: (() { final guardedValue = map['disableDefaultIamRecipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableProjectLevelRecipients: (() { final guardedValue = map['enableProjectLevelRecipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      monitoringNotificationChannels: (() { final guardedValue = map['monitoringNotificationChannels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pubsubTopic: (() { final guardedValue = map['pubsubTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaVersion: (() { final guardedValue = map['schemaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
