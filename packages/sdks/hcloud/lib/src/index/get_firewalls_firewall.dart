// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewalls_firewall_apply_to.dart';
import 'get_firewalls_firewall_rule.dart';

class GetFirewallsFirewall {
  final pulumi.Input<List<GetFirewallsFirewallApplyTo>>? applyTos;
  final pulumi.Input<int>? id;
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetFirewallsFirewallRule>>? rules;

  /// Creates a new [GetFirewallsFirewall].
  /// [applyTos] Optional.
  /// [id] Optional.
  /// [labels] Optional.
  /// [name] Required.
  /// [rules] Optional.
  const GetFirewallsFirewall({
    this.applyTos,
    this.id,
    this.labels,
    required this.name,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyTos': ?pulumi.Input.mapOptionalInputValue<List<GetFirewallsFirewallApplyTo>, List<Map<String, dynamic>>>(applyTos, (value) => pulumi.Input.encodeList<GetFirewallsFirewallApplyTo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'labels': ?labels,
      'name': name,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<GetFirewallsFirewallRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetFirewallsFirewallRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFirewallsFirewall.fromMap(Map<String, dynamic> map) {
    return GetFirewallsFirewall(
      applyTos: (() { final guardedValue = map['applyTos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetFirewallsFirewallApplyTo>(guardedValue, (value) => GetFirewallsFirewallApplyTo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetFirewallsFirewallRule>(guardedValue, (value) => GetFirewallsFirewallRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

