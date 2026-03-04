import 'package:pulumi/pulumi.dart' as pulumi;
import 'clone_job_args.dart';
import 'compute_engine_disks_target_details_response.dart';
import 'compute_engine_target_details_response.dart';
import 'status_response.dart';

/// Initiates a Clone of a specific migrating VM.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CloneJob extends pulumi.CustomResource {
  /// Required. The clone job identifier.
  late final pulumi.Output<String> cloneJobId;

  /// Details of the target Persistent Disks in Compute Engine.
  late final pulumi.Output<ComputeEngineDisksTargetDetailsResponse>
  computeEngineDisksTargetDetails;

  /// Details of the target VM in Compute Engine.
  late final pulumi.Output<ComputeEngineTargetDetailsResponse>
  computeEngineTargetDetails;

  /// The time the clone job was created (as an API call, not when it was actually created in the target).
  late final pulumi.Output<String> createTime;

  /// The time the clone job was ended.
  late final pulumi.Output<String> endTime;

  /// Provides details for the errors that led to the Clone Job's state.
  late final pulumi.Output<StatusResponse> error;
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

  /// Creates a new [CloneJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloneJob]. {@macro pulumi_vmmigration_v1_clone_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloneJob(
    String name, {
    CloneJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:vmmigration/v1:CloneJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cloneJobId = registerOutput<String>('cloneJobId');
    computeEngineDisksTargetDetails =
        registerOutput<ComputeEngineDisksTargetDetailsResponse>(
          'computeEngineDisksTargetDetails',
        );
    computeEngineTargetDetails =
        registerOutput<ComputeEngineTargetDetailsResponse>(
          'computeEngineTargetDetails',
        );
    createTime = registerOutput<String>('createTime');
    endTime = registerOutput<String>('endTime');
    error = registerOutput<StatusResponse>('error');
    location = registerOutput<String>('location');
    migratingVmId = registerOutput<String>('migratingVmId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    sourceId = registerOutput<String>('sourceId');
    state = registerOutput<String>('state');
    stateTime = registerOutput<String>('stateTime');
    steps = registerOutput<List<Map<String, dynamic>>>('steps');
  }
}
