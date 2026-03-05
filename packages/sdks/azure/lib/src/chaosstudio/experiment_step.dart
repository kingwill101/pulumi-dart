// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_step_branch.dart';

class ExperimentStep {
  /// One or more `branch` blocks as defined above.
  final pulumi.Input<List<ExperimentStepBranch>> branches;
  /// The name of the Step.
  final pulumi.Input<String> name;

  /// Creates a new [ExperimentStep].
  /// [branches] One or more `branch` blocks as defined above.
  /// [name] The name of the Step.
  ExperimentStep({
    required this.branches,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branches': pulumi.Input.mapInputValue<List<ExperimentStepBranch>, List<Map<String, dynamic>>>(branches, (value) => pulumi.Input.encodeList<ExperimentStepBranch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory ExperimentStep.fromMap(Map<String, dynamic> map) {
    return ExperimentStep(
      branches: pulumi.Input.fromValue(pulumi.Input.decodeList<ExperimentStepBranch>(map['branches']!, (value) => ExperimentStepBranch.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

