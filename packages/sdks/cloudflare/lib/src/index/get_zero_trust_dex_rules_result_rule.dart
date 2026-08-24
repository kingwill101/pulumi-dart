// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dex_rules_result_rule_targeted_test.dart';

class GetZeroTrustDexRulesResultRule {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> description;
  /// API Resource UUID tag.
  final pulumi.Input<String> id;
  final pulumi.Input<String> match;
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetZeroTrustDexRulesResultRuleTargetedTest>> targetedTests;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustDexRulesResultRule].
  /// [createdAt] Required.
  /// [description] Required.
  /// [id] API Resource UUID tag.
  /// [match] Required.
  /// [name] Required.
  /// [targetedTests] Required.
  /// [updatedAt] Required.
  const GetZeroTrustDexRulesResultRule({
    required this.createdAt,
    required this.description,
    required this.id,
    required this.match,
    required this.name,
    required this.targetedTests,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'id': id,
      'match': match,
      'name': name,
      'targetedTests': pulumi.Input.mapInputValue<List<GetZeroTrustDexRulesResultRuleTargetedTest>, List<Map<String, dynamic>>>(targetedTests, (value) => pulumi.Input.encodeList<GetZeroTrustDexRulesResultRuleTargetedTest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustDexRulesResultRule.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexRulesResultRule(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      match: pulumi.Input.fromValue(map['match'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      targetedTests: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDexRulesResultRuleTargetedTest>(map['targetedTests']!, (value) => GetZeroTrustDexRulesResultRuleTargetedTest.fromMap((value as Map).cast<String, dynamic>()))),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
