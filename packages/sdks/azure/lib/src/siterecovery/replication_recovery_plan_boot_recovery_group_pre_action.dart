// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicationRecoveryPlanBootRecoveryGroupPreAction {
  /// The fabric location of runbook or script. Possible values are `Primary` and `Recovery`. It must not be specified when `type` is `ManualActionDetails`.
  ///
  /// &gt; **Note:** This is required when `type` is set to `AutomationRunbookActionDetails` or `ScriptActionDetails`.
  final pulumi.Input<String>? fabricLocation;
  /// Directions of fail over. Possible values are `PrimaryToRecovery` and `RecoveryToPrimary`
  final pulumi.Input<List<String>> failOverDirections;
  /// Types of fail over. Possible values are `TestFailover`, `PlannedFailover` and `UnplannedFailover`
  final pulumi.Input<List<String>> failOverTypes;
  /// Instructions of manual action.
  ///
  /// &gt; **Note:** This property is required when `type` is set to `ManualActionDetails`.
  final pulumi.Input<String>? manualActionInstruction;
  /// The name of the Replication Plan. The name can contain only letters, numbers, and hyphens. It should start with a letter and end with a letter or a number. Can be a maximum of 63 characters. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// Id of runbook.
  ///
  /// &gt; **Note:** This property is required when `type` is set to `AutomationRunbookActionDetails`.
  final pulumi.Input<String>? runbookId;
  /// Path of action script.
  ///
  /// &gt; **Note:** This property is required when `type` is set to `ScriptActionDetails`.
  final pulumi.Input<String>? scriptPath;
  /// Type of the action detail. Possible values are `AutomationRunbookActionDetails`, `ManualActionDetails` and `ScriptActionDetails`.
  final pulumi.Input<String> type;

  /// Creates a new [ReplicationRecoveryPlanBootRecoveryGroupPreAction].
  /// [fabricLocation] The fabric location of runbook or script. Possible values are `Primary` and `Recovery`. It must not be specified when `type` is `ManualActionDetails`.
  /// [failOverDirections] Directions of fail over. Possible values are `PrimaryToRecovery` and `RecoveryToPrimary`
  /// [failOverTypes] Types of fail over. Possible values are `TestFailover`, `PlannedFailover` and `UnplannedFailover`
  /// [manualActionInstruction] Instructions of manual action.
  /// [name] The name of the Replication Plan. The name can contain only letters, numbers, and hyphens. It should start with a letter and end with a letter or a number. Can be a maximum of 63 characters. Changing this forces a new resource to be created.
  /// [runbookId] Id of runbook.
  /// [scriptPath] Path of action script.
  /// [type] Type of the action detail. Possible values are `AutomationRunbookActionDetails`, `ManualActionDetails` and `ScriptActionDetails`.
  ReplicationRecoveryPlanBootRecoveryGroupPreAction({
    this.fabricLocation,
    required this.failOverDirections,
    required this.failOverTypes,
    this.manualActionInstruction,
    required this.name,
    this.runbookId,
    this.scriptPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricLocation': ?fabricLocation,
      'failOverDirections': failOverDirections,
      'failOverTypes': failOverTypes,
      'manualActionInstruction': ?manualActionInstruction,
      'name': name,
      'runbookId': ?runbookId,
      'scriptPath': ?scriptPath,
      'type': type,
    };
  }

  factory ReplicationRecoveryPlanBootRecoveryGroupPreAction.fromMap(Map<String, dynamic> map) {
    return ReplicationRecoveryPlanBootRecoveryGroupPreAction(
      fabricLocation: (() { final guardedValue = map['fabricLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failOverDirections: pulumi.Input.fromValue((map['failOverDirections'] as List).cast<String>()),
      failOverTypes: pulumi.Input.fromValue((map['failOverTypes'] as List).cast<String>()),
      manualActionInstruction: (() { final guardedValue = map['manualActionInstruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      runbookId: (() { final guardedValue = map['runbookId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptPath: (() { final guardedValue = map['scriptPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

