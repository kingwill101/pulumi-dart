// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Control over the rate of notifications sent to this alert policy's notification channels.
class NotificationRateLimitResponse {
  /// Not more than one notification per period.
  final pulumi.Input<String> period;

  /// Creates a new [NotificationRateLimitResponse].
  /// [period] Not more than one notification per period.
  NotificationRateLimitResponse({
    required this.period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'period': period,
    };
  }

  factory NotificationRateLimitResponse.fromMap(Map<String, dynamic> map) {
    return NotificationRateLimitResponse(
      period: pulumi.Input.fromValue(map['period'] as String),
    );
  }
}

