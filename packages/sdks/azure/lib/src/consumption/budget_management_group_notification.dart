// ignore_for_file: unused_element, unnecessary_cast


class BudgetManagementGroupNotification {
  /// Specifies a list of email addresses to send the budget notification to when the threshold is exceeded.
  final List<String> contactEmails;
  /// Should the notification be enabled? Defaults to `true`.
  final bool? enabled;
  /// The comparison operator for the notification. Must be one of `EqualTo`, `GreaterThan`, or `GreaterThanOrEqualTo`.
  final String operator;
  /// Threshold value associated with a notification. Notification is sent when the cost exceeded the threshold. It is always percent and has to be between 0 and 1000.
  final int threshold;
  /// The type of threshold for the notification. This determines whether the notification is triggered by forecasted costs or actual costs. The allowed values are `Actual` and `Forecasted`. Default is `Actual`.
  final String? thresholdType;

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
      contactEmails: (map['contactEmails'] as List).cast<String>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      operator: map['operator'] as String,
      threshold: map['threshold'] as int,
      thresholdType: map['thresholdType'] == null ? null : map['thresholdType'] as String,
    );
  }
}

