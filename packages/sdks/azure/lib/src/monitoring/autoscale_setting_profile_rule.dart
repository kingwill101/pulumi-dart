// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_setting_profile_rule_metric_trigger.dart';
import 'autoscale_setting_profile_rule_scale_action.dart';

class AutoscaleSettingProfileRule {
  /// A `metric_trigger` block as defined below.
  final pulumi.Input<AutoscaleSettingProfileRuleMetricTrigger> metricTrigger;
  /// A `scale_action` block as defined below.
  final pulumi.Input<AutoscaleSettingProfileRuleScaleAction> scaleAction;

  /// Creates a new [AutoscaleSettingProfileRule].
  /// [metricTrigger] A `metric_trigger` block as defined below.
  /// [scaleAction] A `scale_action` block as defined below.
  AutoscaleSettingProfileRule({
    required this.metricTrigger,
    required this.scaleAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricTrigger': pulumi.Input.mapInputValue<AutoscaleSettingProfileRuleMetricTrigger, Map<String, dynamic>>(metricTrigger, (value) => value.toMap()),
      'scaleAction': pulumi.Input.mapInputValue<AutoscaleSettingProfileRuleScaleAction, Map<String, dynamic>>(scaleAction, (value) => value.toMap()),
    };
  }

  factory AutoscaleSettingProfileRule.fromMap(Map<String, dynamic> map) {
    return AutoscaleSettingProfileRule(
      metricTrigger: pulumi.Input.fromValue(AutoscaleSettingProfileRuleMetricTrigger.fromMap((map['metricTrigger']! as Map).cast<String, dynamic>())),
      scaleAction: pulumi.Input.fromValue(AutoscaleSettingProfileRuleScaleAction.fromMap((map['scaleAction']! as Map).cast<String, dynamic>())),
    );
  }
}

