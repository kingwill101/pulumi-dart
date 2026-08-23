// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_alert_strategy_notification_channel_strategy.dart';
import 'alert_policy_alert_strategy_notification_rate_limit.dart';

class AlertPolicyAlertStrategy {
  /// If an alert policy that was active has no data for this long, any open incidents will close.
  final pulumi.Input<String>? autoClose;
  /// Control over how the notification channels in `notificationChannels`
  /// are notified when this alert fires, on a per-channel basis.
  /// Structure is documented below.
  final pulumi.Input<List<AlertPolicyAlertStrategyNotificationChannelStrategy>>? notificationChannelStrategies;
  /// Control when notifications will be sent out.
  /// Each value may be one of: `NOTIFICATION_PROMPT_UNSPECIFIED`, `OPENED`, `CLOSED`.
  final pulumi.Input<List<String>>? notificationPrompts;
  /// Required for alert policies with a LogMatch condition.
  /// This limit is not implemented for alert policies that are not log-based.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyAlertStrategyNotificationRateLimit>? notificationRateLimit;

  /// Creates a new [AlertPolicyAlertStrategy].
  /// [autoClose] If an alert policy that was active has no data for this long, any open incidents will close.
  /// [notificationChannelStrategies] Control over how the notification channels in `notificationChannels`
  /// [notificationPrompts] Control when notifications will be sent out.
  /// [notificationRateLimit] Required for alert policies with a LogMatch condition.
  const AlertPolicyAlertStrategy({
    this.autoClose,
    this.notificationChannelStrategies,
    this.notificationPrompts,
    this.notificationRateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoClose': ?autoClose,
      'notificationChannelStrategies': ?pulumi.Input.mapOptionalInputValue<List<AlertPolicyAlertStrategyNotificationChannelStrategy>, List<Map<String, dynamic>>>(notificationChannelStrategies, (value) => pulumi.Input.encodeList<AlertPolicyAlertStrategyNotificationChannelStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationPrompts': ?notificationPrompts,
      'notificationRateLimit': ?pulumi.Input.mapOptionalInputValue<AlertPolicyAlertStrategyNotificationRateLimit, Map<String, dynamic>>(notificationRateLimit, (value) => value.toMap()),
    };
  }

  factory AlertPolicyAlertStrategy.fromMap(Map<String, dynamic> map) {
    return AlertPolicyAlertStrategy(
      autoClose: (() { final guardedValue = map['autoClose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationChannelStrategies: (() { final guardedValue = map['notificationChannelStrategies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertPolicyAlertStrategyNotificationChannelStrategy>(guardedValue, (value) => AlertPolicyAlertStrategyNotificationChannelStrategy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notificationPrompts: (() { final guardedValue = map['notificationPrompts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notificationRateLimit: (() { final guardedValue = map['notificationRateLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlertPolicyAlertStrategyNotificationRateLimit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
