// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_rules_metric_rule_filtering_tag.dart';

class TagRulesMetricRule {
  /// Filtering tag for the metric rule. A `filtering_tag` block as defined below.
  final pulumi.Input<List<TagRulesMetricRuleFilteringTag>>? filteringTags;

  /// If sending metrics is enabled. The default value is `false`.
  final pulumi.Input<bool>? sendingMetricsEnabled;

  /// Creates a new [TagRulesMetricRule].
  /// [filteringTags] Filtering tag for the metric rule. A `filtering_tag` block as defined below.
  /// [sendingMetricsEnabled] If sending metrics is enabled. The default value is `false`.
  TagRulesMetricRule({this.filteringTags, this.sendingMetricsEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filteringTags':
          ?pulumi.Input.mapOptionalInputValue<
            List<TagRulesMetricRuleFilteringTag>,
            List<Map<String, dynamic>>
          >(
            filteringTags,
            (value) =>
                pulumi.Input.encodeList<
                  TagRulesMetricRuleFilteringTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sendingMetricsEnabled': ?sendingMetricsEnabled,
    };
  }

  factory TagRulesMetricRule.fromMap(Map<String, dynamic> map) {
    return TagRulesMetricRule(
      filteringTags: (() {
        final guardedValue = map['filteringTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TagRulesMetricRuleFilteringTag>(
            guardedValue,
            (value) => TagRulesMetricRuleFilteringTag.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sendingMetricsEnabled: (() {
        final guardedValue = map['sendingMetricsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
