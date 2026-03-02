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
  GetPolicyArgs({
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
      controls: map['controls'] == null ? null : ((map['controls'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      publishedCopy: map['publishedCopy'] == null ? null : (map['publishedCopy'] as String).input(),
      requires: map['requires'] == null ? null : ((map['requires'] as List).cast<String>()).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<GetPolicyRule>(map['rules'], (value) => GetPolicyRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      strategy: map['strategy'] == null ? null : (map['strategy'] as String).input(),
    );
  }
}

