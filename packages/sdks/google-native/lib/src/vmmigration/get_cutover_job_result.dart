// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_disks_target_details_response.dart';
import 'compute_engine_target_details_response.dart';
import 'cutover_step_response.dart';
import 'status_response.dart';

/// Result data returned by getCutoverJob.
class GetCutoverJobResult {
  /// Details of the target Persistent Disks in Compute Engine.
  final ComputeEngineDisksTargetDetailsResponse computeEngineDisksTargetDetails;
  /// Details of the target VM in Compute Engine.
  final ComputeEngineTargetDetailsResponse computeEngineTargetDetails;
  /// The time the cutover job was created (as an API call, not when it was actually created in the target).
  final String createTime;
  /// The time the cutover job had finished.
  final String endTime;
  /// Provides details for the errors that led to the Cutover Job's state.
  final StatusResponse error;
  /// The name of the cutover job.
  final String name;
  /// The current progress in percentage of the cutover job.
  final int progressPercent;
  /// State of the cutover job.
  final String state;
  /// A message providing possible extra details about the current state.
  final String stateMessage;
  /// The time the state was last updated.
  final String stateTime;
  /// The cutover steps list representing its progress.
  final List<CutoverStepResponse> steps;

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
    required this.computeEngineDisksTargetDetails,
    required this.computeEngineTargetDetails,
    required this.createTime,
    required this.endTime,
    required this.error,
    required this.name,
    required this.progressPercent,
    required this.state,
    required this.stateMessage,
    required this.stateTime,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeEngineDisksTargetDetails': computeEngineDisksTargetDetails.toMap(),
      'computeEngineTargetDetails': computeEngineTargetDetails.toMap(),
      'createTime': createTime,
      'endTime': endTime,
      'error': error.toMap(),
      'name': name,
      'progressPercent': progressPercent,
      'state': state,
      'stateMessage': stateMessage,
      'stateTime': stateTime,
      'steps': pulumi.Input.encodeList<CutoverStepResponse, Map<String, dynamic>>(steps, (value) => value.toMap()),
    };
  }

  factory GetCutoverJobResult.fromMap(Map<String, dynamic> map) {
    return GetCutoverJobResult(
      computeEngineDisksTargetDetails: ComputeEngineDisksTargetDetailsResponse.fromMap((map['computeEngineDisksTargetDetails']! as Map).cast<String, dynamic>()),
      computeEngineTargetDetails: ComputeEngineTargetDetailsResponse.fromMap((map['computeEngineTargetDetails']! as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      error: StatusResponse.fromMap((map['error']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      progressPercent: map['progressPercent'] as int,
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      stateTime: map['stateTime'] as String,
      steps: pulumi.Input.decodeList<CutoverStepResponse>(map['steps']!, (value) => CutoverStepResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

