// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dex_rule_get_zero_trust_dex_rule_args_doc}
/// Arguments for getZeroTrustDexRule.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dex_rule_get_zero_trust_dex_rule_args_doc}
class GetZeroTrustDexRuleArgs {
  /// Unique identifier linked to an account.
  final pulumi.Input<String?>? accountId;
  /// API Resource UUID tag.
  final pulumi.Input<String> ruleId;

  /// Creates a new [GetZeroTrustDexRuleArgs].
  /// [accountId] Unique identifier linked to an account.
  /// [ruleId] API Resource UUID tag.
  const GetZeroTrustDexRuleArgs({
    this.accountId,
    required this.ruleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'ruleId': ruleId,
    };
  }

  factory GetZeroTrustDexRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexRuleArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
    );
  }
}
