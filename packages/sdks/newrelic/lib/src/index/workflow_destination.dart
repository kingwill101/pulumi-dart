// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowDestination {
  /// (Required) Destination's channel id.
  final pulumi.Input<String> channelId;
  /// The name of the workflow.
  final pulumi.Input<String>? name;
  /// List of triggers to notify about in this destination configuration.
  final pulumi.Input<List<String>>? notificationTriggers;
  /// (Required) The type of the destination. One of: (EMAIL, EVENT_BRIDGE, PAGERDUTY_ACCOUNT_INTEGRATION, PAGERDUTY_SERVICE_INTEGRATION, SERVICE_NOW, SERVICE_NOW_APP, WEBHOOK, MOBILE_PUSH, SLACK, JIRA, MICROSOFT_TEAMS, WORKFLOW_AUTOMATION).
  final pulumi.Input<String>? type;
  /// Update original notification message (Slack channels only)
  final pulumi.Input<bool>? updateOriginalMessage;

  /// Creates a new [WorkflowDestination].
  /// [channelId] (Required) Destination's channel id.
  /// [name] The name of the workflow.
  /// [notificationTriggers] List of triggers to notify about in this destination configuration.
  /// [type] (Required) The type of the destination. One of: (EMAIL, EVENT_BRIDGE, PAGERDUTY_ACCOUNT_INTEGRATION, PAGERDUTY_SERVICE_INTEGRATION, SERVICE_NOW, SERVICE_NOW_APP, WEBHOOK, MOBILE_PUSH, SLACK, JIRA, MICROSOFT_TEAMS, WORKFLOW_AUTOMATION).
  /// [updateOriginalMessage] Update original notification message (Slack channels only)
  WorkflowDestination({
    required this.channelId,
    this.name,
    this.notificationTriggers,
    this.type,
    this.updateOriginalMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelId': channelId,
      'name': ?name,
      'notificationTriggers': ?notificationTriggers,
      'type': ?type,
      'updateOriginalMessage': ?updateOriginalMessage,
    };
  }

  factory WorkflowDestination.fromMap(Map<String, dynamic> map) {
    return WorkflowDestination(
      channelId: (map['channelId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notificationTriggers: map['notificationTriggers'] == null ? null : ((map['notificationTriggers'] as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      updateOriginalMessage: map['updateOriginalMessage'] == null ? null : (map['updateOriginalMessage'] as bool).input(),
    );
  }
}

