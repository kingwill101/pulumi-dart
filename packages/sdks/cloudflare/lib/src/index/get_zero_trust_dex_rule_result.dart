// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dex_rule_targeted_test.dart';

/// Result data returned by getZeroTrustDexRule.
class GetZeroTrustDexRuleResult {
  /// Unique identifier linked to an account.
  final String? accountId;
  final String? createdAt;
  final String? description;
  /// API Resource UUID tag.
  final String? id;
  final String? match;
  final String? name;
  /// API Resource UUID tag.
  final String? ruleId;
  final List<GetZeroTrustDexRuleTargetedTest>? targetedTests;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustDexRuleResult].
  /// [accountId] Unique identifier linked to an account.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [id] API Resource UUID tag.
  /// [match] Optional.
  /// [name] Optional.
  /// [ruleId] API Resource UUID tag.
  /// [targetedTests] Optional.
  /// [updatedAt] Optional.
  const GetZeroTrustDexRuleResult({
    this.accountId,
    this.createdAt,
    this.description,
    this.id,
    this.match,
    this.name,
    this.ruleId,
    this.targetedTests,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'id': ?id,
      'match': ?match,
      'name': ?name,
      'ruleId': ?ruleId,
      'targetedTests': ?(() { final guardedValue = targetedTests; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDexRuleTargetedTest, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustDexRuleResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexRuleResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetedTests: (() { final guardedValue = map['targetedTests']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDexRuleTargetedTest>(guardedValue, (value) => GetZeroTrustDexRuleTargetedTest.fromMap((value as Map).cast<String, dynamic>())); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
