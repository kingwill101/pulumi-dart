// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBudgetSubscriptionNotification {
  /// A list of email addresses to send the budget notification to when the threshold is exceeded.
  final pulumi.Input<List<String>> contactEmails;
  /// A list of Action Group IDs to send the budget notification to when the threshold is exceeded.
  final pulumi.Input<List<String>> contactGroups;
  /// A list of contact roles to send the budget notification to when the threshold is exceeded.
  final pulumi.Input<List<String>> contactRoles;
  /// Whether the notification is enabled.
  final pulumi.Input<bool> enabled;
  /// The operator to used for comparison.
  final pulumi.Input<String> operator;
  /// Threshold value associated with the notification.
  final pulumi.Input<int> threshold;
  final pulumi.Input<String> thresholdType;

  /// Creates a new [GetBudgetSubscriptionNotification].
  /// [contactEmails] A list of email addresses to send the budget notification to when the threshold is exceeded.
  /// [contactGroups] A list of Action Group IDs to send the budget notification to when the threshold is exceeded.
  /// [contactRoles] A list of contact roles to send the budget notification to when the threshold is exceeded.
  /// [enabled] Whether the notification is enabled.
  /// [operator] The operator to used for comparison.
  /// [threshold] Threshold value associated with the notification.
  /// [thresholdType] Required.
  GetBudgetSubscriptionNotification({
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

  factory GetBudgetSubscriptionNotification.fromMap(Map<String, dynamic> map) {
    return GetBudgetSubscriptionNotification(
      contactEmails: ((map['contactEmails'] as List).cast<String>()).input(),
      contactGroups: ((map['contactGroups'] as List).cast<String>()).input(),
      contactRoles: ((map['contactRoles'] as List).cast<String>()).input(),
      enabled: (map['enabled'] as bool).input(),
      operator: (map['operator'] as String).input(),
      threshold: (map['threshold'] as int).input(),
      thresholdType: (map['thresholdType'] as String).input(),
    );
  }
}

