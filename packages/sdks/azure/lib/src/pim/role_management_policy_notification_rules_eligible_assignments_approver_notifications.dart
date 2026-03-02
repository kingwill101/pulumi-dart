// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications {
  /// The additional recipients to notify
  final pulumi.Input<List<String>>? additionalRecipients;
  /// Whether the default recipients are notified
  final pulumi.Input<bool> defaultRecipients;
  /// What level of notifications are sent
  final pulumi.Input<String> notificationLevel;

  /// Creates a new [RoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications].
  /// [additionalRecipients] The additional recipients to notify
  /// [defaultRecipients] Whether the default recipients are notified
  /// [notificationLevel] What level of notifications are sent
  RoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications({
    this.additionalRecipients,
    required this.defaultRecipients,
    required this.notificationLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalRecipients': ?additionalRecipients,
      'defaultRecipients': defaultRecipients,
      'notificationLevel': notificationLevel,
    };
  }

  factory RoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyNotificationRulesEligibleAssignmentsApproverNotifications(
      additionalRecipients: map['additionalRecipients'] == null ? null : ((map['additionalRecipients']! as List).cast<String>()).input(),
      defaultRecipients: (map['defaultRecipients'] as bool).input(),
      notificationLevel: (map['notificationLevel'] as String).input(),
    );
  }
}

