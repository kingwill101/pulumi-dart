// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReplicationRecoveryPlanRecoveryGroupPostAction {
  /// The fabric location of runbook or script.
  final pulumi.Input<String> fabricLocation;
  /// Directions of fail over.
  final pulumi.Input<List<String>> failOverDirections;
  /// Types of fail over.
  final pulumi.Input<List<String>> failOverTypes;
  /// Instructions of manual action.
  final pulumi.Input<String> manualActionInstruction;
  /// The name of the Replication Plan.
  final pulumi.Input<String> name;
  /// Id of runbook.
  final pulumi.Input<String> runbookId;
  /// Path of action script.
  final pulumi.Input<String> scriptPath;
  /// Type of the action detail.
  final pulumi.Input<String> type;

  /// Creates a new [GetReplicationRecoveryPlanRecoveryGroupPostAction].
  /// [fabricLocation] The fabric location of runbook or script.
  /// [failOverDirections] Directions of fail over.
  /// [failOverTypes] Types of fail over.
  /// [manualActionInstruction] Instructions of manual action.
  /// [name] The name of the Replication Plan.
  /// [runbookId] Id of runbook.
  /// [scriptPath] Path of action script.
  /// [type] Type of the action detail.
  GetReplicationRecoveryPlanRecoveryGroupPostAction({
    required this.fabricLocation,
    required this.failOverDirections,
    required this.failOverTypes,
    required this.manualActionInstruction,
    required this.name,
    required this.runbookId,
    required this.scriptPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricLocation': fabricLocation,
      'failOverDirections': failOverDirections,
      'failOverTypes': failOverTypes,
      'manualActionInstruction': manualActionInstruction,
      'name': name,
      'runbookId': runbookId,
      'scriptPath': scriptPath,
      'type': type,
    };
  }

  factory GetReplicationRecoveryPlanRecoveryGroupPostAction.fromMap(Map<String, dynamic> map) {
    return GetReplicationRecoveryPlanRecoveryGroupPostAction(
      fabricLocation: (map['fabricLocation'] as String).input(),
      failOverDirections: ((map['failOverDirections'] as List).cast<String>()).input(),
      failOverTypes: ((map['failOverTypes'] as List).cast<String>()).input(),
      manualActionInstruction: (map['manualActionInstruction'] as String).input(),
      name: (map['name'] as String).input(),
      runbookId: (map['runbookId'] as String).input(),
      scriptPath: (map['scriptPath'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

