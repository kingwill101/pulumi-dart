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
  const RulesEngineState({
    this.enabled,
    this.frontdoorName,
    this.location,
    this.name,
    this.resourceGroupName,
    this.rules,
  });

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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frontdoorName: (() { final guardedValue = map['frontdoorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesEngineRule>(guardedValue, (value) => RulesEngineRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
