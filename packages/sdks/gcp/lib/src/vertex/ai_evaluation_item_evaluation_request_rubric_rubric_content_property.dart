// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEvaluationItemEvaluationRequestRubricRubricContentProperty {
  /// Description of the property being evaluated.
  final pulumi.Input<String?>? description;

  /// Creates a new [AiEvaluationItemEvaluationRequestRubricRubricContentProperty].
  /// [description] Description of the property being evaluated.
  const AiEvaluationItemEvaluationRequestRubricRubricContentProperty({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
    };
  }

  factory AiEvaluationItemEvaluationRequestRubricRubricContentProperty.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationRequestRubricRubricContentProperty(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
