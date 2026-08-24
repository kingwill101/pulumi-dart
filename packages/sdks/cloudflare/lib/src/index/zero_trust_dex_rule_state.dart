// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dex_rule_targeted_test.dart';

/// Input properties used for looking up and filtering ZeroTrustDexRule resources.
class ZeroTrustDexRuleState {
  /// Unique identifier linked to an account.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? description;
  /// The wirefilter expression to match.
  final pulumi.Input<String?>? match;
  /// The name of the Rule.
  final pulumi.Input<String?>? name;
  final pulumi.Input<List<ZeroTrustDexRuleTargetedTest>?>? targetedTests;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustDexRuleState].
  /// [accountId] Unique identifier linked to an account.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [match] The wirefilter expression to match.
  /// [name] The name of the Rule.
  /// [targetedTests] Optional.
  /// [updatedAt] Optional.
  const ZeroTrustDexRuleState({
    this.accountId,
    this.createdAt,
    this.description,
    this.match,
    this.name,
    this.targetedTests,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'match': ?match,
      'name': ?name,
      'targetedTests': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDexRuleTargetedTest>, List<Map<String, dynamic>>>(targetedTests, (value) => pulumi.Input.encodeList<ZeroTrustDexRuleTargetedTest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustDexRuleState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDexRuleState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetedTests: (() { final guardedValue = map['targetedTests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDexRuleTargetedTest>(guardedValue, (value) => ZeroTrustDexRuleTargetedTest.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
