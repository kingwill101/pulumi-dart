// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_alert_strategy_notification_channel_strategy.dart';
import 'alert_policy_alert_strategy_notification_rate_limit.dart';

class AlertPolicyAlertStrategy {
  /// If an alert policy that was active has no data for this long, any open incidents will close.
  final pulumi.Input<String>? autoClose;
  /// Control over how the notification channels in `notification_channels`
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
  /// [notificationChannelStrategies] Control over how the notification channels in `notification_channels`
  /// [notificationPrompts] Control when notifications will be sent out.
  /// [notificationRateLimit] Required for alert policies with a LogMatch condition.
  AlertPolicyAlertStrategy({
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
      autoClose: map['autoClose'] == null ? null : (map['autoClose']! as String).input(),
      notificationChannelStrategies: map['notificationChannelStrategies'] == null ? null : (pulumi.Input.decodeList<AlertPolicyAlertStrategyNotificationChannelStrategy>(map['notificationChannelStrategies']!, (value) => AlertPolicyAlertStrategyNotificationChannelStrategy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notificationPrompts: map['notificationPrompts'] == null ? null : ((map['notificationPrompts']! as List).cast<String>()).input(),
      notificationRateLimit: map['notificationRateLimit'] == null ? null : (AlertPolicyAlertStrategyNotificationRateLimit.fromMap((map['notificationRateLimit']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

