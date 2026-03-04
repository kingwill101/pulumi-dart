// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'clone_step_response_vmmigration_v1alpha1.dart';
import 'compute_engine_disks_target_details_response_vmmigration_v1alpha1.dart';
import 'compute_engine_target_details_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'target_vmdetails_response.dart';

/// CloneJob describes the process of creating a clone of a MigratingVM to the requested target based on the latest successful uploaded snapshots. While the migration cycles of a MigratingVm take place, it is possible to verify the uploaded VM can be started in the cloud, by creating a clone. The clone can be created without any downtime, and it is created using the latest snapshots which are already in the cloud. The cloneJob is only responsible for its work, not its products, which means once it is finished, it will never touch the instance it created. It will only delete it in case of the CloneJob being cancelled or upon failure to clone.
class CloneJobResponseVmmigrationV1alpha1 {
  /// Details of the target Persistent Disks in Compute Engine.
  final pulumi.Input<ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1>
  computeEngineDisksTargetDetails;

  /// Details of the target VM in Compute Engine.
  final pulumi.Input<ComputeEngineTargetDetailsResponseVmmigrationV1alpha1>
  computeEngineTargetDetails;

  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_details instead.
  final pulumi.Input<TargetVMDetailsResponse> computeEngineVmDetails;

  /// The time the clone job was created (as an API call, not when it was actually created in the target).
  final pulumi.Input<String> createTime;

  /// The time the clone job was ended.
  final pulumi.Input<String> endTime;

  /// Provides details for the errors that led to the Clone Job's state.
  final pulumi.Input<StatusResponseVmmigrationV1alpha1> error;

  /// The name of the clone.
  final pulumi.Input<String> name;

  /// State of the clone job.
  final pulumi.Input<String> state;

  /// The time the state was last updated.
  final pulumi.Input<String> stateTime;

  /// The clone steps list representing its progress.
  final pulumi.Input<List<CloneStepResponseVmmigrationV1alpha1>> steps;

  /// Details of the VM to create as the target of this clone job. Deprecated: Use compute_engine_target_details instead.
  final pulumi.Input<TargetVMDetailsResponse> targetDetails;

  /// Creates a new [CloneJobResponseVmmigrationV1alpha1].
  /// [computeEngineDisksTargetDetails] Details of the target Persistent Disks in Compute Engine.
  /// [computeEngineTargetDetails] Details of the target VM in Compute Engine.
  /// [computeEngineVmDetails] Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_details instead.
  /// [createTime] The time the clone job was created (as an API call, not when it was actually created in the target).
  /// [endTime] The time the clone job was ended.
  /// [error] Provides details for the errors that led to the Clone Job's state.
  /// [name] The name of the clone.
  /// [state] State of the clone job.
  /// [stateTime] The time the state was last updated.
  /// [steps] The clone steps list representing its progress.
  /// [targetDetails] Details of the VM to create as the target of this clone job. Deprecated: Use compute_engine_target_details instead.
  CloneJobResponseVmmigrationV1alpha1({
    required this.computeEngineDisksTargetDetails,
    required this.computeEngineTargetDetails,
    required this.computeEngineVmDetails,
    required this.createTime,
    required this.endTime,
    required this.error,
    required this.name,
    required this.state,
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
      'state': state,
      'stateTime': stateTime,
      'steps':
          pulumi.Input.mapInputValue<
            List<CloneStepResponseVmmigrationV1alpha1>,
            List<Map<String, dynamic>>
          >(
            steps,
            (value) =>
                pulumi.Input.encodeList<
                  CloneStepResponseVmmigrationV1alpha1,
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

  factory CloneJobResponseVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloneJobResponseVmmigrationV1alpha1(
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
      state: pulumi.Input.fromValue(map['state'] as String),
      stateTime: pulumi.Input.fromValue(map['stateTime'] as String),
      steps: pulumi.Input.fromValue(
        pulumi.Input.decodeList<CloneStepResponseVmmigrationV1alpha1>(
          map['steps']!,
          (value) => CloneStepResponseVmmigrationV1alpha1.fromMap(
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
