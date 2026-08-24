// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFlagshipFlagRuleRollout {
  /// Context attribute used for sticky bucketing. Defaults to `targetingKey`. If absent at evaluation time, bucketing is random per request.
  final pulumi.Input<String> attribute;
  /// Percentage of matching traffic (0–100) served this variation. For multi-way splits, use cumulative upper bounds across rules (e.g. 30, 70, 100).
  final pulumi.Input<double> percentage;

  /// Creates a new [GetFlagshipFlagRuleRollout].
  /// [attribute] Context attribute used for sticky bucketing. Defaults to `targetingKey`. If absent at evaluation time, bucketing is random per request.
  /// [percentage] Percentage of matching traffic (0–100) served this variation. For multi-way splits, use cumulative upper bounds across rules (e.g. 30, 70, 100).
  const GetFlagshipFlagRuleRollout({
    required this.attribute,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
      'percentage': percentage,
    };
  }

  factory GetFlagshipFlagRuleRollout.fromMap(Map<String, dynamic> map) {
    return GetFlagshipFlagRuleRollout(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
      percentage: pulumi.Input.fromValue((map['percentage'] as num).toDouble()),
    );
  }
}
