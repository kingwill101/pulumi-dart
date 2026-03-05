// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_disks_target_details_response.dart';
import 'compute_engine_target_details_response.dart';
import 'cutover_step_response.dart';
import 'status_response.dart';

/// CutoverJob message describes a cutover of a migrating VM. The CutoverJob is the operation of shutting down the VM, creating a snapshot and clonning the VM using the replicated snapshot.
class CutoverJobResponse {
  /// Details of the target Persistent Disks in Compute Engine.
  final pulumi.Input<ComputeEngineDisksTargetDetailsResponse> computeEngineDisksTargetDetails;
  /// Details of the target VM in Compute Engine.
  final pulumi.Input<ComputeEngineTargetDetailsResponse> computeEngineTargetDetails;
  /// The time the cutover job was created (as an API call, not when it was actually created in the target).
  final pulumi.Input<String> createTime;
  /// The time the cutover job had finished.
  final pulumi.Input<String> endTime;
  /// Provides details for the errors that led to the Cutover Job's state.
  final pulumi.Input<StatusResponse> error;
  /// The name of the cutover job.
  final pulumi.Input<String> name;
  /// The current progress in percentage of the cutover job.
  final pulumi.Input<int> progressPercent;
  /// State of the cutover job.
  final pulumi.Input<String> state;
  /// A message providing possible extra details about the current state.
  final pulumi.Input<String> stateMessage;
  /// The time the state was last updated.
  final pulumi.Input<String> stateTime;
  /// The cutover steps list representing its progress.
  final pulumi.Input<List<CutoverStepResponse>> steps;

  /// Creates a new [CutoverJobResponse].
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
  CutoverJobResponse({
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
      'computeEngineDisksTargetDetails': pulumi.Input.mapInputValue<ComputeEngineDisksTargetDetailsResponse, Map<String, dynamic>>(computeEngineDisksTargetDetails, (value) => value.toMap()),
      'computeEngineTargetDetails': pulumi.Input.mapInputValue<ComputeEngineTargetDetailsResponse, Map<String, dynamic>>(computeEngineTargetDetails, (value) => value.toMap()),
      'createTime': createTime,
      'endTime': endTime,
      'error': pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'name': name,
      'progressPercent': progressPercent,
      'state': state,
      'stateMessage': stateMessage,
      'stateTime': stateTime,
      'steps': pulumi.Input.mapInputValue<List<CutoverStepResponse>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<CutoverStepResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CutoverJobResponse.fromMap(Map<String, dynamic> map) {
    return CutoverJobResponse(
      computeEngineDisksTargetDetails: pulumi.Input.fromValue(ComputeEngineDisksTargetDetailsResponse.fromMap((map['computeEngineDisksTargetDetails']! as Map).cast<String, dynamic>())),
      computeEngineTargetDetails: pulumi.Input.fromValue(ComputeEngineTargetDetailsResponse.fromMap((map['computeEngineTargetDetails']! as Map).cast<String, dynamic>())),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      error: pulumi.Input.fromValue(StatusResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      progressPercent: pulumi.Input.fromValue(map['progressPercent'] as int),
      state: pulumi.Input.fromValue(map['state'] as String),
      stateMessage: pulumi.Input.fromValue(map['stateMessage'] as String),
      stateTime: pulumi.Input.fromValue(map['stateTime'] as String),
      steps: pulumi.Input.fromValue(pulumi.Input.decodeList<CutoverStepResponse>(map['steps']!, (value) => CutoverStepResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

