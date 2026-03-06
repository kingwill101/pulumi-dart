// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetScheduledQueryRulesAlertAction {
  /// List of action group reference resource IDs.
  final pulumi.Input<List<String>> actionGroups;
  /// Custom payload to be sent for all webhook URI in Azure action group.
  final pulumi.Input<String> customWebhookPayload;
  /// Custom subject override for all email IDs in Azure action group.
  final pulumi.Input<String> emailSubject;

  /// Creates a new [GetScheduledQueryRulesAlertAction].
  /// [actionGroups] List of action group reference resource IDs.
  /// [customWebhookPayload] Custom payload to be sent for all webhook URI in Azure action group.
  /// [emailSubject] Custom subject override for all email IDs in Azure action group.
  const GetScheduledQueryRulesAlertAction({
    required this.actionGroups,
    required this.customWebhookPayload,
    required this.emailSubject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': actionGroups,
      'customWebhookPayload': customWebhookPayload,
      'emailSubject': emailSubject,
    };
  }

  factory GetScheduledQueryRulesAlertAction.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesAlertAction(
      actionGroups: pulumi.Input.fromValue((map['actionGroups'] as List).cast<String>()),
      customWebhookPayload: pulumi.Input.fromValue(map['customWebhookPayload'] as String),
      emailSubject: pulumi.Input.fromValue(map['emailSubject'] as String),
    );
  }
}

