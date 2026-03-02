// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicating_step_response.dart';

/// CycleStep holds information about a step progress.
class CycleStepResponse {
  /// The time the cycle step has ended.
  final pulumi.Input<String> endTime;
  /// Initializing replication step.
  final pulumi.Input<Map<String, dynamic>> initializingReplication;
  /// Post processing step.
  final pulumi.Input<Map<String, dynamic>> postProcessing;
  /// Replicating step.
  final pulumi.Input<ReplicatingStepResponse> replicating;
  /// The time the cycle step has started.
  final pulumi.Input<String> startTime;

  /// Creates a new [CycleStepResponse].
  /// [endTime] The time the cycle step has ended.
  /// [initializingReplication] Initializing replication step.
  /// [postProcessing] Post processing step.
  /// [replicating] Replicating step.
  /// [startTime] The time the cycle step has started.
  CycleStepResponse({
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
      'replicating': pulumi.Input.mapInputValue<ReplicatingStepResponse, Map<String, dynamic>>(replicating, (value) => value.toMap()),
      'startTime': startTime,
    };
  }

  factory CycleStepResponse.fromMap(Map<String, dynamic> map) {
    return CycleStepResponse(
      endTime: (map['endTime'] as String).input(),
      initializingReplication: ((map['initializingReplication'] as Map).cast<String, dynamic>()).input(),
      postProcessing: ((map['postProcessing'] as Map).cast<String, dynamic>()).input(),
      replicating: (ReplicatingStepResponse.fromMap((map['replicating'] as Map).cast<String, dynamic>())).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

