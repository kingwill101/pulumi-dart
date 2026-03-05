// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_step_branch_action.dart';

class ExperimentStepBranch {
  /// One or more `actions` blocks as defined above.
  final pulumi.Input<List<ExperimentStepBranchAction>> actions;
  /// The name of the branch.
  final pulumi.Input<String> name;

  /// Creates a new [ExperimentStepBranch].
  /// [actions] One or more `actions` blocks as defined above.
  /// [name] The name of the branch.
  ExperimentStepBranch({
    required this.actions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<ExperimentStepBranchAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ExperimentStepBranchAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory ExperimentStepBranch.fromMap(Map<String, dynamic> map) {
    return ExperimentStepBranch(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<ExperimentStepBranchAction>(map['actions']!, (value) => ExperimentStepBranchAction.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

