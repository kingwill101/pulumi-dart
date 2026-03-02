// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'primary_step.dart';

/// Details when multiple steps are run with the same configuration as a group.
class MultiStep {
  /// Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The primary step is 0.
  final pulumi.Input<int>? multistepNumber;
  /// Present if it is a primary (original) step.
  final pulumi.Input<PrimaryStep>? primaryStep;
  /// Step Id of the primary (original) step, which might be this step.
  final pulumi.Input<String>? primaryStepId;

  /// Creates a new [MultiStep].
  /// [multistepNumber] Unique int given to each step. Ranges from 0(inclusive) to total number of steps(exclusive). The primary step is 0.
  /// [primaryStep] Present if it is a primary (original) step.
  /// [primaryStepId] Step Id of the primary (original) step, which might be this step.
  MultiStep({
    this.multistepNumber,
    this.primaryStep,
    this.primaryStepId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'multistepNumber': ?multistepNumber,
      'primaryStep': ?pulumi.Input.mapOptionalInputValue<PrimaryStep, Map<String, dynamic>>(primaryStep, (value) => value.toMap()),
      'primaryStepId': ?primaryStepId,
    };
  }

  factory MultiStep.fromMap(Map<String, dynamic> map) {
    return MultiStep(
      multistepNumber: map['multistepNumber'] == null ? null : (map['multistepNumber']! as int).input(),
      primaryStep: map['primaryStep'] == null ? null : (PrimaryStep.fromMap((map['primaryStep']! as Map).cast<String, dynamic>())).input(),
      primaryStepId: map['primaryStepId'] == null ? null : (map['primaryStepId']! as String).input(),
    );
  }
}

