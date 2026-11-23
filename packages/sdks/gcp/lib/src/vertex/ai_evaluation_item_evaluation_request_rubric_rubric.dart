// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_item_evaluation_request_rubric_rubric_content.dart';

class AiEvaluationItemEvaluationRequestRubricRubric {
  /// The actual testable criteria for the rubric.
  /// Structure is documented below.
  final pulumi.Input<AiEvaluationItemEvaluationRequestRubricRubricContent> content;
  /// The relative importance of this rubric.
  /// Possible values are: `HIGH`, `MEDIUM`, `LOW`.
  final pulumi.Input<String?>? importance;
  /// Unique identifier for the rubric.
  final pulumi.Input<String?>? rubricId;
  /// A type designator for the rubric, e.g. `SUMMARIZATION_QUALITY`.
  final pulumi.Input<String?>? type;

  /// Creates a new [AiEvaluationItemEvaluationRequestRubricRubric].
  /// [content] The actual testable criteria for the rubric.
  /// [importance] The relative importance of this rubric.
  /// [rubricId] Unique identifier for the rubric.
  /// [type] A type designator for the rubric, e.g. `SUMMARIZATION_QUALITY`.
  const AiEvaluationItemEvaluationRequestRubricRubric({
    required this.content,
    this.importance,
    this.rubricId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': pulumi.Input.mapInputValue<AiEvaluationItemEvaluationRequestRubricRubricContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'importance': ?importance,
      'rubricId': ?rubricId,
      'type': ?type,
    };
  }

  factory AiEvaluationItemEvaluationRequestRubricRubric.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationRequestRubricRubric(
      content: pulumi.Input.fromValue(AiEvaluationItemEvaluationRequestRubricRubricContent.fromMap((map['content']! as Map).cast<String, dynamic>())),
      importance: (() { final guardedValue = map['importance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rubricId: (() { final guardedValue = map['rubricId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
