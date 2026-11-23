// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEvaluationItemEvaluationResponseCandidateResultRubricVerdict {
  /// (Output)
  /// The full rubric definition that was evaluated, as a JSON string.
  final pulumi.Input<String?>? evaluatedRubric;
  /// (Output)
  /// Human-readable reasoning for the verdict.
  final pulumi.Input<String?>? reasoning;
  /// (Output)
  /// Outcome of the evaluation against the rubric.
  final pulumi.Input<bool?>? verdict;

  /// Creates a new [AiEvaluationItemEvaluationResponseCandidateResultRubricVerdict].
  /// [evaluatedRubric] (Output)
  /// [reasoning] (Output)
  /// [verdict] (Output)
  const AiEvaluationItemEvaluationResponseCandidateResultRubricVerdict({
    this.evaluatedRubric,
    this.reasoning,
    this.verdict,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluatedRubric': ?evaluatedRubric,
      'reasoning': ?reasoning,
      'verdict': ?verdict,
    };
  }

  factory AiEvaluationItemEvaluationResponseCandidateResultRubricVerdict.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationResponseCandidateResultRubricVerdict(
      evaluatedRubric: (() { final guardedValue = map['evaluatedRubric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reasoning: (() { final guardedValue = map['reasoning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verdict: (() { final guardedValue = map['verdict']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
