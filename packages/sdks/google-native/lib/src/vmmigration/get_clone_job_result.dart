// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'clone_step_response.dart';
import 'compute_engine_disks_target_details_response.dart';
import 'compute_engine_target_details_response.dart';
import 'status_response.dart';

/// Result data returned by getCloneJob.
class GetCloneJobResult {
  /// Details of the target Persistent Disks in Compute Engine.
  final ComputeEngineDisksTargetDetailsResponse? computeEngineDisksTargetDetails;
  /// Details of the target VM in Compute Engine.
  final ComputeEngineTargetDetailsResponse? computeEngineTargetDetails;
  /// The time the clone job was created (as an API call, not when it was actually created in the target).
  final String? createTime;
  /// The time the clone job was ended.
  final String? endTime;
  /// Provides details for the errors that led to the Clone Job's state.
  final StatusResponse? error;
  /// The name of the clone.
  final String? name;
  /// State of the clone job.
  final String? state;
  /// The time the state was last updated.
  final String? stateTime;
  /// The clone steps list representing its progress.
  final List<CloneStepResponse>? steps;

  /// Creates a new [GetCloneJobResult].
  /// [computeEngineDisksTargetDetails] Details of the target Persistent Disks in Compute Engine.
  /// [computeEngineTargetDetails] Details of the target VM in Compute Engine.
  /// [createTime] The time the clone job was created (as an API call, not when it was actually created in the target).
  /// [endTime] The time the clone job was ended.
  /// [error] Provides details for the errors that led to the Clone Job's state.
  /// [name] The name of the clone.
  /// [state] State of the clone job.
  /// [stateTime] The time the state was last updated.
  /// [steps] The clone steps list representing its progress.
  const GetCloneJobResult({
    this.computeEngineDisksTargetDetails,
    this.computeEngineTargetDetails,
    this.createTime,
    this.endTime,
    this.error,
    this.name,
    this.state,
    this.stateTime,
    this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeEngineDisksTargetDetails': ?computeEngineDisksTargetDetails?.toMap(),
      'computeEngineTargetDetails': ?computeEngineTargetDetails?.toMap(),
      'createTime': ?createTime,
      'endTime': ?endTime,
      'error': ?error?.toMap(),
      'name': ?name,
      'state': ?state,
      'stateTime': ?stateTime,
      'steps': ?(() { final guardedValue = steps; if (guardedValue == null) return null; return pulumi.Input.encodeList<CloneStepResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetCloneJobResult.fromMap(Map<String, dynamic> map) {
    return GetCloneJobResult(
      computeEngineDisksTargetDetails: (() { final guardedValue = map['computeEngineDisksTargetDetails']; if (guardedValue == null) return null; return ComputeEngineDisksTargetDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      computeEngineTargetDetails: (() { final guardedValue = map['computeEngineTargetDetails']; if (guardedValue == null) return null; return ComputeEngineTargetDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateTime: (() { final guardedValue = map['stateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      steps: (() { final guardedValue = map['steps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloneStepResponse>(guardedValue, (value) => CloneStepResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
