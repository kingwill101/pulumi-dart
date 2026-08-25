// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_golden_turn.dart';

class EvaluationGolden {
  /// The evaluation expectations to evaluate the replayed conversation against. Format: projects/{project}/locations/{location}/apps/{app}/evaluationExpectations/{evaluationExpectation}
  final pulumi.Input<List<String>?>? evaluationExpectations;
  /// The golden turns required to replay a golden conversation.
  /// Structure is documented below.
  final pulumi.Input<List<EvaluationGoldenTurn>> turns;

  /// Creates a new [EvaluationGolden].
  /// [evaluationExpectations] The evaluation expectations to evaluate the replayed conversation against. Format: projects/{project}/locations/{location}/apps/{app}/evaluationExpectations/{evaluationExpectation}
  /// [turns] The golden turns required to replay a golden conversation.
  const EvaluationGolden({
    this.evaluationExpectations,
    required this.turns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationExpectations': ?evaluationExpectations,
      'turns': pulumi.Input.mapInputValue<List<EvaluationGoldenTurn>, List<Map<String, dynamic>>>(turns, (value) => pulumi.Input.encodeList<EvaluationGoldenTurn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EvaluationGolden.fromMap(Map<String, dynamic> map) {
    return EvaluationGolden(
      evaluationExpectations: (() { final guardedValue = map['evaluationExpectations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      turns: pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationGoldenTurn>(map['turns']!, (value) => EvaluationGoldenTurn.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
