import 'package:pulumi/pulumi.dart' as pulumi;
import 'clone_job_vmmigration_v1alpha1_args.dart';
import 'compute_engine_disks_target_details_response_vmmigration_v1alpha1.dart';
import 'compute_engine_target_details_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'target_vmdetails_response.dart';

/// Initiates a Clone of a specific migrating VM.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CloneJobVmmigrationV1alpha1 extends pulumi.CustomResource {
  /// Required. The clone job identifier.
  late final pulumi.Output<String> cloneJobId;
  /// Details of the target Persistent Disks in Compute Engine.
  late final pulumi.Output<ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1> computeEngineDisksTargetDetails;
  /// Details of the target VM in Compute Engine.
  late final pulumi.Output<ComputeEngineTargetDetailsResponseVmmigrationV1alpha1> computeEngineTargetDetails;
  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_details instead.
  late final pulumi.Output<TargetVMDetailsResponse> computeEngineVmDetails;
  /// The time the clone job was created (as an API call, not when it was actually created in the target).
  late final pulumi.Output<String> createTime;
  /// The time the clone job was ended.
  late final pulumi.Output<String> endTime;
  /// Provides details for the errors that led to the Clone Job's state.
  late final pulumi.Output<StatusResponseVmmigrationV1alpha1> error;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> migratingVmId;
  /// The name of the clone.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  late final pulumi.Output<String> sourceId;
  /// State of the clone job.
  late final pulumi.Output<String> state;
  /// The time the state was last updated.
  late final pulumi.Output<String> stateTime;
  /// The clone steps list representing its progress.
  late final pulumi.Output<List<Map<String, dynamic>>> steps;
  /// Details of the VM to create as the target of this clone job. Deprecated: Use compute_engine_target_details instead.
  late final pulumi.Output<TargetVMDetailsResponse> targetDetails;

  /// Creates a new [CloneJobVmmigrationV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloneJobVmmigrationV1alpha1]. {@macro pulumi_vmmigration_v1alpha1_clone_job_vmmigration_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloneJobVmmigrationV1alpha1(
    String name, {
    CloneJobVmmigrationV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1alpha1:CloneJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloneJobId = registerOutput<String>('cloneJobId');
    computeEngineDisksTargetDetails = registerOutput<ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1>('computeEngineDisksTargetDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    computeEngineTargetDetails = registerOutput<ComputeEngineTargetDetailsResponseVmmigrationV1alpha1>('computeEngineTargetDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ComputeEngineTargetDetailsResponseVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    computeEngineVmDetails = registerOutput<TargetVMDetailsResponse>('computeEngineVmDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetVMDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    endTime = registerOutput<String>('endTime');
    error = registerOutput<StatusResponseVmmigrationV1alpha1>('error', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StatusResponseVmmigrationV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    migratingVmId = registerOutput<String>('migratingVmId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    sourceId = registerOutput<String>('sourceId');
    state = registerOutput<String>('state');
    stateTime = registerOutput<String>('stateTime');
    steps = registerOutput<List<Map<String, dynamic>>>('steps');
    targetDetails = registerOutput<TargetVMDetailsResponse>('targetDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TargetVMDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
