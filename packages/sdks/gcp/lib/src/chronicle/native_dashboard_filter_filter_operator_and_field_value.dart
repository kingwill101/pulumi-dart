// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NativeDashboardFilterFilterOperatorAndFieldValue {
  /// The values for the modifier. All operators should have a single
  /// value other than 'IN' and 'BETWEEN'.
  final pulumi.Input<List<String>>? fieldValues;
  /// The operator to apply to the field.
  /// Possible values are: `EQUAL`, `NOT_EQUAL`, `IN`, `GREATER_THAN`, `GREATER_THAN_OR_EQUAL_TO`, `LESS_THAN`, `LESS_THAN_OR_EQUAL_TO`, `BETWEEN`, `PAST`, `IS_NULL`, `IS_NOT_NULL`, `STARTS_WITH`, `ENDS_WITH`, `DOES_NOT_STARTS_WITH`, `DOES_NOT_ENDS_WITH`, `NOT_IN`, `CONTAINS`, `DOES_NOT_CONTAIN`.
  final pulumi.Input<String>? filterOperator;

  /// Creates a new [NativeDashboardFilterFilterOperatorAndFieldValue].
  /// [fieldValues] The values for the modifier. All operators should have a single
  /// [filterOperator] The operator to apply to the field.
  const NativeDashboardFilterFilterOperatorAndFieldValue({
    this.fieldValues,
    this.filterOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldValues': ?fieldValues,
      'filterOperator': ?filterOperator,
    };
  }

  factory NativeDashboardFilterFilterOperatorAndFieldValue.fromMap(Map<String, dynamic> map) {
    return NativeDashboardFilterFilterOperatorAndFieldValue(
      fieldValues: (() { final guardedValue = map['fieldValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filterOperator: (() { final guardedValue = map['filterOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
