// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_alert_alerts.dart';

/// Input properties used for looking up and filtering MonitorAlert resources.
class MonitorAlertState {
  /// How to send notifications about the alerts. This is a list with one element, .
  /// Note that for Slack, the DigitalOcean app needs to have permissions for your workspace. You can
  /// read more in [Slack's documentation](https://slack.com/intl/en-dk/help/articles/222386767-Manage-app-installation-settings-for-your-workspace)
  final pulumi.Input<MonitorAlertAlerts>? alerts;
  /// The comparison for `value`.
  /// This may be either `GreaterThan` or `LessThan`.
  final pulumi.Input<String>? compare;
  /// The description of the alert.
  final pulumi.Input<String>? description;
  /// The status of the alert.
  final pulumi.Input<bool>? enabled;
  /// A list of IDs for the resources to which the alert policy applies.
  final pulumi.Input<List<String>>? entities;
  /// A list of tags. When an included tag is added to a resource, the alert policy will apply to it.
  final pulumi.Input<List<String>>? tags;
  /// The type of the alert.
  /// This may be one of `v1/insights/droplet/load_1`, `v1/insights/droplet/load_5`, `v1/insights/droplet/load_15`,
  /// `v1/insights/droplet/memory_utilization_percent`, `v1/insights/droplet/disk_utilization_percent`,
  /// `v1/insights/droplet/cpu`, `v1/insights/droplet/disk_read`, `v1/insights/droplet/disk_write`,
  /// `v1/insights/droplet/public_outbound_bandwidth`, `v1/insights/droplet/public_inbound_bandwidth`,
  /// `v1/insights/droplet/private_outbound_bandwidth`, `v1/insights/droplet/private_inbound_bandwidth`,
  /// `v1/insights/lbaas/avg_cpu_utilization_percent`, `v1/insights/lbaas/connection_utilization_percent`,
  /// `v1/insights/lbaas/droplet_health`, `v1/insights/lbaas/tls_connections_per_second_utilization_percent`,
  /// `v1/insights/lbaas/increase_in_http_error_rate_percentage_5xx`, `v1/insights/lbaas/increase_in_http_error_rate_percentage_4xx`,
  /// `v1/insights/lbaas/increase_in_http_error_rate_count_5xx`, `v1/insights/lbaas/increase_in_http_error_rate_count_4xx`,
  /// `v1/insights/lbaas/high_http_request_response_time`, `v1/insights/lbaas/high_http_request_response_time_50p`,
  /// `v1/insights/lbaas/high_http_request_response_time_95p`, `v1/insights/lbaas/high_http_request_response_time_99p`,
  /// `v1/dbaas/alerts/load_15_alerts`, `v1/dbaas/alerts/cpu_alerts`, `v1/dbaas/alerts/memory_utilization_alerts`, or
  /// `v1/dbaas/alerts/disk_utilization_alerts`.
  final pulumi.Input<String>? type;
  /// The uuid of the alert.
  final pulumi.Input<String>? uuid;
  /// The value to start alerting at, e.g., 90% or 85Mbps. This is a floating-point number.
  /// DigitalOcean will show the correct unit in the web panel.
  final pulumi.Input<double>? value;
  /// The time frame of the alert. Either `5m`, `10m`, `30m`, or `1h`.
  final pulumi.Input<String>? window;

  /// Creates a new [MonitorAlertState].
  /// [alerts] How to send notifications about the alerts. This is a list with one element, .
  /// [compare] The comparison for `value`.
  /// [description] The description of the alert.
  /// [enabled] The status of the alert.
  /// [entities] A list of IDs for the resources to which the alert policy applies.
  /// [tags] A list of tags. When an included tag is added to a resource, the alert policy will apply to it.
  /// [type] The type of the alert.
  /// [uuid] The uuid of the alert.
  /// [value] The value to start alerting at, e.g., 90% or 85Mbps. This is a floating-point number.
  /// [window] The time frame of the alert. Either `5m`, `10m`, `30m`, or `1h`.
  const MonitorAlertState({
    this.alerts,
    this.compare,
    this.description,
    this.enabled,
    this.entities,
    this.tags,
    this.type,
    this.uuid,
    this.value,
    this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?pulumi.Input.mapOptionalInputValue<MonitorAlertAlerts, Map<String, dynamic>>(alerts, (value) => value.toMap()),
      'compare': ?compare,
      'description': ?description,
      'enabled': ?enabled,
      'entities': ?entities,
      'tags': ?tags,
      'type': ?type,
      'uuid': ?uuid,
      'value': ?value,
      'window': ?window,
    };
  }

  factory MonitorAlertState.fromMap(Map<String, dynamic> map) {
    return MonitorAlertState(
      alerts: (() { final guardedValue = map['alerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitorAlertAlerts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compare: (() { final guardedValue = map['compare']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      entities: (() { final guardedValue = map['entities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      window: (() { final guardedValue = map['window']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
