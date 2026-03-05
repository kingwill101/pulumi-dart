// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rule.dart';

/// Sets the CORS rules. You can include up to five CorsRule elements in the request.
class CorsRules {
  /// The List of CORS rules. You can include up to five CorsRule elements in the request.
  final pulumi.Input<List<CorsRule>>? corsRules;

  /// Creates a new [CorsRules].
  /// [corsRules] The List of CORS rules. You can include up to five CorsRule elements in the request.
  CorsRules({
    this.corsRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsRules': ?pulumi.Input.mapOptionalInputValue<List<CorsRule>, List<Map<String, dynamic>>>(corsRules, (value) => pulumi.Input.encodeList<CorsRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CorsRules.fromMap(Map<String, dynamic> map) {
    return CorsRules(
      corsRules: (() { final guardedValue = map['corsRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CorsRule>(guardedValue, (value) => CorsRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

