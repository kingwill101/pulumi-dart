// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoleManagementPolicyNotificationRuleEligibleActivationAssigneeNotification {
  /// A list of additional email addresses that will receive these notifications.
  final pulumi.Input<List<String>> additionalRecipients;
  /// (Boolean) Should the default recipients receive these notifications.
  final pulumi.Input<bool> defaultRecipients;
  /// (String) What level of notifications should be sent. Either `All` or `Critical`.
  final pulumi.Input<String> notificationLevel;

  /// Creates a new [GetRoleManagementPolicyNotificationRuleEligibleActivationAssigneeNotification].
  /// [additionalRecipients] A list of additional email addresses that will receive these notifications.
  /// [defaultRecipients] (Boolean) Should the default recipients receive these notifications.
  /// [notificationLevel] (String) What level of notifications should be sent. Either `All` or `Critical`.
  GetRoleManagementPolicyNotificationRuleEligibleActivationAssigneeNotification({
    required this.additionalRecipients,
    required this.defaultRecipients,
    required this.notificationLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalRecipients': additionalRecipients,
      'defaultRecipients': defaultRecipients,
      'notificationLevel': notificationLevel,
    };
  }

  factory GetRoleManagementPolicyNotificationRuleEligibleActivationAssigneeNotification.fromMap(Map<String, dynamic> map) {
    return GetRoleManagementPolicyNotificationRuleEligibleActivationAssigneeNotification(
      additionalRecipients: ((map['additionalRecipients'] as List).cast<String>()).input(),
      defaultRecipients: (map['defaultRecipients'] as bool).input(),
      notificationLevel: (map['notificationLevel'] as String).input(),
    );
  }
}

