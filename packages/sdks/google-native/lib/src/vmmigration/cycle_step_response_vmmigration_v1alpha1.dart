// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicating_step_response_vmmigration_v1alpha1.dart';

/// CycleStep holds information about a step progress.
class CycleStepResponseVmmigrationV1alpha1 {
  /// The time the cycle step has ended.
  final pulumi.Input<String> endTime;
  /// Initializing replication step.
  final pulumi.Input<Map<String, dynamic>> initializingReplication;
  /// Post processing step.
  final pulumi.Input<Map<String, dynamic>> postProcessing;
  /// Replicating step.
  final pulumi.Input<ReplicatingStepResponseVmmigrationV1alpha1> replicating;
  /// The time the cycle step has started.
  final pulumi.Input<String> startTime;

  /// Creates a new [CycleStepResponseVmmigrationV1alpha1].
  /// [endTime] The time the cycle step has ended.
  /// [initializingReplication] Initializing replication step.
  /// [postProcessing] Post processing step.
  /// [replicating] Replicating step.
  /// [startTime] The time the cycle step has started.
  const CycleStepResponseVmmigrationV1alpha1({
    required this.endTime,
    required this.initializingReplication,
    required this.postProcessing,
    required this.replicating,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'initializingReplication': initializingReplication,
      'postProcessing': postProcessing,
      'replicating': pulumi.Input.mapInputValue<ReplicatingStepResponseVmmigrationV1alpha1, Map<String, dynamic>>(replicating, (value) => value.toMap()),
      'startTime': startTime,
    };
  }

  factory CycleStepResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return CycleStepResponseVmmigrationV1alpha1(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      initializingReplication: pulumi.Input.fromValue((map['initializingReplication']! as Map).cast<String, dynamic>()),
      postProcessing: pulumi.Input.fromValue((map['postProcessing']! as Map).cast<String, dynamic>()),
      replicating: pulumi.Input.fromValue(ReplicatingStepResponseVmmigrationV1alpha1.fromMap((map['replicating']! as Map).cast<String, dynamic>())),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

