// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryRulesAlertAction {
  /// List of action group reference resource IDs.
  final pulumi.Input<List<String>> actionGroups;
  /// Custom payload to be sent for all webhook payloads in alerting action.
  final pulumi.Input<String?>? customWebhookPayload;
  /// Custom subject override for all email ids in Azure action group.
  final pulumi.Input<String?>? emailSubject;

  /// Creates a new [ScheduledQueryRulesAlertAction].
  /// [actionGroups] List of action group reference resource IDs.
  /// [customWebhookPayload] Custom payload to be sent for all webhook payloads in alerting action.
  /// [emailSubject] Custom subject override for all email ids in Azure action group.
  const ScheduledQueryRulesAlertAction({
    required this.actionGroups,
    this.customWebhookPayload,
    this.emailSubject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': actionGroups,
      'customWebhookPayload': ?customWebhookPayload,
      'emailSubject': ?emailSubject,
    };
  }

  factory ScheduledQueryRulesAlertAction.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertAction(
      actionGroups: pulumi.Input.fromValue((map['actionGroups'] as List).cast<String>()),
      customWebhookPayload: (() { final guardedValue = map['customWebhookPayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailSubject: (() { final guardedValue = map['emailSubject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
