// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_rule.dart';

/// Input properties used for looking up and filtering RulesEngine resources.
class RulesEngineState {
  /// Whether this Rules engine configuration is enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The name of the Front Door instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? frontdoorName;
  /// The location in which the Front Door Rules Engine exists.
  final pulumi.Input<String>? location;
  /// The name of the Rules engine configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `rule` block as defined below.
  final pulumi.Input<List<RulesEngineRule>>? rules;

  /// Creates a new [RulesEngineState].
  /// [enabled] Whether this Rules engine configuration is enabled? Defaults to `true`.
  /// [frontdoorName] The name of the Front Door instance. Changing this forces a new resource to be created.
  /// [location] The location in which the Front Door Rules Engine exists.
  /// [name] The name of the Rules engine configuration. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group. Changing this forces a new resource to be created.
  /// [rules] A `rule` block as defined below.
  RulesEngineState({
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? frontdoorName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<RulesEngineRule>>? rules,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      frontdoorName = pulumi.Input.asOptionalInput<String>(frontdoorName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      rules = pulumi.Input.asOptionalInput<List<RulesEngineRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'frontdoorName': ?frontdoorName,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RulesEngineRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RulesEngineRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RulesEngineState.fromMap(Map<String, dynamic> map) {
    return RulesEngineState(
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      frontdoorName: map['frontdoorName'] == null ? null : pulumi.Output.create<String>(map['frontdoorName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<RulesEngineRule>>(pulumi.Input.decodeList<RulesEngineRule>(map['rules'], (value) => RulesEngineRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

