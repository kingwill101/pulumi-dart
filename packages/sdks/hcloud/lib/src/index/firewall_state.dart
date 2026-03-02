// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_apply_to.dart';
import 'firewall_rule.dart';

/// Input properties used for looking up and filtering Firewall resources.
class FirewallState {
  /// Resources the firewall should be assigned to
  final pulumi.Input<List<FirewallApplyTo>>? applyTos;
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Firewall.
  final pulumi.Input<String>? name;
  /// Configuration of a Rule from this Firewall.
  final pulumi.Input<List<FirewallRule>>? rules;

  /// Creates a new [FirewallState].
  /// [applyTos] Resources the firewall should be assigned to
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [name] Name of the Firewall.
  /// [rules] Configuration of a Rule from this Firewall.
  FirewallState({
    this.applyTos,
    this.labels,
    this.name,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyTos': ?pulumi.Input.mapOptionalInputValue<List<FirewallApplyTo>, List<Map<String, dynamic>>>(applyTos, (value) => pulumi.Input.encodeList<FirewallApplyTo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?labels,
      'name': ?name,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FirewallRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallState.fromMap(Map<String, dynamic> map) {
    return FirewallState(
      applyTos: map['applyTos'] == null ? null : (pulumi.Input.decodeList<FirewallApplyTo>(map['applyTos']!, (value) => FirewallApplyTo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<FirewallRule>(map['rules']!, (value) => FirewallRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

