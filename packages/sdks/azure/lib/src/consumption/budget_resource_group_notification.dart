// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetResourceGroupNotification {
  /// Specifies a list of email addresses to send the budget notification to when the threshold is exceeded.
  final pulumi.Input<List<String>>? contactEmails;
  /// Specifies a list of Action Group IDs to send the budget notification to when the threshold is exceeded.
  final pulumi.Input<List<String>>? contactGroups;
  /// Specifies a list of contact roles to send the budget notification to when the threshold is exceeded.
  final pulumi.Input<List<String>>? contactRoles;
  /// Should the notification be enabled? Defaults to `true`.
  ///
  /// &gt; **Note:** A `notification` block cannot have all of `contact_emails`, `contact_roles`, and `contact_groups` empty. This means that at least one of the three must be specified.
  final pulumi.Input<bool>? enabled;
  /// The comparison operator for the notification. Must be one of `EqualTo`, `GreaterThan`, or `GreaterThanOrEqualTo`.
  final pulumi.Input<String> operator;
  /// Threshold value associated with a notification. Notification is sent when the cost exceeded the threshold. It is always percent and has to be between 0 and 1000.
  final pulumi.Input<int> threshold;
  /// The type of threshold for the notification. This determines whether the notification is triggered by forecasted costs or actual costs. The allowed values are `Actual` and `Forecasted`. Default is `Actual`.
  final pulumi.Input<String>? thresholdType;

  /// Creates a new [BudgetResourceGroupNotification].
  /// [contactEmails] Specifies a list of email addresses to send the budget notification to when the threshold is exceeded.
  /// [contactGroups] Specifies a list of Action Group IDs to send the budget notification to when the threshold is exceeded.
  /// [contactRoles] Specifies a list of contact roles to send the budget notification to when the threshold is exceeded.
  /// [enabled] Should the notification be enabled? Defaults to `true`.
  /// [operator] The comparison operator for the notification. Must be one of `EqualTo`, `GreaterThan`, or `GreaterThanOrEqualTo`.
  /// [threshold] Threshold value associated with a notification. Notification is sent when the cost exceeded the threshold. It is always percent and has to be between 0 and 1000.
  /// [thresholdType] The type of threshold for the notification. This determines whether the notification is triggered by forecasted costs or actual costs. The allowed values are `Actual` and `Forecasted`. Default is `Actual`.
  const BudgetResourceGroupNotification({
    this.contactEmails,
    this.contactGroups,
    this.contactRoles,
    this.enabled,
    required this.operator,
    required this.threshold,
    this.thresholdType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactEmails': ?contactEmails,
      'contactGroups': ?contactGroups,
      'contactRoles': ?contactRoles,
      'enabled': ?enabled,
      'operator': operator,
      'threshold': threshold,
      'thresholdType': ?thresholdType,
    };
  }

  factory BudgetResourceGroupNotification.fromMap(Map<String, dynamic> map) {
    return BudgetResourceGroupNotification(
      contactEmails: (() { final guardedValue = map['contactEmails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      contactGroups: (() { final guardedValue = map['contactGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      contactRoles: (() { final guardedValue = map['contactRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as int),
      thresholdType: (() { final guardedValue = map['thresholdType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

