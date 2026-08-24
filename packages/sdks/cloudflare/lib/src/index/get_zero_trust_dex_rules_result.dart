// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dex_rules_result_rule.dart';

class GetZeroTrustDexRulesResult {
  final pulumi.Input<List<GetZeroTrustDexRulesResultRule>> rules;

  /// Creates a new [GetZeroTrustDexRulesResult].
  /// [rules] Required.
  const GetZeroTrustDexRulesResult({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rules': pulumi.Input.mapInputValue<List<GetZeroTrustDexRulesResultRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetZeroTrustDexRulesResultRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustDexRulesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexRulesResult(
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDexRulesResultRule>(map['rules']!, (value) => GetZeroTrustDexRulesResultRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
