// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FindingsRefinementOutcomeFilter {
  /// The operator to be applied to the outcome variable.
  /// Possible values:
  /// EQUAL
  /// CONTAINS
  /// MATCHES_REGEX
  /// MATCHES_CIDR
  final pulumi.Input<String> outcomeFilterOperator;
  /// The value of the outcome variable to match.
  final pulumi.Input<String> outcomeValue;
  /// The outcome variable name.
  final pulumi.Input<String> outcomeVariable;

  /// Creates a new [FindingsRefinementOutcomeFilter].
  /// [outcomeFilterOperator] The operator to be applied to the outcome variable.
  /// [outcomeValue] The value of the outcome variable to match.
  /// [outcomeVariable] The outcome variable name.
  const FindingsRefinementOutcomeFilter({
    required this.outcomeFilterOperator,
    required this.outcomeValue,
    required this.outcomeVariable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outcomeFilterOperator': outcomeFilterOperator,
      'outcomeValue': outcomeValue,
      'outcomeVariable': outcomeVariable,
    };
  }

  factory FindingsRefinementOutcomeFilter.fromMap(Map<String, dynamic> map) {
    return FindingsRefinementOutcomeFilter(
      outcomeFilterOperator: pulumi.Input.fromValue(map['outcomeFilterOperator'] as String),
      outcomeValue: pulumi.Input.fromValue(map['outcomeValue'] as String),
      outcomeVariable: pulumi.Input.fromValue(map['outcomeVariable'] as String),
    );
  }
}
