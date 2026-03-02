// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertProcessingRuleSuppressionConditionSeverity {
  /// The operator for a given condition. Possible values are `Equals` and `NotEquals`.
  final pulumi.Input<String> operator;
  /// Specifies list of values to match for a given condition. Possible values are `Sev0`, `Sev1`, `Sev2`, `Sev3`, and `Sev4`.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AlertProcessingRuleSuppressionConditionSeverity].
  /// [operator] The operator for a given condition. Possible values are `Equals` and `NotEquals`.
  /// [values] Specifies list of values to match for a given condition. Possible values are `Sev0`, `Sev1`, `Sev2`, `Sev3`, and `Sev4`.
  AlertProcessingRuleSuppressionConditionSeverity({
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
    };
  }

  factory AlertProcessingRuleSuppressionConditionSeverity.fromMap(Map<String, dynamic> map) {
    return AlertProcessingRuleSuppressionConditionSeverity(
      operator: (map['operator'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

