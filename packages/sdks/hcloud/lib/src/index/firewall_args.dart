// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_apply_to.dart';
import 'firewall_rule.dart';

/// {@template pulumi_index_firewall_firewall_args_doc}
/// The set of arguments for Firewall.
/// {@endtemplate}
/// {@macro pulumi_index_firewall_firewall_args_doc}
class FirewallArgs {
  /// Resources the firewall should be assigned to
  final pulumi.Input<List<FirewallApplyTo>>? applyTos;
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Firewall.
  final pulumi.Input<String>? name;
  /// Configuration of a Rule from this Firewall.
  final pulumi.Input<List<FirewallRule>>? rules;

  /// Creates a new [FirewallArgs].
  /// [applyTos] Resources the firewall should be assigned to
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [name] Name of the Firewall.
  /// [rules] Configuration of a Rule from this Firewall.
  FirewallArgs({
    pulumi.Output<List<FirewallApplyTo>>? applyTos,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<List<FirewallRule>>? rules,
  }) :
      applyTos = pulumi.Input.asOptionalInput<List<FirewallApplyTo>>(applyTos),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      rules = pulumi.Input.asOptionalInput<List<FirewallRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyTos': ?pulumi.Input.mapOptionalInputValue<List<FirewallApplyTo>, List<Map<String, dynamic>>>(applyTos, (value) => pulumi.Input.encodeList<FirewallApplyTo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'name': ?name,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FirewallRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallArgs.fromMap(Map<String, dynamic> map) {
    return FirewallArgs(
      applyTos: map['applyTos'] == null ? null : pulumi.Output.create<List<FirewallApplyTo>>(pulumi.Input.decodeList<FirewallApplyTo>(map['applyTos'], (value) => FirewallApplyTo.fromMap((value as Map).cast<String, dynamic>()))),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<FirewallRule>>(pulumi.Input.decodeList<FirewallRule>(map['rules'], (value) => FirewallRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

