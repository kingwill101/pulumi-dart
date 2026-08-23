// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_rule_set_customization_rule_bigquery_clustering.dart';
import 'stream_rule_set_customization_rule_bigquery_partitioning.dart';

class StreamRuleSetCustomizationRule {
  /// BigQuery clustering rule.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetCustomizationRuleBigqueryClustering>? bigqueryClustering;
  /// BigQuery partitioning rule.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetCustomizationRuleBigqueryPartitioning>? bigqueryPartitioning;

  /// Creates a new [StreamRuleSetCustomizationRule].
  /// [bigqueryClustering] BigQuery clustering rule.
  /// [bigqueryPartitioning] BigQuery partitioning rule.
  const StreamRuleSetCustomizationRule({
    this.bigqueryClustering,
    this.bigqueryPartitioning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryClustering': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetCustomizationRuleBigqueryClustering, Map<String, dynamic>>(bigqueryClustering, (value) => value.toMap()),
      'bigqueryPartitioning': ?pulumi.Input.mapOptionalInputValue<StreamRuleSetCustomizationRuleBigqueryPartitioning, Map<String, dynamic>>(bigqueryPartitioning, (value) => value.toMap()),
    };
  }

  factory StreamRuleSetCustomizationRule.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetCustomizationRule(
      bigqueryClustering: (() { final guardedValue = map['bigqueryClustering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetCustomizationRuleBigqueryClustering.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bigqueryPartitioning: (() { final guardedValue = map['bigqueryPartitioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamRuleSetCustomizationRuleBigqueryPartitioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
