// ignore_for_file: unused_element, unnecessary_cast


class ReplicationRecoveryPlanShutdownRecoveryGroupPreAction {
  /// The fabric location of runbook or script. Possible values are `Primary` and `Recovery`. It must not be specified when `type` is `ManualActionDetails`.
  ///
  /// > **Note:** This is required when `type` is set to `AutomationRunbookActionDetails` or `ScriptActionDetails`.
  final String? fabricLocation;
  /// Directions of fail over. Possible values are `PrimaryToRecovery` and `RecoveryToPrimary`
  final List<String> failOverDirections;
  /// Types of fail over. Possible values are `TestFailover`, `PlannedFailover` and `UnplannedFailover`
  final List<String> failOverTypes;
  /// Instructions of manual action.
  ///
  /// > **Note:** This property is required when `type` is set to `ManualActionDetails`.
  final String? manualActionInstruction;
  /// The name of the Replication Plan. The name can contain only letters, numbers, and hyphens. It should start with a letter and end with a letter or a number. Can be a maximum of 63 characters. Changing this forces a new resource to be created.
  final String name;
  /// Id of runbook.
  ///
  /// > **Note:** This property is required when `type` is set to `AutomationRunbookActionDetails`.
  final String? runbookId;
  /// Path of action script.
  ///
  /// > **Note:** This property is required when `type` is set to `ScriptActionDetails`.
  final String? scriptPath;
  /// Type of the action detail. Possible values are `AutomationRunbookActionDetails`, `ManualActionDetails` and `ScriptActionDetails`.
  final String type;

  /// Creates a new [ReplicationRecoveryPlanShutdownRecoveryGroupPreAction].
  /// [fabricLocation] The fabric location of runbook or script. Possible values are `Primary` and `Recovery`. It must not be specified when `type` is `ManualActionDetails`.
  /// [failOverDirections] Directions of fail over. Possible values are `PrimaryToRecovery` and `RecoveryToPrimary`
  /// [failOverTypes] Types of fail over. Possible values are `TestFailover`, `PlannedFailover` and `UnplannedFailover`
  /// [manualActionInstruction] Instructions of manual action.
  /// [name] The name of the Replication Plan. The name can contain only letters, numbers, and hyphens. It should start with a letter and end with a letter or a number. Can be a maximum of 63 characters. Changing this forces a new resource to be created.
  /// [runbookId] Id of runbook.
  /// [scriptPath] Path of action script.
  /// [type] Type of the action detail. Possible values are `AutomationRunbookActionDetails`, `ManualActionDetails` and `ScriptActionDetails`.
  ReplicationRecoveryPlanShutdownRecoveryGroupPreAction({
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

  factory ReplicationRecoveryPlanShutdownRecoveryGroupPreAction.fromMap(Map<String, dynamic> map) {
    return ReplicationRecoveryPlanShutdownRecoveryGroupPreAction(
      fabricLocation: map['fabricLocation'] == null ? null : map['fabricLocation'] as String,
      failOverDirections: (map['failOverDirections'] as List).cast<String>(),
      failOverTypes: (map['failOverTypes'] as List).cast<String>(),
      manualActionInstruction: map['manualActionInstruction'] == null ? null : map['manualActionInstruction'] as String,
      name: map['name'] as String,
      runbookId: map['runbookId'] == null ? null : map['runbookId'] as String,
      scriptPath: map['scriptPath'] == null ? null : map['scriptPath'] as String,
      type: map['type'] as String,
    );
  }
}

