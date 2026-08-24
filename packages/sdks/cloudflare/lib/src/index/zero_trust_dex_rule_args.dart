// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_dex_rule_zero_trust_dex_rule_args_doc}
/// The set of arguments for ZeroTrustDexRule.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dex_rule_zero_trust_dex_rule_args_doc}
class ZeroTrustDexRuleArgs {
  /// Unique identifier linked to an account.
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? description;
  /// The wirefilter expression to match.
  final pulumi.Input<String> match;
  /// The name of the Rule.
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustDexRuleArgs].
  /// [accountId] Unique identifier linked to an account.
  /// [description] Optional.
  /// [match] The wirefilter expression to match.
  /// [name] The name of the Rule.
  const ZeroTrustDexRuleArgs({
    required this.accountId,
    this.description,
    required this.match,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': ?description,
      'match': match,
      'name': name,
    };
  }

  factory ZeroTrustDexRuleArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDexRuleArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      match: pulumi.Input.fromValue(map['match'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
