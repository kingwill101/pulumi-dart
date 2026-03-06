// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_rules_log_rule.dart';
import 'tag_rules_metric_rule.dart';

/// Input properties used for looking up and filtering TagRules resources.
class TagRulesState {
  /// Set of rules for sending logs for the Monitor resource. A `log_rule` block as defined below.
  final pulumi.Input<TagRulesLogRule>? logRule;
  /// Set of rules for sending metrics for the Monitor resource. A `metric_rule` block as defined below.
  final pulumi.Input<TagRulesMetricRule>? metricRule;
  /// Name of the Dynatrace monitor. Changing this forces a new resource to be created.
  final pulumi.Input<String>? monitorId;
  /// Name of the Dynatrace tag rules. Currently, the only supported value is `default`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [TagRulesState].
  /// [logRule] Set of rules for sending logs for the Monitor resource. A `log_rule` block as defined below.
  /// [metricRule] Set of rules for sending metrics for the Monitor resource. A `metric_rule` block as defined below.
  /// [monitorId] Name of the Dynatrace monitor. Changing this forces a new resource to be created.
  /// [name] Name of the Dynatrace tag rules. Currently, the only supported value is `default`. Changing this forces a new resource to be created.
  const TagRulesState({
    this.logRule,
    this.metricRule,
    this.monitorId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logRule': ?pulumi.Input.mapOptionalInputValue<TagRulesLogRule, Map<String, dynamic>>(logRule, (value) => value.toMap()),
      'metricRule': ?pulumi.Input.mapOptionalInputValue<TagRulesMetricRule, Map<String, dynamic>>(metricRule, (value) => value.toMap()),
      'monitorId': ?monitorId,
      'name': ?name,
    };
  }

  factory TagRulesState.fromMap(Map<String, dynamic> map) {
    return TagRulesState(
      logRule: (() { final guardedValue = map['logRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagRulesLogRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricRule: (() { final guardedValue = map['metricRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TagRulesMetricRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitorId: (() { final guardedValue = map['monitorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

