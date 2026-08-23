// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationGoldenTurnStepExpectationUpdatedVariables {
  /// Dummy property.
  final pulumi.Input<String>? notes;

  /// Creates a new [EvaluationGoldenTurnStepExpectationUpdatedVariables].
  /// [notes] Dummy property.
  const EvaluationGoldenTurnStepExpectationUpdatedVariables({
    this.notes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notes': ?notes,
    };
  }

  factory EvaluationGoldenTurnStepExpectationUpdatedVariables.fromMap(Map<String, dynamic> map) {
    return EvaluationGoldenTurnStepExpectationUpdatedVariables(
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
