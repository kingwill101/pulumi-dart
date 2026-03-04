// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoleManagementPolicyNotificationRuleActiveAssignmentApproverNotification {
  /// A list of additional email addresses that will receive these notifications.
  final pulumi.Input<List<String>> additionalRecipients;

  /// (Boolean) Should the default recipients receive these notifications.
  final pulumi.Input<bool> defaultRecipients;

  /// (String) What level of notifications should be sent. Either `All` or `Critical`.
  final pulumi.Input<String> notificationLevel;

  /// Creates a new [GetRoleManagementPolicyNotificationRuleActiveAssignmentApproverNotification].
  /// [additionalRecipients] A list of additional email addresses that will receive these notifications.
  /// [defaultRecipients] (Boolean) Should the default recipients receive these notifications.
  /// [notificationLevel] (String) What level of notifications should be sent. Either `All` or `Critical`.
  GetRoleManagementPolicyNotificationRuleActiveAssignmentApproverNotification({
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

  factory GetRoleManagementPolicyNotificationRuleActiveAssignmentApproverNotification.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRoleManagementPolicyNotificationRuleActiveAssignmentApproverNotification(
      additionalRecipients: pulumi.Input.fromValue(
        (map['additionalRecipients'] as List).cast<String>(),
      ),
      defaultRecipients: pulumi.Input.fromValue(
        map['defaultRecipients'] as bool,
      ),
      notificationLevel: pulumi.Input.fromValue(
        map['notificationLevel'] as String,
      ),
    );
  }
}
