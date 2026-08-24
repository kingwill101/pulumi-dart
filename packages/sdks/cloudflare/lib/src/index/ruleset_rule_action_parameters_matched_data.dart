// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersMatchedData {
  /// The public key to encrypt matched data logs with.
  final pulumi.Input<String> publicKey;

  /// Creates a new [RulesetRuleActionParametersMatchedData].
  /// [publicKey] The public key to encrypt matched data logs with.
  const RulesetRuleActionParametersMatchedData({
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKey': publicKey,
    };
  }

  factory RulesetRuleActionParametersMatchedData.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersMatchedData(
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
    );
  }
}
