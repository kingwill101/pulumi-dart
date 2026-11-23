// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_evaluation_item_evaluation_request_rubric_rubric.dart';

class AiEvaluationItemEvaluationRequestRubric {
  /// Human-readable name for the group.
  final pulumi.Input<String?>? displayName;
  /// Unique identifier for the group.
  final pulumi.Input<String?>? groupId;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> name;
  /// Rubrics that are part of this group.
  /// Structure is documented below.
  final pulumi.Input<List<AiEvaluationItemEvaluationRequestRubricRubric>?>? rubrics;

  /// Creates a new [AiEvaluationItemEvaluationRequestRubric].
  /// [displayName] Human-readable name for the group.
  /// [groupId] Unique identifier for the group.
  /// [name] The identifier for this object. Format specified above.
  /// [rubrics] Rubrics that are part of this group.
  const AiEvaluationItemEvaluationRequestRubric({
    this.displayName,
    this.groupId,
    required this.name,
    this.rubrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'groupId': ?groupId,
      'name': name,
      'rubrics': ?pulumi.Input.mapOptionalInputValue<List<AiEvaluationItemEvaluationRequestRubricRubric>, List<Map<String, dynamic>>>(rubrics, (value) => pulumi.Input.encodeList<AiEvaluationItemEvaluationRequestRubricRubric, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiEvaluationItemEvaluationRequestRubric.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationRequestRubric(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      rubrics: (() { final guardedValue = map['rubrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiEvaluationItemEvaluationRequestRubricRubric>(guardedValue, (value) => AiEvaluationItemEvaluationRequestRubricRubric.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
