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
  GetFirewallsFirewall({
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
      applyTos: map['applyTos'] == null ? null : (pulumi.Input.decodeList<GetFirewallsFirewallApplyTo>(map['applyTos']!, (value) => GetFirewallsFirewallApplyTo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id']! as int).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<GetFirewallsFirewallRule>(map['rules']!, (value) => GetFirewallsFirewallRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

