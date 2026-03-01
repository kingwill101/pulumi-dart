// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_record_transformations_record_suppression_condition_expressions.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition {
  /// An expression, consisting of an operator and conditions.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressions? expressions;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition].
  /// [expressions] An expression, consisting of an operator and conditions.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition({
    this.expressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressions': ?expressions == null ? null : expressions!.toMap(),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition(
      expressions: map['expressions'] == null ? null : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressions.fromMap((map['expressions'] as Map).cast<String, dynamic>()),
    );
  }
}

