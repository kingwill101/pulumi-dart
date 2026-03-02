// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'clone_step_response.dart';
import 'compute_engine_disks_target_details_response.dart';
import 'compute_engine_target_details_response.dart';
import 'status_response.dart';

/// CloneJob describes the process of creating a clone of a MigratingVM to the requested target based on the latest successful uploaded snapshots. While the migration cycles of a MigratingVm take place, it is possible to verify the uploaded VM can be started in the cloud, by creating a clone. The clone can be created without any downtime, and it is created using the latest snapshots which are already in the cloud. The cloneJob is only responsible for its work, not its products, which means once it is finished, it will never touch the instance it created. It will only delete it in case of the CloneJob being cancelled or upon failure to clone.
class CloneJobResponse {
  /// Details of the target Persistent Disks in Compute Engine.
  final pulumi.Input<ComputeEngineDisksTargetDetailsResponse> computeEngineDisksTargetDetails;
  /// Details of the target VM in Compute Engine.
  final pulumi.Input<ComputeEngineTargetDetailsResponse> computeEngineTargetDetails;
  /// The time the clone job was created (as an API call, not when it was actually created in the target).
  final pulumi.Input<String> createTime;
  /// The time the clone job was ended.
  final pulumi.Input<String> endTime;
  /// Provides details for the errors that led to the Clone Job's state.
  final pulumi.Input<StatusResponse> error;
  /// The name of the clone.
  final pulumi.Input<String> name;
  /// State of the clone job.
  final pulumi.Input<String> state;
  /// The time the state was last updated.
  final pulumi.Input<String> stateTime;
  /// The clone steps list representing its progress.
  final pulumi.Input<List<CloneStepResponse>> steps;

  /// Creates a new [CloneJobResponse].
  /// [computeEngineDisksTargetDetails] Details of the target Persistent Disks in Compute Engine.
  /// [computeEngineTargetDetails] Details of the target VM in Compute Engine.
  /// [createTime] The time the clone job was created (as an API call, not when it was actually created in the target).
  /// [endTime] The time the clone job was ended.
  /// [error] Provides details for the errors that led to the Clone Job's state.
  /// [name] The name of the clone.
  /// [state] State of the clone job.
  /// [stateTime] The time the state was last updated.
  /// [steps] The clone steps list representing its progress.
  CloneJobResponse({
    required this.computeEngineDisksTargetDetails,
    required this.computeEngineTargetDetails,
    required this.createTime,
    required this.endTime,
    required this.error,
    required this.name,
    required this.state,
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
      'state': state,
      'stateTime': stateTime,
      'steps': pulumi.Input.mapInputValue<List<CloneStepResponse>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<CloneStepResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CloneJobResponse.fromMap(Map<String, dynamic> map) {
    return CloneJobResponse(
      computeEngineDisksTargetDetails: (ComputeEngineDisksTargetDetailsResponse.fromMap((map['computeEngineDisksTargetDetails'] as Map).cast<String, dynamic>())).input(),
      computeEngineTargetDetails: (ComputeEngineTargetDetailsResponse.fromMap((map['computeEngineTargetDetails'] as Map).cast<String, dynamic>())).input(),
      createTime: (map['createTime'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      error: (StatusResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      state: (map['state'] as String).input(),
      stateTime: (map['stateTime'] as String).input(),
      steps: (pulumi.Input.decodeList<CloneStepResponse>(map['steps'], (value) => CloneStepResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

