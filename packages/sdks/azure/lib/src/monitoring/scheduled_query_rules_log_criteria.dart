// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_log_criteria_dimension.dart';

class ScheduledQueryRulesLogCriteria {
  /// A `dimension` block as defined below.
  final List<ScheduledQueryRulesLogCriteriaDimension> dimensions;
  /// Name of the metric. Supported metrics are listed in the Azure Monitor [Microsoft.OperationalInsights/workspaces](https://docs.microsoft.com/azure/azure-monitor/platform/metrics-supported#microsoftoperationalinsightsworkspaces) metrics namespace.
  final String metricName;

  /// Creates a new [ScheduledQueryRulesLogCriteria].
  /// [dimensions] A `dimension` block as defined below.
  /// [metricName] Name of the metric. Supported metrics are listed in the Azure Monitor [Microsoft.OperationalInsights/workspaces](https://docs.microsoft.com/azure/azure-monitor/platform/metrics-supported#microsoftoperationalinsightsworkspaces) metrics namespace.
  ScheduledQueryRulesLogCriteria({
    required this.dimensions,
    required this.metricName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': pulumi.Input.encodeList<ScheduledQueryRulesLogCriteriaDimension, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'metricName': metricName,
    };
  }

  factory ScheduledQueryRulesLogCriteria.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesLogCriteria(
      dimensions: pulumi.Input.decodeList<ScheduledQueryRulesLogCriteriaDimension>(map['dimensions'], (value) => ScheduledQueryRulesLogCriteriaDimension.fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] as String,
    );
  }
}

