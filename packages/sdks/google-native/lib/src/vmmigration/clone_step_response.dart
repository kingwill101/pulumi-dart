// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CloneStep holds information about the clone step progress.
class CloneStepResponse {
  /// Adapting OS step.
  final pulumi.Input<Map<String, dynamic>> adaptingOs;
  /// The time the step has ended.
  final pulumi.Input<String> endTime;
  /// Instantiating migrated VM step.
  final pulumi.Input<Map<String, dynamic>> instantiatingMigratedVm;
  /// Preparing VM disks step.
  final pulumi.Input<Map<String, dynamic>> preparingVmDisks;
  /// The time the step has started.
  final pulumi.Input<String> startTime;

  /// Creates a new [CloneStepResponse].
  /// [adaptingOs] Adapting OS step.
  /// [endTime] The time the step has ended.
  /// [instantiatingMigratedVm] Instantiating migrated VM step.
  /// [preparingVmDisks] Preparing VM disks step.
  /// [startTime] The time the step has started.
  CloneStepResponse({
    required this.adaptingOs,
    required this.endTime,
    required this.instantiatingMigratedVm,
    required this.preparingVmDisks,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptingOs': adaptingOs,
      'endTime': endTime,
      'instantiatingMigratedVm': instantiatingMigratedVm,
      'preparingVmDisks': preparingVmDisks,
      'startTime': startTime,
    };
  }

  factory CloneStepResponse.fromMap(Map<String, dynamic> map) {
    return CloneStepResponse(
      adaptingOs: pulumi.Input.fromValue((map['adaptingOs']! as Map).cast<String, dynamic>()),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      instantiatingMigratedVm: pulumi.Input.fromValue((map['instantiatingMigratedVm']! as Map).cast<String, dynamic>()),
      preparingVmDisks: pulumi.Input.fromValue((map['preparingVmDisks']! as Map).cast<String, dynamic>()),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

