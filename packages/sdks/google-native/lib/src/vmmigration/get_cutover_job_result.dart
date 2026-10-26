// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_disks_target_details_response.dart';
import 'compute_engine_target_details_response.dart';
import 'cutover_step_response.dart';
import 'status_response.dart';

/// Result data returned by getCutoverJob.
class GetCutoverJobResult {
  /// Details of the target Persistent Disks in Compute Engine.
  final ComputeEngineDisksTargetDetailsResponse? computeEngineDisksTargetDetails;
  /// Details of the target VM in Compute Engine.
  final ComputeEngineTargetDetailsResponse? computeEngineTargetDetails;
  /// The time the cutover job was created (as an API call, not when it was actually created in the target).
  final String? createTime;
  /// The time the cutover job had finished.
  final String? endTime;
  /// Provides details for the errors that led to the Cutover Job's state.
  final StatusResponse? error;
  /// The name of the cutover job.
  final String? name;
  /// The current progress in percentage of the cutover job.
  final int? progressPercent;
  /// State of the cutover job.
  final String? state;
  /// A message providing possible extra details about the current state.
  final String? stateMessage;
  /// The time the state was last updated.
  final String? stateTime;
  /// The cutover steps list representing its progress.
  final List<CutoverStepResponse>? steps;

  /// Creates a new [GetCutoverJobResult].
  /// [computeEngineDisksTargetDetails] Details of the target Persistent Disks in Compute Engine.
  /// [computeEngineTargetDetails] Details of the target VM in Compute Engine.
  /// [createTime] The time the cutover job was created (as an API call, not when it was actually created in the target).
  /// [endTime] The time the cutover job had finished.
  /// [error] Provides details for the errors that led to the Cutover Job's state.
  /// [name] The name of the cutover job.
  /// [progressPercent] The current progress in percentage of the cutover job.
  /// [state] State of the cutover job.
  /// [stateMessage] A message providing possible extra details about the current state.
  /// [stateTime] The time the state was last updated.
  /// [steps] The cutover steps list representing its progress.
  const GetCutoverJobResult({
    this.computeEngineDisksTargetDetails,
    this.computeEngineTargetDetails,
    this.createTime,
    this.endTime,
    this.error,
    this.name,
    this.progressPercent,
    this.state,
    this.stateMessage,
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
      'progressPercent': ?progressPercent,
      'state': ?state,
      'stateMessage': ?stateMessage,
      'stateTime': ?stateTime,
      'steps': ?(() { final guardedValue = steps; if (guardedValue == null) return null; return pulumi.Input.encodeList<CutoverStepResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetCutoverJobResult.fromMap(Map<String, dynamic> map) {
    return GetCutoverJobResult(
      computeEngineDisksTargetDetails: (() { final guardedValue = map['computeEngineDisksTargetDetails']; if (guardedValue == null) return null; return ComputeEngineDisksTargetDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      computeEngineTargetDetails: (() { final guardedValue = map['computeEngineTargetDetails']; if (guardedValue == null) return null; return ComputeEngineTargetDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      progressPercent: (() { final guardedValue = map['progressPercent']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateTime: (() { final guardedValue = map['stateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      steps: (() { final guardedValue = map['steps']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CutoverStepResponse>(guardedValue, (value) => CutoverStepResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
