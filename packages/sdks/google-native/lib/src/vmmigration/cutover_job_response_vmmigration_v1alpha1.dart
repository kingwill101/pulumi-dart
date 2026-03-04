// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_disks_target_details_response_vmmigration_v1alpha1.dart';
import 'compute_engine_target_details_response_vmmigration_v1alpha1.dart';
import 'cutover_step_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'target_vmdetails_response.dart';

/// CutoverJob message describes a cutover of a migrating VM. The CutoverJob is the operation of shutting down the VM, creating a snapshot and clonning the VM using the replicated snapshot.
class CutoverJobResponseVmmigrationV1alpha1 {
  /// Details of the target Persistent Disks in Compute Engine.
  final pulumi.Input<ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1>
  computeEngineDisksTargetDetails;

  /// Details of the target VM in Compute Engine.
  final pulumi.Input<ComputeEngineTargetDetailsResponseVmmigrationV1alpha1>
  computeEngineTargetDetails;

  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_details instead.
  final pulumi.Input<TargetVMDetailsResponse> computeEngineVmDetails;

  /// The time the cutover job was created (as an API call, not when it was actually created in the target).
  final pulumi.Input<String> createTime;

  /// The time the cutover job had finished.
  final pulumi.Input<String> endTime;

  /// Provides details for the errors that led to the Cutover Job's state.
  final pulumi.Input<StatusResponseVmmigrationV1alpha1> error;

  /// The name of the cutover job.
  final pulumi.Input<String> name;

  /// The current progress in percentage of the cutover job.
  final pulumi.Input<int> progress;

  /// The current progress in percentage of the cutover job.
  final pulumi.Input<int> progressPercent;

  /// State of the cutover job.
  final pulumi.Input<String> state;

  /// A message providing possible extra details about the current state.
  final pulumi.Input<String> stateMessage;

  /// The time the state was last updated.
  final pulumi.Input<String> stateTime;

  /// The cutover steps list representing its progress.
  final pulumi.Input<List<CutoverStepResponseVmmigrationV1alpha1>> steps;

  /// Details of the VM to create as the target of this cutover job. Deprecated: Use compute_engine_target_details instead.
  final pulumi.Input<TargetVMDetailsResponse> targetDetails;

  /// Creates a new [CutoverJobResponseVmmigrationV1alpha1].
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
  CutoverJobResponseVmmigrationV1alpha1({
    required this.computeEngineDisksTargetDetails,
    required this.computeEngineTargetDetails,
    required this.computeEngineVmDetails,
    required this.createTime,
    required this.endTime,
    required this.error,
    required this.name,
    required this.progress,
    required this.progressPercent,
    required this.state,
    required this.stateMessage,
    required this.stateTime,
    required this.steps,
    required this.targetDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeEngineDisksTargetDetails':
          pulumi.Input.mapInputValue<
            ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1,
            Map<String, dynamic>
          >(computeEngineDisksTargetDetails, (value) => value.toMap()),
      'computeEngineTargetDetails':
          pulumi.Input.mapInputValue<
            ComputeEngineTargetDetailsResponseVmmigrationV1alpha1,
            Map<String, dynamic>
          >(computeEngineTargetDetails, (value) => value.toMap()),
      'computeEngineVmDetails':
          pulumi.Input.mapInputValue<
            TargetVMDetailsResponse,
            Map<String, dynamic>
          >(computeEngineVmDetails, (value) => value.toMap()),
      'createTime': createTime,
      'endTime': endTime,
      'error':
          pulumi.Input.mapInputValue<
            StatusResponseVmmigrationV1alpha1,
            Map<String, dynamic>
          >(error, (value) => value.toMap()),
      'name': name,
      'progress': progress,
      'progressPercent': progressPercent,
      'state': state,
      'stateMessage': stateMessage,
      'stateTime': stateTime,
      'steps':
          pulumi.Input.mapInputValue<
            List<CutoverStepResponseVmmigrationV1alpha1>,
            List<Map<String, dynamic>>
          >(
            steps,
            (value) =>
                pulumi.Input.encodeList<
                  CutoverStepResponseVmmigrationV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetDetails':
          pulumi.Input.mapInputValue<
            TargetVMDetailsResponse,
            Map<String, dynamic>
          >(targetDetails, (value) => value.toMap()),
    };
  }

  factory CutoverJobResponseVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CutoverJobResponseVmmigrationV1alpha1(
      computeEngineDisksTargetDetails: pulumi.Input.fromValue(
        ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1.fromMap(
          (map['computeEngineDisksTargetDetails']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      computeEngineTargetDetails: pulumi.Input.fromValue(
        ComputeEngineTargetDetailsResponseVmmigrationV1alpha1.fromMap(
          (map['computeEngineTargetDetails']! as Map).cast<String, dynamic>(),
        ),
      ),
      computeEngineVmDetails: pulumi.Input.fromValue(
        TargetVMDetailsResponse.fromMap(
          (map['computeEngineVmDetails']! as Map).cast<String, dynamic>(),
        ),
      ),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      error: pulumi.Input.fromValue(
        StatusResponseVmmigrationV1alpha1.fromMap(
          (map['error']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      progress: pulumi.Input.fromValue(map['progress'] as int),
      progressPercent: pulumi.Input.fromValue(map['progressPercent'] as int),
      state: pulumi.Input.fromValue(map['state'] as String),
      stateMessage: pulumi.Input.fromValue(map['stateMessage'] as String),
      stateTime: pulumi.Input.fromValue(map['stateTime'] as String),
      steps: pulumi.Input.fromValue(
        pulumi.Input.decodeList<CutoverStepResponseVmmigrationV1alpha1>(
          map['steps']!,
          (value) => CutoverStepResponseVmmigrationV1alpha1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      targetDetails: pulumi.Input.fromValue(
        TargetVMDetailsResponse.fromMap(
          (map['targetDetails']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
