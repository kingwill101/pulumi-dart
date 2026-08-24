// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlagshipFlagRuleRollout {
  /// Context attribute used for sticky bucketing. Defaults to `targetingKey`. If absent at evaluation time, bucketing is random per request.
  final pulumi.Input<String?>? attribute;
  /// Percentage of matching traffic (0–100) served this variation. For multi-way splits, use cumulative upper bounds across rules (e.g. 30, 70, 100).
  final pulumi.Input<double> percentage;

  /// Creates a new [FlagshipFlagRuleRollout].
  /// [attribute] Context attribute used for sticky bucketing. Defaults to `targetingKey`. If absent at evaluation time, bucketing is random per request.
  /// [percentage] Percentage of matching traffic (0–100) served this variation. For multi-way splits, use cumulative upper bounds across rules (e.g. 30, 70, 100).
  const FlagshipFlagRuleRollout({
    this.attribute,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': ?attribute,
      'percentage': percentage,
    };
  }

  factory FlagshipFlagRuleRollout.fromMap(Map<String, dynamic> map) {
    return FlagshipFlagRuleRollout(
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentage: pulumi.Input.fromValue((map['percentage'] as num).toDouble()),
    );
  }
}
