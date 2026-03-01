// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_rule.dart';

/// {@template pulumi_frontdoor_rules_engine_rules_engine_args_doc}
/// The set of arguments for RulesEngine.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_rules_engine_rules_engine_args_doc}
class RulesEngineArgs {
  /// Whether this Rules engine configuration is enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The name of the Front Door instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> frontdoorName;
  /// The name of the Rules engine configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `rule` block as defined below.
  final pulumi.Input<List<RulesEngineRule>>? rules;

  /// Creates a new [RulesEngineArgs].
  /// [enabled] Whether this Rules engine configuration is enabled? Defaults to `true`.
  /// [frontdoorName] The name of the Front Door instance. Changing this forces a new resource to be created.
  /// [name] The name of the Rules engine configuration. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group. Changing this forces a new resource to be created.
  /// [rules] A `rule` block as defined below.
  RulesEngineArgs({
    pulumi.Output<bool>? enabled,
    required pulumi.Output<String> frontdoorName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<RulesEngineRule>>? rules,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      frontdoorName = pulumi.Input.asInput<String>(frontdoorName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rules = pulumi.Input.asOptionalInput<List<RulesEngineRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'frontdoorName': frontdoorName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RulesEngineRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RulesEngineRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RulesEngineArgs.fromMap(Map<String, dynamic> map) {
    return RulesEngineArgs(
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      frontdoorName: pulumi.Output.create<String>(map['frontdoorName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<RulesEngineRule>>(pulumi.Input.decodeList<RulesEngineRule>(map['rules'], (value) => RulesEngineRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

