// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sap_landscape_monitor_metric_thresholds.dart';
import 'sap_landscape_monitor_properties_grouping.dart';

/// {@template pulumi_workloads_sap_landscape_monitor_args_doc}
/// The set of arguments for SapLandscapeMonitor.
/// {@endtemplate}
/// {@macro pulumi_workloads_sap_landscape_monitor_args_doc}
class SapLandscapeMonitorArgs {
  /// Gets or sets the SID groupings by landscape and Environment.
  final pulumi.Input<SapLandscapeMonitorPropertiesGrouping>? grouping;
  /// Name of the SAP monitor resource.
  final pulumi.Input<String> monitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the list Top Metric Thresholds for SAP Landscape Monitor Dashboard
  final pulumi.Input<List<SapLandscapeMonitorMetricThresholds>>? topMetricsThresholds;

  /// Creates a new [SapLandscapeMonitorArgs].
  /// [grouping] Gets or sets the SID groupings by landscape and Environment.
  /// [monitorName] Name of the SAP monitor resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [topMetricsThresholds] Gets or sets the list Top Metric Thresholds for SAP Landscape Monitor Dashboard
  const SapLandscapeMonitorArgs({
    this.grouping,
    required this.monitorName,
    required this.resourceGroupName,
    this.topMetricsThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grouping': ?pulumi.Input.mapOptionalInputValue<SapLandscapeMonitorPropertiesGrouping, Map<String, dynamic>>(grouping, (value) => value.toMap()),
      'monitorName': monitorName,
      'resourceGroupName': resourceGroupName,
      'topMetricsThresholds': ?pulumi.Input.mapOptionalInputValue<List<SapLandscapeMonitorMetricThresholds>, List<Map<String, dynamic>>>(topMetricsThresholds, (value) => pulumi.Input.encodeList<SapLandscapeMonitorMetricThresholds, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SapLandscapeMonitorArgs.fromMap(Map<String, dynamic> map) {
    return SapLandscapeMonitorArgs(
      grouping: (() { final guardedValue = map['grouping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SapLandscapeMonitorPropertiesGrouping.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitorName: pulumi.Input.fromValue(map['monitorName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      topMetricsThresholds: (() { final guardedValue = map['topMetricsThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SapLandscapeMonitorMetricThresholds>(guardedValue, (value) => SapLandscapeMonitorMetricThresholds.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
