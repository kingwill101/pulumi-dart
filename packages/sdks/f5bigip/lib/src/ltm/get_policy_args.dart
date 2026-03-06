// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_rule.dart';

/// {@template pulumi_ltm_get_policy_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_ltm_get_policy_get_policy_args_doc}
class GetPolicyArgs {
  /// Specifies the controls.
  final pulumi.Input<List<String>>? controls;
  /// Name of the policy which includes partion ( /partition/policy-name )
  final pulumi.Input<String> name;
  final pulumi.Input<String>? publishedCopy;
  /// Specifies the protocol.
  final pulumi.Input<List<String>>? requires;
  /// Rules defined in the policy.
  final pulumi.Input<List<GetPolicyRule>>? rules;
  /// Specifies the match strategy.
  final pulumi.Input<String>? strategy;

  /// Creates a new [GetPolicyArgs].
  /// [controls] Specifies the controls.
  /// [name] Name of the policy which includes partion ( /partition/policy-name )
  /// [publishedCopy] Optional.
  /// [requires] Specifies the protocol.
  /// [rules] Rules defined in the policy.
  /// [strategy] Specifies the match strategy.
  const GetPolicyArgs({
    this.controls,
    required this.name,
    this.publishedCopy,
    this.requires,
    this.rules,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controls': ?controls,
      'name': name,
      'publishedCopy': ?publishedCopy,
      'requires': ?requires,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<GetPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'strategy': ?strategy,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      controls: (() { final guardedValue = map['controls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      publishedCopy: (() { final guardedValue = map['publishedCopy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requires: (() { final guardedValue = map['requires']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyRule>(guardedValue, (value) => GetPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

