// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_condition_expressions_conditions.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions {
  /// Conditions to apply to the expression.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditions>? conditions;
  /// The operator to apply to the result of conditions. Default and currently only supported value is AND.
  /// Default value is `AND`.
  /// Possible values are: `AND`.
  final pulumi.Input<String>? logicalOperator;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions].
  /// [conditions] Conditions to apply to the expression.
  /// [logicalOperator] The operator to apply to the result of conditions. Default and currently only supported value is AND.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions({
    this.conditions,
    this.logicalOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'logicalOperator': ?logicalOperator,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logicalOperator: (() { final guardedValue = map['logicalOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
