// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_channel_strategy_response.dart';
import 'notification_rate_limit_response.dart';

/// Control over how the notification channels in notification_channels are notified when this alert fires.
class AlertStrategyResponse {
  /// If an alert policy that was active has no data for this long, any open incidents will close
  final pulumi.Input<String> autoClose;
  /// Control how notifications will be sent out, on a per-channel basis.
  final pulumi.Input<List<NotificationChannelStrategyResponse>> notificationChannelStrategy;
  /// Required for alert policies with a LogMatch condition.This limit is not implemented for alert policies that are not log-based.
  final pulumi.Input<NotificationRateLimitResponse> notificationRateLimit;

  /// Creates a new [AlertStrategyResponse].
  /// [autoClose] If an alert policy that was active has no data for this long, any open incidents will close
  /// [notificationChannelStrategy] Control how notifications will be sent out, on a per-channel basis.
  /// [notificationRateLimit] Required for alert policies with a LogMatch condition.This limit is not implemented for alert policies that are not log-based.
  AlertStrategyResponse({
    required this.autoClose,
    required this.notificationChannelStrategy,
    required this.notificationRateLimit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoClose': autoClose,
      'notificationChannelStrategy': pulumi.Input.mapInputValue<List<NotificationChannelStrategyResponse>, List<Map<String, dynamic>>>(notificationChannelStrategy, (value) => pulumi.Input.encodeList<NotificationChannelStrategyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationRateLimit': pulumi.Input.mapInputValue<NotificationRateLimitResponse, Map<String, dynamic>>(notificationRateLimit, (value) => value.toMap()),
    };
  }

  factory AlertStrategyResponse.fromMap(Map<String, dynamic> map) {
    return AlertStrategyResponse(
      autoClose: (map['autoClose'] as String).input(),
      notificationChannelStrategy: (pulumi.Input.decodeList<NotificationChannelStrategyResponse>(map['notificationChannelStrategy'], (value) => NotificationChannelStrategyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notificationRateLimit: (NotificationRateLimitResponse.fromMap((map['notificationRateLimit'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

