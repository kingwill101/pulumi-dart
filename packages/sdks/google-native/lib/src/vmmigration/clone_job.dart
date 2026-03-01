import 'package:pulumi/pulumi.dart' as pulumi;
import 'clone_job_args.dart';
import 'clone_step_response.dart';
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
  late final pulumi.Output<ComputeEngineDisksTargetDetailsResponse> computeEngineDisksTargetDetails;
  /// Details of the target VM in Compute Engine.
  late final pulumi.Output<ComputeEngineTargetDetailsResponse> computeEngineTargetDetails;
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
  late final pulumi.Output<List<CloneStepResponse>> steps;

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
    this.cloneJobId = registerOutput<String>('cloneJobId');
    this.computeEngineDisksTargetDetails = registerOutput<ComputeEngineDisksTargetDetailsResponse>('computeEngineDisksTargetDetails');
    this.computeEngineTargetDetails = registerOutput<ComputeEngineTargetDetailsResponse>('computeEngineTargetDetails');
    this.createTime = registerOutput<String>('createTime');
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<StatusResponse>('error');
    this.location = registerOutput<String>('location');
    this.migratingVmId = registerOutput<String>('migratingVmId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.sourceId = registerOutput<String>('sourceId');
    this.state = registerOutput<String>('state');
    this.stateTime = registerOutput<String>('stateTime');
    this.steps = registerOutput<List<CloneStepResponse>>('steps');
  }
}
