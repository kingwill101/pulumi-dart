// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_rule.dart';

/// {@template pulumi_ltm_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_ltm_policy_policy_args_doc}
class PolicyArgs {
  /// Specifies the controls
  final pulumi.Input<List<String>>? controls;
  /// Specifies descriptive text that identifies the ltm policy.
  final pulumi.Input<String>? description;
  /// Name of the Policy ( policy name should be in full path which is combination of partition and policy name )
  final pulumi.Input<String> name;
  /// If you want to publish the policy else it will be deployed in Drafts mode. This attribute is deprecated and will be removed in a future release.
  final pulumi.Input<String>? publishedCopy;
  /// Specifies the protocol
  final pulumi.Input<List<String>>? requires;
  /// List of Rules can be applied using the policy. Each rule is block type with following arguments.
  final pulumi.Input<List<PolicyRule>>? rules;
  /// Specifies the match strategy
  final pulumi.Input<String>? strategy;

  /// Creates a new [PolicyArgs].
  /// [controls] Specifies the controls
  /// [description] Specifies descriptive text that identifies the ltm policy.
  /// [name] Name of the Policy ( policy name should be in full path which is combination of partition and policy name )
  /// [publishedCopy] If you want to publish the policy else it will be deployed in Drafts mode. This attribute is deprecated and will be removed in a future release.
  /// [requires] Specifies the protocol
  /// [rules] List of Rules can be applied using the policy. Each rule is block type with following arguments.
  /// [strategy] Specifies the match strategy
  const PolicyArgs({
    this.controls,
    this.description,
    required this.name,
    this.publishedCopy,
    this.requires,
    this.rules,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controls': ?controls,
      'description': ?description,
      'name': name,
      'publishedCopy': ?publishedCopy,
      'requires': ?requires,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'strategy': ?strategy,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      controls: (() { final guardedValue = map['controls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      publishedCopy: (() { final guardedValue = map['publishedCopy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requires: (() { final guardedValue = map['requires']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyRule>(guardedValue, (value) => PolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

