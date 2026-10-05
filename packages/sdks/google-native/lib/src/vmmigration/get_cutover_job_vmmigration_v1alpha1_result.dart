// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_disks_target_details_response_vmmigration_v1alpha1.dart';
import 'compute_engine_target_details_response_vmmigration_v1alpha1.dart';
import 'cutover_step_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'target_vmdetails_response.dart';

/// Result data returned by getCutoverJob.
class GetCutoverJobVmmigrationV1alpha1Result {
  /// Details of the target Persistent Disks in Compute Engine.
  final ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1? computeEngineDisksTargetDetails;
  /// Details of the target VM in Compute Engine.
  final ComputeEngineTargetDetailsResponseVmmigrationV1alpha1? computeEngineTargetDetails;
  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_details instead.
  final TargetVMDetailsResponse? computeEngineVmDetails;
  /// The time the cutover job was created (as an API call, not when it was actually created in the target).
  final String? createTime;
  /// The time the cutover job had finished.
  final String? endTime;
  /// Provides details for the errors that led to the Cutover Job's state.
  final StatusResponseVmmigrationV1alpha1? error;
  /// The name of the cutover job.
  final String? name;
  /// The current progress in percentage of the cutover job.
  final int? progress;
  /// The current progress in percentage of the cutover job.
  final int? progressPercent;
  /// State of the cutover job.
  final String? state;
  /// A message providing possible extra details about the current state.
  final String? stateMessage;
  /// The time the state was last updated.
  final String? stateTime;
  /// The cutover steps list representing its progress.
  final List<CutoverStepResponseVmmigrationV1alpha1>? steps;
  /// Details of the VM to create as the target of this cutover job. Deprecated: Use compute_engine_target_details instead.
  final TargetVMDetailsResponse? targetDetails;

  /// Creates a new [GetCutoverJobVmmigrationV1alpha1Result].
  /// [computeEngineDisksTargetDetails] Details of the target Persistent Disks in Compute Engine.
  /// [computeEngineTargetDetails] Details of the target VM in Compute Engine.
  /// [computeEngineVmDetails] Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_details instead.
  /// [createTime] The time the cutover job was created (as an API call, not when it was actually created in the target).
  /// [endTime] The time the cutover job had finished.
  /// [error] Provides details for the errors that led to the Cutover Job's state.
  /// [name] The name of the cutover job.
  /// [progress] The current progress in percentage of the cutover job.
  /// [progressPercent] The current progress in percentage of the cutover job.
  /// [state] State of the cutover job.
  /// [stateMessage] A message providing possible extra details about the current state.
  /// [stateTime] The time the state was last updated.
  /// [steps] The cutover steps list representing its progress.
  /// [targetDetails] Details of the VM to create as the target of this cutover job. Deprecated: Use compute_engine_target_details instead.
  const GetCutoverJobVmmigrationV1alpha1Result({
    this.computeEngineDisksTargetDetails,
    this.computeEngineTargetDetails,
    this.computeEngineVmDetails,
    this.createTime,
    this.endTime,
    this.error,
    this.name,
    this.progress,
    this.progressPercent,
    this.state,
    this.stateMessage,
    this.stateTime,
    this.steps,
    this.targetDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeEngineDisksTargetDetails': ?computeEngineDisksTargetDetails?.toMap(),
      'computeEngineTargetDetails': ?computeEngineTargetDetails?.toMap(),
      'computeEngineVmDetails': ?computeEngineVmDetails?.toMap(),
      'createTime': ?createTime,
      'endTime': ?endTime,
      'error': ?error?.toMap(),
      'name': ?name,
      'progress': ?progress,
      'progressPercent': ?progressPercent,
      'state': ?state,
      'stateMessage': ?stateMessage,
      'stateTime': ?stateTime,
      'steps': ?(() { final guardedValue = steps; if (guardedValue == null) return null; return pulumi.Input.encodeList<CutoverStepResponseVmmigrationV1alpha1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'targetDetails': ?targetDetails?.toMap(),
    };
  }

  factory GetCutoverJobVmmigrationV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetCutoverJobVmmigrationV1alpha1Result(
      computeEngineDisksTargetDetails: (() { final guardedValue = map['computeEngineDisksTargetDetails']; if (guardedValue == null) return null; return ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      computeEngineTargetDetails: (() { final guardedValue = map['computeEngineTargetDetails']; if (guardedValue == null) return null; return ComputeEngineTargetDetailsResponseVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      computeEngineVmDetails: (() { final guardedValue = map['computeEngineVmDetails']; if (guardedValue == null) return null; return TargetVMDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return StatusResponseVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      progress: (() { final guardedValue = map['progress']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      progressPercent: (() { final guardedValue = map['progressPercent']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateTime: (() { final guardedValue = map['stateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      steps: (() { final guardedValue = map['steps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CutoverStepResponseVmmigrationV1alpha1>(guardedValue, (value) => CutoverStepResponseVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>())); })(),
      targetDetails: (() { final guardedValue = map['targetDetails']; if (guardedValue == null) return null; return TargetVMDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
