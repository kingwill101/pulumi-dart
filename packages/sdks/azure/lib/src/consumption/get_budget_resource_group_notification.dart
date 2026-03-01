// ignore_for_file: unused_element, unnecessary_cast


class GetBudgetResourceGroupNotification {
  /// A list of email addresses to send the budget notification to when the threshold is exceeded.
  final List<String> contactEmails;
  /// A list of Action Group IDs to send the budget notification to when the threshold is exceeded.
  final List<String> contactGroups;
  /// A list of contact roles to send the budget notification to when the threshold is exceeded.
  final List<String> contactRoles;
  /// Whether the notification is enabled.
  final bool enabled;
  /// The operator used for comparison.
  final String operator;
  /// Threshold value associated with the notification.
  final int threshold;
  final String thresholdType;

  /// Creates a new [GetBudgetResourceGroupNotification].
  /// [contactEmails] A list of email addresses to send the budget notification to when the threshold is exceeded.
  /// [contactGroups] A list of Action Group IDs to send the budget notification to when the threshold is exceeded.
  /// [contactRoles] A list of contact roles to send the budget notification to when the threshold is exceeded.
  /// [enabled] Whether the notification is enabled.
  /// [operator] The operator used for comparison.
  /// [threshold] Threshold value associated with the notification.
  /// [thresholdType] Required.
  GetBudgetResourceGroupNotification({
    required this.contactEmails,
    required this.contactGroups,
    required this.contactRoles,
    required this.enabled,
    required this.operator,
    required this.threshold,
    required this.thresholdType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactEmails': contactEmails,
      'contactGroups': contactGroups,
      'contactRoles': contactRoles,
      'enabled': enabled,
      'operator': operator,
      'threshold': threshold,
      'thresholdType': thresholdType,
    };
  }

  factory GetBudgetResourceGroupNotification.fromMap(Map<String, dynamic> map) {
    return GetBudgetResourceGroupNotification(
      contactEmails: (map['contactEmails'] as List).cast<String>(),
      contactGroups: (map['contactGroups'] as List).cast<String>(),
      contactRoles: (map['contactRoles'] as List).cast<String>(),
      enabled: map['enabled'] as bool,
      operator: map['operator'] as String,
      threshold: map['threshold'] as int,
      thresholdType: map['thresholdType'] as String,
    );
  }
}

