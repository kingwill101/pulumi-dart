// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_channel_strategy.dart';
import 'notification_rate_limit.dart';

/// Control over how the notification channels in notification_channels are notified when this alert fires.
class AlertStrategy {
  /// If an alert policy that was active has no data for this long, any open incidents will close
  final pulumi.Input<String>? autoClose;
  /// Control how notifications will be sent out, on a per-channel basis.
  final pulumi.Input<List<NotificationChannelStrategy>>? notificationChannelStrategy;
  /// Required for alert policies with a LogMatch condition.This limit is not implemented for alert policies that are not log-based.
  final pulumi.Input<NotificationRateLimit>? notificationRateLimit;

  /// Creates a new [AlertStrategy].
  /// [autoClose] If an alert policy that was active has no data for this long, any open incidents will close
  /// [notificationChannelStrategy] Control how notifications will be sent out, on a per-channel basis.
  /// [notificationRateLimit] Required for alert policies with a LogMatch condition.This limit is not implemented for alert policies that are not log-based.
  const AlertStrategy({
    this.autoClose,
    this.notificationChannelStrategy,
    this.notificationRateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoClose': ?autoClose,
      'notificationChannelStrategy': ?pulumi.Input.mapOptionalInputValue<List<NotificationChannelStrategy>, List<Map<String, dynamic>>>(notificationChannelStrategy, (value) => pulumi.Input.encodeList<NotificationChannelStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationRateLimit': ?pulumi.Input.mapOptionalInputValue<NotificationRateLimit, Map<String, dynamic>>(notificationRateLimit, (value) => value.toMap()),
    };
  }

  factory AlertStrategy.fromMap(Map<String, dynamic> map) {
    return AlertStrategy(
      autoClose: (() { final guardedValue = map['autoClose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationChannelStrategy: (() { final guardedValue = map['notificationChannelStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationChannelStrategy>(guardedValue, (value) => NotificationChannelStrategy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notificationRateLimit: (() { final guardedValue = map['notificationRateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationRateLimit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
