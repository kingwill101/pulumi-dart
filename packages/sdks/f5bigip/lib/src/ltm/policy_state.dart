// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_rule.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// Specifies the controls
  final pulumi.Input<List<String>>? controls;
  /// Specifies descriptive text that identifies the ltm policy.
  final pulumi.Input<String>? description;
  /// Name of the Policy ( policy name should be in full path which is combination of partition and policy name )
  final pulumi.Input<String>? name;
  /// If you want to publish the policy else it will be deployed in Drafts mode. This attribute is deprecated and will be removed in a future release.
  final pulumi.Input<String>? publishedCopy;
  /// Specifies the protocol
  final pulumi.Input<List<String>>? requires;
  /// List of Rules can be applied using the policy. Each rule is block type with following arguments.
  final pulumi.Input<List<PolicyRule>>? rules;
  /// Specifies the match strategy
  final pulumi.Input<String>? strategy;

  /// Creates a new [PolicyState].
  /// [controls] Specifies the controls
  /// [description] Specifies descriptive text that identifies the ltm policy.
  /// [name] Name of the Policy ( policy name should be in full path which is combination of partition and policy name )
  /// [publishedCopy] If you want to publish the policy else it will be deployed in Drafts mode. This attribute is deprecated and will be removed in a future release.
  /// [requires] Specifies the protocol
  /// [rules] List of Rules can be applied using the policy. Each rule is block type with following arguments.
  /// [strategy] Specifies the match strategy
  PolicyState({
    this.controls,
    this.description,
    this.name,
    this.publishedCopy,
    this.requires,
    this.rules,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controls': ?controls,
      'description': ?description,
      'name': ?name,
      'publishedCopy': ?publishedCopy,
      'requires': ?requires,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<PolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'strategy': ?strategy,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      controls: map['controls'] == null ? null : ((map['controls'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      publishedCopy: map['publishedCopy'] == null ? null : (map['publishedCopy'] as String).input(),
      requires: map['requires'] == null ? null : ((map['requires'] as List).cast<String>()).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<PolicyRule>(map['rules'], (value) => PolicyRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      strategy: map['strategy'] == null ? null : (map['strategy'] as String).input(),
    );
  }
}

