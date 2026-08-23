// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rule_response.dart';

/// Sets the CORS rules. You can include up to five CorsRule elements in the request.
class CorsRulesResponse {
  /// The List of CORS rules. You can include up to five CorsRule elements in the request.
  final pulumi.Input<List<CorsRuleResponse>>? corsRules;

  /// Creates a new [CorsRulesResponse].
  /// [corsRules] The List of CORS rules. You can include up to five CorsRule elements in the request.
  const CorsRulesResponse({
    this.corsRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<CorsRuleResponse>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<CorsRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CorsRulesResponse.fromMap(Map<String, dynamic> map) {
    return CorsRulesResponse(
      corsRules: (() { final guardedValue = map['corsRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CorsRuleResponse>(guardedValue, (value) => CorsRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
