// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_conditions.dart';
import 'google_privacy_dlp_v2_expressions_logical_operator.dart';

/// An expression, consisting of an operator and conditions.
class GooglePrivacyDlpV2Expressions {
  /// Conditions to apply to the expression.
  final pulumi.Input<GooglePrivacyDlpV2Conditions>? conditions;
  /// The operator to apply to the result of conditions. Default and currently only supported value is `AND`.
  final pulumi.Input<GooglePrivacyDlpV2ExpressionsLogicalOperator>? logicalOperator;

  /// Creates a new [GooglePrivacyDlpV2Expressions].
  /// [conditions] Conditions to apply to the expression.
  /// [logicalOperator] The operator to apply to the result of conditions. Default and currently only supported value is `AND`.
  const GooglePrivacyDlpV2Expressions({
    this.conditions,
    this.logicalOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2Conditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'logicalOperator': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2ExpressionsLogicalOperator, String>(logicalOperator, (value) => value.wireValue),
    };
  }

  factory GooglePrivacyDlpV2Expressions.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2Expressions(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2Conditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logicalOperator: (() { final guardedValue = map['logicalOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2ExpressionsLogicalOperator.fromValue(guardedValue as String)); })(),
    );
  }
}
