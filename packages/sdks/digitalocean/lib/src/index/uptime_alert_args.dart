// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uptime_alert_notification.dart';

/// {@template pulumi_index_uptime_alert_uptime_alert_args_doc}
/// The set of arguments for UptimeAlert.
/// {@endtemplate}
/// {@macro pulumi_index_uptime_alert_uptime_alert_args_doc}
class UptimeAlertArgs {
  /// A unique identifier for a check
  final pulumi.Input<String> checkId;

  /// The comparison operator used against the alert's threshold. Must be one of `greater_than` or `less_than`.
  final pulumi.Input<String>? comparison;

  /// A human-friendly display name.
  final pulumi.Input<String>? name;

  /// The notification settings for a trigger alert.
  final pulumi.Input<List<UptimeAlertNotification>> notifications;

  /// Period of time the threshold must be exceeded to trigger the alert. Must be one of `2m`, `3m`, `5m`, `10m`, `15m`, `30m` or `1h`.
  final pulumi.Input<String>? period;

  /// The threshold at which the alert will enter a trigger state. The specific threshold is dependent on the alert type.
  final pulumi.Input<int>? threshold;

  /// The type of health check to perform. Must be one of `latency`, `down`, `down_global` or `ssl_expiry`.
  final pulumi.Input<String> type;

  /// Creates a new [UptimeAlertArgs].
  /// [checkId] A unique identifier for a check
  /// [comparison] The comparison operator used against the alert's threshold. Must be one of `greater_than` or `less_than`.
  /// [name] A human-friendly display name.
  /// [notifications] The notification settings for a trigger alert.
  /// [period] Period of time the threshold must be exceeded to trigger the alert. Must be one of `2m`, `3m`, `5m`, `10m`, `15m`, `30m` or `1h`.
  /// [threshold] The threshold at which the alert will enter a trigger state. The specific threshold is dependent on the alert type.
  /// [type] The type of health check to perform. Must be one of `latency`, `down`, `down_global` or `ssl_expiry`.
  UptimeAlertArgs({
    required this.checkId,
    this.comparison,
    this.name,
    required this.notifications,
    this.period,
    this.threshold,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkId': checkId,
      'comparison': ?comparison,
      'name': ?name,
      'notifications':
          pulumi.Input.mapInputValue<
            List<UptimeAlertNotification>,
            List<Map<String, dynamic>>
          >(
            notifications,
            (value) =>
                pulumi.Input.encodeList<
                  UptimeAlertNotification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'period': ?period,
      'threshold': ?threshold,
      'type': type,
    };
  }

  factory UptimeAlertArgs.fromMap(Map<String, dynamic> map) {
    return UptimeAlertArgs(
      checkId: pulumi.Input.fromValue(map['checkId'] as String),
      comparison: (() {
        final guardedValue = map['comparison'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notifications: pulumi.Input.fromValue(
        pulumi.Input.decodeList<UptimeAlertNotification>(
          map['notifications']!,
          (value) => UptimeAlertNotification.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      threshold: (() {
        final guardedValue = map['threshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
