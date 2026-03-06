// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_rule_set_customization_rule.dart';
import 'stream_rule_set_object_filter.dart';

class StreamRuleSet {
  /// List of customization rules to apply.
  /// Structure is documented below.
  final pulumi.Input<List<StreamRuleSetCustomizationRule>> customizationRules;
  /// Object filter to apply the customization rules to.
  /// Structure is documented below.
  final pulumi.Input<StreamRuleSetObjectFilter> objectFilter;

  /// Creates a new [StreamRuleSet].
  /// [customizationRules] List of customization rules to apply.
  /// [objectFilter] Object filter to apply the customization rules to.
  const StreamRuleSet({
    required this.customizationRules,
    required this.objectFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customizationRules': pulumi.Input.mapInputValue<List<StreamRuleSetCustomizationRule>, List<Map<String, dynamic>>>(customizationRules, (value) => pulumi.Input.encodeList<StreamRuleSetCustomizationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'objectFilter': pulumi.Input.mapInputValue<StreamRuleSetObjectFilter, Map<String, dynamic>>(objectFilter, (value) => value.toMap()),
    };
  }

  factory StreamRuleSet.fromMap(Map<String, dynamic> map) {
    return StreamRuleSet(
      customizationRules: pulumi.Input.fromValue(pulumi.Input.decodeList<StreamRuleSetCustomizationRule>(map['customizationRules']!, (value) => StreamRuleSetCustomizationRule.fromMap((value as Map).cast<String, dynamic>()))),
      objectFilter: pulumi.Input.fromValue(StreamRuleSetObjectFilter.fromMap((map['objectFilter']! as Map).cast<String, dynamic>())),
    );
  }
}

