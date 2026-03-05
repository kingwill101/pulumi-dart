// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'individual_outcome.dart';
import 'primary_step_roll_up.dart';

/// Stores rollup test status of multiple steps that were run as a group and outcome of each individual step.
class PrimaryStep {
  /// Step Id and outcome of each individual step.
  final pulumi.Input<List<IndividualOutcome>>? individualOutcome;
  /// Rollup test status of multiple steps that were run with the same configuration as a group.
  final pulumi.Input<PrimaryStepRollUp>? rollUp;

  /// Creates a new [PrimaryStep].
  /// [individualOutcome] Step Id and outcome of each individual step.
  /// [rollUp] Rollup test status of multiple steps that were run with the same configuration as a group.
  PrimaryStep({
    this.individualOutcome,
    this.rollUp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'individualOutcome': ?pulumi.Input.mapOptionalInputValue<List<IndividualOutcome>, List<Map<String, dynamic>>>(individualOutcome, (value) => pulumi.Input.encodeList<IndividualOutcome, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rollUp': ?pulumi.Input.mapOptionalInputValue<PrimaryStepRollUp, String>(rollUp, (value) => value.wireValue),
    };
  }

  factory PrimaryStep.fromMap(Map<String, dynamic> map) {
    return PrimaryStep(
      individualOutcome: (() { final guardedValue = map['individualOutcome']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IndividualOutcome>(guardedValue, (value) => IndividualOutcome.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rollUp: (() { final guardedValue = map['rollUp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrimaryStepRollUp.fromValue(guardedValue as String)); })(),
    );
  }
}

