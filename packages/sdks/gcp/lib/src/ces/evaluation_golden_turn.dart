// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_golden_turn_root_span.dart';
import 'evaluation_golden_turn_step.dart';

class EvaluationGoldenTurn {
  /// (Output)
  /// The root span of the golden turn for processing and maintaining audio information.
  /// Structure is documented below.
  final pulumi.Input<List<EvaluationGoldenTurnRootSpan>?>? rootSpans;
  /// The sequence of steps required to replay a golden conversation turn.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedGoldenTurnsRootSpan"&gt;&lt;/a&gt;The `rootSpan` block contains:
  final pulumi.Input<List<EvaluationGoldenTurnStep>> steps;

  /// Creates a new [EvaluationGoldenTurn].
  /// [rootSpans] (Output)
  /// [steps] The sequence of steps required to replay a golden conversation turn.
  const EvaluationGoldenTurn({
    this.rootSpans,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rootSpans': ?pulumi.Input.mapOptionalInputValue<List<EvaluationGoldenTurnRootSpan>, List<Map<String, dynamic>>>(rootSpans, (value) => pulumi.Input.encodeList<EvaluationGoldenTurnRootSpan, Map<String, dynamic>>(value, (value) => value.toMap())),
      'steps': pulumi.Input.mapInputValue<List<EvaluationGoldenTurnStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<EvaluationGoldenTurnStep, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EvaluationGoldenTurn.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurn(
      rootSpans: (() { final guardedValue = map['rootSpans']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationGoldenTurnRootSpan>(guardedValue, (value) => EvaluationGoldenTurnRootSpan.fromMap((value as Map).cast<String, dynamic>()))); })(),
      steps: pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationGoldenTurnStep>(map['steps']!, (value) => EvaluationGoldenTurnStep.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
