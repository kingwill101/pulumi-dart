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
    required pulumi.Output<String> checkId,
    pulumi.Output<String>? comparison,
    pulumi.Output<String>? name,
    required pulumi.Output<List<UptimeAlertNotification>> notifications,
    pulumi.Output<String>? period,
    pulumi.Output<int>? threshold,
    required pulumi.Output<String> type,
  }) :
      checkId = pulumi.Input.asInput<String>(checkId),
      comparison = pulumi.Input.asOptionalInput<String>(comparison),
      name = pulumi.Input.asOptionalInput<String>(name),
      notifications = pulumi.Input.asInput<List<UptimeAlertNotification>>(notifications),
      period = pulumi.Input.asOptionalInput<String>(period),
      threshold = pulumi.Input.asOptionalInput<int>(threshold),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkId': checkId,
      'comparison': ?comparison,
      'name': ?name,
      'notifications': pulumi.Input.mapInputValue<List<UptimeAlertNotification>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<UptimeAlertNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'period': ?period,
      'threshold': ?threshold,
      'type': type,
    };
  }

  factory UptimeAlertArgs.fromMap(Map<String, dynamic> map) {
    return UptimeAlertArgs(
      checkId: pulumi.Output.create<String>(map['checkId'] as String),
      comparison: map['comparison'] == null ? null : pulumi.Output.create<String>(map['comparison'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notifications: pulumi.Output.create<List<UptimeAlertNotification>>(pulumi.Input.decodeList<UptimeAlertNotification>(map['notifications'], (value) => UptimeAlertNotification.fromMap((value as Map).cast<String, dynamic>()))),
      period: map['period'] == null ? null : pulumi.Output.create<String>(map['period'] as String),
      threshold: map['threshold'] == null ? null : pulumi.Output.create<int>(map['threshold'] as int),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

