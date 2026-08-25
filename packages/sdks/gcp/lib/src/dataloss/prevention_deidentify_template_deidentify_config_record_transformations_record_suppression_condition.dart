// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_record_suppression_condition_expressions.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition {
  /// An expression, consisting of an operator and conditions.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressions?>? expressions;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition].
  /// [expressions] An expression, consisting of an operator and conditions.
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition({
    this.expressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressions': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressions, Map<String, dynamic>>(expressions, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition(
      expressions: (() { final guardedValue = map['expressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
