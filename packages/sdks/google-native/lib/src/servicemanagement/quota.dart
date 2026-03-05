// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_rule.dart';
import 'quota_limit.dart';

/// Quota configuration helps to achieve fairness and budgeting in service usage. The metric based quota configuration works this way: - The service configuration defines a set of metrics. - For API calls, the quota.metric_rules maps methods to metrics with corresponding costs. - The quota.limits defines limits on the metrics, which will be used for quota checks at runtime. An example quota configuration in yaml format: quota: limits: - name: apiWriteQpsPerProject metric: library.googleapis.com/write_calls unit: "1/min/{project}" # rate limit for consumer projects values: STANDARD: 10000 (The metric rules bind all methods to the read_calls metric, except for the UpdateBook and DeleteBook methods. These two methods are mapped to the write_calls metric, with the UpdateBook method consuming at twice rate as the DeleteBook method.) metric_rules: - selector: "*" metric_costs: library.googleapis.com/read_calls: 1 - selector: google.example.library.v1.LibraryService.UpdateBook metric_costs: library.googleapis.com/write_calls: 2 - selector: google.example.library.v1.LibraryService.DeleteBook metric_costs: library.googleapis.com/write_calls: 1 Corresponding Metric definition: metrics: - name: library.googleapis.com/read_calls display_name: Read requests metric_kind: DELTA value_type: INT64 - name: library.googleapis.com/write_calls display_name: Write requests metric_kind: DELTA value_type: INT64
class Quota {
  /// List of QuotaLimit definitions for the service.
  final pulumi.Input<List<QuotaLimit>>? limits;
  /// List of MetricRule definitions, each one mapping a selected method to one or more metrics.
  final pulumi.Input<List<MetricRule>>? metricRules;

  /// Creates a new [Quota].
  /// [limits] List of QuotaLimit definitions for the service.
  /// [metricRules] List of MetricRule definitions, each one mapping a selected method to one or more metrics.
  Quota({
    this.limits,
    this.metricRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?pulumi.Input.mapOptionalInputValue<List<QuotaLimit>, List<Map<String, dynamic>>>(limits, (value) => pulumi.Input.encodeList<QuotaLimit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricRules': ?pulumi.Input.mapOptionalInputValue<List<MetricRule>, List<Map<String, dynamic>>>(metricRules, (value) => pulumi.Input.encodeList<MetricRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Quota.fromMap(Map<String, dynamic> map) {
    return Quota(
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QuotaLimit>(guardedValue, (value) => QuotaLimit.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metricRules: (() { final guardedValue = map['metricRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetricRule>(guardedValue, (value) => MetricRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

