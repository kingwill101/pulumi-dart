// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetManagementGroupNotification {
  /// Specifies a list of email addresses to send the budget notification to when the threshold is exceeded.
  final pulumi.Input<List<String>> contactEmails;
  /// Should the notification be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The comparison operator for the notification. Must be one of `EqualTo`, `GreaterThan`, or `GreaterThanOrEqualTo`.
  final pulumi.Input<String> operator;
  /// Threshold value associated with a notification. Notification is sent when the cost exceeded the threshold. It is always percent and has to be between 0 and 1000.
  final pulumi.Input<int> threshold;
  /// The type of threshold for the notification. This determines whether the notification is triggered by forecasted costs or actual costs. The allowed values are `Actual` and `Forecasted`. Default is `Actual`.
  final pulumi.Input<String>? thresholdType;

  /// Creates a new [BudgetManagementGroupNotification].
  /// [contactEmails] Specifies a list of email addresses to send the budget notification to when the threshold is exceeded.
  /// [enabled] Should the notification be enabled? Defaults to `true`.
  /// [operator] The comparison operator for the notification. Must be one of `EqualTo`, `GreaterThan`, or `GreaterThanOrEqualTo`.
  /// [threshold] Threshold value associated with a notification. Notification is sent when the cost exceeded the threshold. It is always percent and has to be between 0 and 1000.
  /// [thresholdType] The type of threshold for the notification. This determines whether the notification is triggered by forecasted costs or actual costs. The allowed values are `Actual` and `Forecasted`. Default is `Actual`.
  BudgetManagementGroupNotification({
    required this.contactEmails,
    this.enabled,
    required this.operator,
    required this.threshold,
    this.thresholdType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactEmails': contactEmails,
      'enabled': ?enabled,
      'operator': operator,
      'threshold': threshold,
      'thresholdType': ?thresholdType,
    };
  }

  factory BudgetManagementGroupNotification.fromMap(Map<String, dynamic> map) {
    return BudgetManagementGroupNotification(
      contactEmails: pulumi.Input.fromValue((map['contactEmails'] as List).cast<String>()),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as int),
      thresholdType: (() { final guardedValue = map['thresholdType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

