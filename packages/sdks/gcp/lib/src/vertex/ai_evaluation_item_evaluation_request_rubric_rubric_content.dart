// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_item_evaluation_request_rubric_rubric_content_property.dart';

class AiEvaluationItemEvaluationRequestRubricRubricContent {
  /// Evaluation criteria based on a specific property.
  /// Structure is documented below.
  final pulumi.Input<AiEvaluationItemEvaluationRequestRubricRubricContentProperty?>? property;

  /// Creates a new [AiEvaluationItemEvaluationRequestRubricRubricContent].
  /// [property] Evaluation criteria based on a specific property.
  const AiEvaluationItemEvaluationRequestRubricRubricContent({
    this.property,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'property': ?pulumi.Input.mapOptionalInputValue<AiEvaluationItemEvaluationRequestRubricRubricContentProperty, Map<String, dynamic>>(property, (value) => value.toMap()),
    };
  }

  factory AiEvaluationItemEvaluationRequestRubricRubricContent.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationRequestRubricRubricContent(
      property: (() { final guardedValue = map['property']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiEvaluationItemEvaluationRequestRubricRubricContentProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
