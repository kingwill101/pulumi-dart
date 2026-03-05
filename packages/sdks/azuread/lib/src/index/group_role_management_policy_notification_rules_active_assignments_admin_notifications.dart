// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications {
  /// The additional recipients to notify
  final pulumi.Input<List<String>>? additionalRecipients;
  /// Whether the default recipients are notified
  final pulumi.Input<bool> defaultRecipients;
  /// What level of notifications are sent
  final pulumi.Input<String> notificationLevel;

  /// Creates a new [GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications].
  /// [additionalRecipients] The additional recipients to notify
  /// [defaultRecipients] Whether the default recipients are notified
  /// [notificationLevel] What level of notifications are sent
  GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications({
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

  factory GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyNotificationRulesActiveAssignmentsAdminNotifications(
      additionalRecipients: (() { final guardedValue = map['additionalRecipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultRecipients: pulumi.Input.fromValue(map['defaultRecipients'] as bool),
      notificationLevel: pulumi.Input.fromValue(map['notificationLevel'] as String),
    );
  }
}

