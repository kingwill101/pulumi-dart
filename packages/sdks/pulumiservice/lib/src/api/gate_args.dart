// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_gate_args_doc}
/// The set of arguments for Gate.
/// {@endtemplate}
/// {@macro pulumi_api_gate_args_doc}
class GateArgs {
  /// Whether the change gate is enabled
  final pulumi.Input<bool> enabled;
  /// The change gate identifier
  final pulumi.Input<String>? gateID;
  /// Name of the change gate
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// Rule configuration for the gate
  final pulumi.Input<dynamic> rule;
  /// Target configuration for the gate
  final pulumi.Input<dynamic> target;

  /// Creates a new [GateArgs].
  /// [enabled] Whether the change gate is enabled
  /// [gateID] The change gate identifier
  /// [name] Name of the change gate
  /// [orgName] The organization name
  /// [rule] Rule configuration for the gate
  /// [target] Target configuration for the gate
  const GateArgs({
    required this.enabled,
    this.gateID,
    required this.name,
    required this.orgName,
    required this.rule,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'gateID': ?gateID,
      'name': name,
      'orgName': orgName,
      'rule': rule,
      'target': target,
    };
  }

  factory GateArgs.fromMap(Map<String, dynamic> map) {
    return GateArgs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      gateID: (() { final guardedValue = map['gateID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      rule: pulumi.Input.fromValue(map['rule']),
      target: pulumi.Input.fromValue(map['target']),
    );
  }
}
