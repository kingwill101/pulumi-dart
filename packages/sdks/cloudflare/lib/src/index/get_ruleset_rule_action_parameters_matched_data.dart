// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersMatchedData {
  /// The public key to encrypt matched data logs with.
  final pulumi.Input<String> publicKey;

  /// Creates a new [GetRulesetRuleActionParametersMatchedData].
  /// [publicKey] The public key to encrypt matched data logs with.
  const GetRulesetRuleActionParametersMatchedData({
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKey': publicKey,
    };
  }

  factory GetRulesetRuleActionParametersMatchedData.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersMatchedData(
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
    );
  }
}
