// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetAllUpdatesRule {
  /// Boolean. When set to true, disables default notifications sent
  /// when a threshold is exceeded. Default recipients are
  /// those with Billing Account Administrators and Billing
  /// Account Users IAM roles for the target account.
  final pulumi.Input<bool>? disableDefaultIamRecipients;
  /// When set to true, and when the budget has a single project configured,
  /// notifications will be sent to project level recipients of that project.
  /// This field will be ignored if the budget has multiple or no project configured.
  /// Currently, project level recipients are the users with Owner role on a cloud project.
  final pulumi.Input<bool>? enableProjectLevelRecipients;
  /// The full resource name of a monitoring notification
  /// channel in the form
  /// projects/{project_id}/notificationChannels/{channel_id}.
  /// A maximum of 5 channels are allowed.
  final pulumi.Input<List<String>>? monitoringNotificationChannels;
  /// The name of the Cloud Pub/Sub topic where budget related
  /// messages will be published, in the form
  /// projects/{project_id}/topics/{topic_id}. Updates are sent
  /// at regular intervals to the topic.
  final pulumi.Input<String>? pubsubTopic;
  /// The schema version of the notification. Only "1.0" is
  /// accepted. It represents the JSON schema as defined in
  /// https://cloud.google.com/billing/docs/how-to/budgets#notification_format.
  final pulumi.Input<String>? schemaVersion;

  /// Creates a new [BudgetAllUpdatesRule].
  /// [disableDefaultIamRecipients] Boolean. When set to true, disables default notifications sent
  /// [enableProjectLevelRecipients] When set to true, and when the budget has a single project configured,
  /// [monitoringNotificationChannels] The full resource name of a monitoring notification
  /// [pubsubTopic] The name of the Cloud Pub/Sub topic where budget related
  /// [schemaVersion] The schema version of the notification. Only "1.0" is
  BudgetAllUpdatesRule({
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

  factory BudgetAllUpdatesRule.fromMap(Map<String, dynamic> map) {
    return BudgetAllUpdatesRule(
      disableDefaultIamRecipients: map['disableDefaultIamRecipients'] == null ? null : (map['disableDefaultIamRecipients'] as bool).input(),
      enableProjectLevelRecipients: map['enableProjectLevelRecipients'] == null ? null : (map['enableProjectLevelRecipients'] as bool).input(),
      monitoringNotificationChannels: map['monitoringNotificationChannels'] == null ? null : ((map['monitoringNotificationChannels'] as List).cast<String>()).input(),
      pubsubTopic: map['pubsubTopic'] == null ? null : (map['pubsubTopic'] as String).input(),
      schemaVersion: map['schemaVersion'] == null ? null : (map['schemaVersion'] as String).input(),
    );
  }
}

