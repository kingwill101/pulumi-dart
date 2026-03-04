// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Control over the rate of notifications sent to this alert policy's notification channels.
class NotificationRateLimit {
  /// Not more than one notification per period.
  final pulumi.Input<String>? period;

  /// Creates a new [NotificationRateLimit].
  /// [period] Not more than one notification per period.
  NotificationRateLimit({this.period});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'period': ?period};
  }

  factory NotificationRateLimit.fromMap(Map<String, dynamic> map) {
    return NotificationRateLimit(
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
