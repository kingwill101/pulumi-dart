// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_tag_rule_log.dart';
import 'monitor_tag_rule_metric.dart';

/// {@template pulumi_datadog_monitor_tag_rule_monitor_tag_rule_args_doc}
/// The set of arguments for MonitorTagRule.
/// {@endtemplate}
/// {@macro pulumi_datadog_monitor_tag_rule_monitor_tag_rule_args_doc}
class MonitorTagRuleArgs {
  /// The Datadog Monitor Id which should be used for this Datadog Monitor Tag Rule. Changing this forces a new Datadog Monitor Tag Rule to be created.
  final pulumi.Input<String> datadogMonitorId;

  /// A `log` block as defined below.
  final pulumi.Input<List<MonitorTagRuleLog>>? logs;

  /// A `metric` block as defined below.
  final pulumi.Input<List<MonitorTagRuleMetric>>? metrics;

  /// The name of the Tag Rules configuration. The allowed value is `default`. Defaults to `default`.
  final pulumi.Input<String>? name;

  /// Creates a new [MonitorTagRuleArgs].
  /// [datadogMonitorId] The Datadog Monitor Id which should be used for this Datadog Monitor Tag Rule. Changing this forces a new Datadog Monitor Tag Rule to be created.
  /// [logs] A `log` block as defined below.
  /// [metrics] A `metric` block as defined below.
  /// [name] The name of the Tag Rules configuration. The allowed value is `default`. Defaults to `default`.
  MonitorTagRuleArgs({
    required this.datadogMonitorId,
    this.logs,
    this.metrics,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadogMonitorId': datadogMonitorId,
      'logs':
          ?pulumi.Input.mapOptionalInputValue<
            List<MonitorTagRuleLog>,
            List<Map<String, dynamic>>
          >(
            logs,
            (value) =>
                pulumi.Input.encodeList<
                  MonitorTagRuleLog,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'metrics':
          ?pulumi.Input.mapOptionalInputValue<
            List<MonitorTagRuleMetric>,
            List<Map<String, dynamic>>
          >(
            metrics,
            (value) =>
                pulumi.Input.encodeList<
                  MonitorTagRuleMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
    };
  }

  factory MonitorTagRuleArgs.fromMap(Map<String, dynamic> map) {
    return MonitorTagRuleArgs(
      datadogMonitorId: pulumi.Input.fromValue(
        map['datadogMonitorId'] as String,
      ),
      logs: (() {
        final guardedValue = map['logs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MonitorTagRuleLog>(
            guardedValue,
            (value) => MonitorTagRuleLog.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      metrics: (() {
        final guardedValue = map['metrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MonitorTagRuleMetric>(
            guardedValue,
            (value) => MonitorTagRuleMetric.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
