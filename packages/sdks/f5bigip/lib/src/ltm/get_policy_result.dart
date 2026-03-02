// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_rule.dart';

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// Specifies the controls.
  final List<String>? controls;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The name of the policy.
  final String name;
  final String? publishedCopy;
  /// Specifies the protocol.
  final List<String>? requires;
  /// Rules defined in the policy.
  final List<GetPolicyRule>? rules;
  /// Specifies the match strategy.
  final String? strategy;

  /// Creates a new [GetPolicyResult].
  /// [controls] Specifies the controls.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the policy.
  /// [publishedCopy] Optional.
  /// [requires] Specifies the protocol.
  /// [rules] Rules defined in the policy.
  /// [strategy] Specifies the match strategy.
  GetPolicyResult({
    this.controls,
    required this.id,
    required this.name,
    this.publishedCopy,
    this.requires,
    this.rules,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controls': ?controls,
      'id': id,
      'name': name,
      'publishedCopy': ?publishedCopy,
      'requires': ?requires,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<GetPolicyRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
      'strategy': ?strategy,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      controls: map['controls'] == null ? null : (map['controls']! as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      publishedCopy: map['publishedCopy'] == null ? null : map['publishedCopy']! as String,
      requires: map['requires'] == null ? null : (map['requires']! as List).cast<String>(),
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<GetPolicyRule>(map['rules']!, (value) => GetPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      strategy: map['strategy'] == null ? null : map['strategy']! as String,
    );
  }
}

