// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_batch_rule_set_rule.dart';

/// {@template pulumi_cdn_frontdoor_batch_rule_set_frontdoor_batch_rule_set_args_doc}
/// The set of arguments for FrontdoorBatchRuleSet.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_batch_rule_set_frontdoor_batch_rule_set_args_doc}
class FrontdoorBatchRuleSetArgs {
  /// The resource ID of the Front Door Profile where this Front Door Batch Rule Set should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> cdnFrontdoorProfileId;
  /// The name which should be used for this Front Door Batch Rule Set. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// One or more `rule` blocks as defined below. The configured blocks represent the complete set of rules managed for this Front Door Batch Rule Set. The final rule ordering is determined by each block's `order` value. A maximum of `100` `rule` blocks may be defined.
  ///
  /// &gt; **Note:** The `rule` blocks must be declared in ascending `order`, gaps between different rules are allowed. To insert, remove, or move a rule, update the full `rule` collection in the same ascending order that you want Terraform to store.
  ///
  /// &gt; **Note:** Each `rule` block must use a unique `name` value and a unique `order` value.
  ///
  /// &gt; **Note:** Each `rule` that enables caching (using the `route_configuration_override.caching` block with a `behaviour` other than `Disabled`) consumes two of the `100` available rule slots. The plan fails if the effective number of rule slots exceeds this service-side quota.
  final pulumi.Input<List<FrontdoorBatchRuleSetRule>> rules;

  /// Creates a new [FrontdoorBatchRuleSetArgs].
  /// [cdnFrontdoorProfileId] The resource ID of the Front Door Profile where this Front Door Batch Rule Set should be created. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Front Door Batch Rule Set. Changing this forces a new resource to be created.
  /// [rules] One or more `rule` blocks as defined below. The configured blocks represent the complete set of rules managed for this Front Door Batch Rule Set. The final rule ordering is determined by each block's `order` value. A maximum of `100` `rule` blocks may be defined.
  const FrontdoorBatchRuleSetArgs({
    required this.cdnFrontdoorProfileId,
    this.name,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'name': ?name,
      'rules': pulumi.Input.mapInputValue<List<FrontdoorBatchRuleSetRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FrontdoorBatchRuleSetRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FrontdoorBatchRuleSetArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetArgs(
      cdnFrontdoorProfileId: pulumi.Input.fromValue(map['cdnFrontdoorProfileId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBatchRuleSetRule>(map['rules']!, (value) => FrontdoorBatchRuleSetRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
