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
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPolicyRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'strategy': ?strategy,
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      controls: (() { final guardedValue = map['controls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      publishedCopy: (() { final guardedValue = map['publishedCopy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requires: (() { final guardedValue = map['requires']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPolicyRule>(guardedValue, (value) => GetPolicyRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

