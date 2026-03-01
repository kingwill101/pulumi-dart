// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewalls_firewall_apply_to.dart';
import 'get_firewalls_firewall_rule.dart';

class GetFirewallsFirewall {
  final List<GetFirewallsFirewallApplyTo>? applyTos;
  final int? id;
  final Map<String, String>? labels;
  final String name;
  final List<GetFirewallsFirewallRule>? rules;

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
      'applyTos': ?applyTos == null ? null : pulumi.Input.encodeList<GetFirewallsFirewallApplyTo, Map<String, dynamic>>(applyTos!, (value) => value.toMap()),
      'id': ?id,
      'labels': ?labels,
      'name': name,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<GetFirewallsFirewallRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory GetFirewallsFirewall.fromMap(Map<String, dynamic> map) {
    return GetFirewallsFirewall(
      applyTos: map['applyTos'] == null ? null : pulumi.Input.decodeList<GetFirewallsFirewallApplyTo>(map['applyTos'], (value) => GetFirewallsFirewallApplyTo.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as int,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<GetFirewallsFirewallRule>(map['rules'], (value) => GetFirewallsFirewallRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

