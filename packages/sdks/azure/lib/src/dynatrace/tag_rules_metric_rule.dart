// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_rules_metric_rule_filtering_tag.dart';

class TagRulesMetricRule {
  /// Filtering tag for the metric rule. A `filtering_tag` block as defined below.
  final List<TagRulesMetricRuleFilteringTag>? filteringTags;
  /// If sending metrics is enabled. The default value is `false`.
  final bool? sendingMetricsEnabled;

  /// Creates a new [TagRulesMetricRule].
  /// [filteringTags] Filtering tag for the metric rule. A `filtering_tag` block as defined below.
  /// [sendingMetricsEnabled] If sending metrics is enabled. The default value is `false`.
  TagRulesMetricRule({
    this.filteringTags,
    this.sendingMetricsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags': ?filteringTags == null ? null : pulumi.Input.encodeList<TagRulesMetricRuleFilteringTag, Map<String, dynamic>>(filteringTags!, (value) => value.toMap()),
      'sendingMetricsEnabled': ?sendingMetricsEnabled,
    };
  }

  factory TagRulesMetricRule.fromMap(Map<String, dynamic> map) {
    return TagRulesMetricRule(
      filteringTags: map['filteringTags'] == null ? null : pulumi.Input.decodeList<TagRulesMetricRuleFilteringTag>(map['filteringTags'], (value) => TagRulesMetricRuleFilteringTag.fromMap((value as Map).cast<String, dynamic>())),
      sendingMetricsEnabled: map['sendingMetricsEnabled'] == null ? null : map['sendingMetricsEnabled'] as bool,
    );
  }
}

