// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_tag_rule_metric_filter.dart';

class MonitorTagRuleMetric {
  /// A `filter` block as defined below.
  ///
  /// > **Note:** List of filtering tags to be used for capturing metrics. If empty, all resources will be captured. If only Exclude action is specified, the rules will apply to the list of all available resources. If Include actions are specified, the rules will only include resources with the associated tags.
  final pulumi.Input<List<MonitorTagRuleMetricFilter>>? filters;

  /// Creates a new [MonitorTagRuleMetric].
  /// [filters] A `filter` block as defined below.
  MonitorTagRuleMetric({
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<MonitorTagRuleMetricFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<MonitorTagRuleMetricFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MonitorTagRuleMetric.fromMap(Map<String, dynamic> map) {
    return MonitorTagRuleMetric(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<MonitorTagRuleMetricFilter>(map['filters']!, (value) => MonitorTagRuleMetricFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

