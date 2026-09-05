// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_setting_profile_rule_metric_trigger_dimension.dart';

class AutoscaleSettingProfileRuleMetricTrigger {
  /// One or more `dimensions` block as defined below.
  final pulumi.Input<List<AutoscaleSettingProfileRuleMetricTriggerDimension>?>? dimensions;
  /// Whether to enable metric divide by instance count.
  final pulumi.Input<bool?>? divideByInstanceCount;
  /// The name of the metric that defines what the rule monitors, such as `Percentage CPU` for `Virtual Machine Scale Sets` and `CpuPercentage` for `App Service Plan`.
  ///
  /// &gt; **Note:** The allowed value of `metricName` highly depends on the targeting resource type, please visit [Supported metrics with Azure Monitor](https://docs.microsoft.com/azure/azure-monitor/platform/metrics-supported) for more details.
  final pulumi.Input<String> metricName;
  /// The namespace of the metric that defines what the rule monitors, such as `microsoft.compute/virtualmachinescalesets` for `Virtual Machine Scale Sets`.
  final pulumi.Input<String?>? metricNamespace;
  /// The ID of the Resource which the Rule monitors.
  final pulumi.Input<String> metricResourceId;
  /// Specifies the operator used to compare the metric data and threshold. Possible values are: `Equals`, `NotEquals`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan`, `LessThanOrEqual`.
  final pulumi.Input<String> operator;
  /// Specifies how the metrics from multiple instances are combined. Possible values are `Average`, `Max`, `Min` and `Sum`.
  final pulumi.Input<String> statistic;
  /// Specifies the threshold of the metric that triggers the scale action.
  final pulumi.Input<double> threshold;
  /// Specifies how the data that's collected should be combined over time. Possible values include `Average`, `Count`, `Maximum`, `Minimum`, `Last` and `Total`.
  final pulumi.Input<String> timeAggregation;
  /// Specifies the granularity of metrics that the rule monitors, which must be one of the pre-defined values returned from the metric definitions for the metric. This value must be between 1 minute and 12 hours an be formatted as an ISO 8601 string.
  final pulumi.Input<String> timeGrain;
  /// Specifies the time range for which data is collected, which must be greater than the delay in metric collection (which varies from resource to resource). This value must be between 5 minutes and 12 hours and be formatted as an ISO 8601 string.
  final pulumi.Input<String> timeWindow;

  /// Creates a new [AutoscaleSettingProfileRuleMetricTrigger].
  /// [dimensions] One or more `dimensions` block as defined below.
  /// [divideByInstanceCount] Whether to enable metric divide by instance count.
  /// [metricName] The name of the metric that defines what the rule monitors, such as `Percentage CPU` for `Virtual Machine Scale Sets` and `CpuPercentage` for `App Service Plan`.
  /// [metricNamespace] The namespace of the metric that defines what the rule monitors, such as `microsoft.compute/virtualmachinescalesets` for `Virtual Machine Scale Sets`.
  /// [metricResourceId] The ID of the Resource which the Rule monitors.
  /// [operator] Specifies the operator used to compare the metric data and threshold. Possible values are: `Equals`, `NotEquals`, `GreaterThan`, `GreaterThanOrEqual`, `LessThan`, `LessThanOrEqual`.
  /// [statistic] Specifies how the metrics from multiple instances are combined. Possible values are `Average`, `Max`, `Min` and `Sum`.
  /// [threshold] Specifies the threshold of the metric that triggers the scale action.
  /// [timeAggregation] Specifies how the data that's collected should be combined over time. Possible values include `Average`, `Count`, `Maximum`, `Minimum`, `Last` and `Total`.
  /// [timeGrain] Specifies the granularity of metrics that the rule monitors, which must be one of the pre-defined values returned from the metric definitions for the metric. This value must be between 1 minute and 12 hours an be formatted as an ISO 8601 string.
  /// [timeWindow] Specifies the time range for which data is collected, which must be greater than the delay in metric collection (which varies from resource to resource). This value must be between 5 minutes and 12 hours and be formatted as an ISO 8601 string.
  const AutoscaleSettingProfileRuleMetricTrigger({
    this.dimensions,
    this.divideByInstanceCount,
    required this.metricName,
    this.metricNamespace,
    required this.metricResourceId,
    required this.operator,
    required this.statistic,
    required this.threshold,
    required this.timeAggregation,
    required this.timeGrain,
    required this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<AutoscaleSettingProfileRuleMetricTriggerDimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<AutoscaleSettingProfileRuleMetricTriggerDimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'divideByInstanceCount': ?divideByInstanceCount,
      'metricName': metricName,
      'metricNamespace': ?metricNamespace,
      'metricResourceId': metricResourceId,
      'operator': operator,
      'statistic': statistic,
      'threshold': threshold,
      'timeAggregation': timeAggregation,
      'timeGrain': timeGrain,
      'timeWindow': timeWindow,
    };
  }

  factory AutoscaleSettingProfileRuleMetricTrigger.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingProfileRuleMetricTrigger(
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AutoscaleSettingProfileRuleMetricTriggerDimension>(guardedValue, (value) => AutoscaleSettingProfileRuleMetricTriggerDimension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      divideByInstanceCount: (() { final guardedValue = map['divideByInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      metricNamespace: (() { final guardedValue = map['metricNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricResourceId: pulumi.Input.fromValue(map['metricResourceId'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      statistic: pulumi.Input.fromValue(map['statistic'] as String),
      threshold: pulumi.Input.fromValue((map['threshold'] as num).toDouble()),
      timeAggregation: pulumi.Input.fromValue(map['timeAggregation'] as String),
      timeGrain: pulumi.Input.fromValue(map['timeGrain'] as String),
      timeWindow: pulumi.Input.fromValue(map['timeWindow'] as String),
    );
  }
}
