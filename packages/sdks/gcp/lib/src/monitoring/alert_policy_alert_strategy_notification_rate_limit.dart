// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyAlertStrategyNotificationRateLimit {
  /// Not more than one notification per period.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example "60.5s".
  final pulumi.Input<String>? period;

  /// Creates a new [AlertPolicyAlertStrategyNotificationRateLimit].
  /// [period] Not more than one notification per period.
  AlertPolicyAlertStrategyNotificationRateLimit({
    this.period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'period': ?period,
    };
  }

  factory AlertPolicyAlertStrategyNotificationRateLimit.fromMap(Map<String, dynamic> map) {
    return AlertPolicyAlertStrategyNotificationRateLimit(
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

