// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SmartDetectorAlertRuleActionGroup {
  /// Specifies a custom email subject if Email Receiver is specified in Monitor Action Group resource.
  final pulumi.Input<String>? emailSubject;
  /// Specifies the action group ids.
  final pulumi.Input<List<String>> ids;
  /// A JSON String which Specifies the custom webhook payload if Webhook Receiver is specified in Monitor Action Group resource.
  final pulumi.Input<String>? webhookPayload;

  /// Creates a new [SmartDetectorAlertRuleActionGroup].
  /// [emailSubject] Specifies a custom email subject if Email Receiver is specified in Monitor Action Group resource.
  /// [ids] Specifies the action group ids.
  /// [webhookPayload] A JSON String which Specifies the custom webhook payload if Webhook Receiver is specified in Monitor Action Group resource.
  SmartDetectorAlertRuleActionGroup({
    this.emailSubject,
    required this.ids,
    this.webhookPayload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailSubject': ?emailSubject,
      'ids': ids,
      'webhookPayload': ?webhookPayload,
    };
  }

  factory SmartDetectorAlertRuleActionGroup.fromMap(Map<String, dynamic> map) {
    return SmartDetectorAlertRuleActionGroup(
      emailSubject: map['emailSubject'] == null ? null : (map['emailSubject']! as String).input(),
      ids: ((map['ids'] as List).cast<String>()).input(),
      webhookPayload: map['webhookPayload'] == null ? null : (map['webhookPayload']! as String).input(),
    );
  }
}

