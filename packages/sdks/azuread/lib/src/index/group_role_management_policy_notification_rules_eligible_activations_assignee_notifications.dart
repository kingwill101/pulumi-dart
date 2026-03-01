// ignore_for_file: unused_element, unnecessary_cast


class GroupRoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications {
  /// The additional recipients to notify
  final List<String>? additionalRecipients;
  /// Whether the default recipients are notified
  final bool defaultRecipients;
  /// What level of notifications are sent
  final String notificationLevel;

  /// Creates a new [GroupRoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications].
  /// [additionalRecipients] The additional recipients to notify
  /// [defaultRecipients] Whether the default recipients are notified
  /// [notificationLevel] What level of notifications are sent
  GroupRoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications({
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

  factory GroupRoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications.fromMap(Map<String, dynamic> map) {
    return GroupRoleManagementPolicyNotificationRulesEligibleActivationsAssigneeNotifications(
      additionalRecipients: map['additionalRecipients'] == null ? null : (map['additionalRecipients'] as List).cast<String>(),
      defaultRecipients: map['defaultRecipients'] as bool,
      notificationLevel: map['notificationLevel'] as String,
    );
  }
}

