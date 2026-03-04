import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_disks_target_details_response_vmmigration_v1alpha1.dart';
import 'compute_engine_target_details_response_vmmigration_v1alpha1.dart';
import 'cutover_job_vmmigration_v1alpha1_args.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'target_vmdetails_response.dart';

/// Initiates a Cutover of a specific migrating VM. The returned LRO is completed when the cutover job resource is created and the job is initiated.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CutoverJobVmmigrationV1alpha1 extends pulumi.CustomResource {
  /// Details of the target Persistent Disks in Compute Engine.
  late final pulumi.Output<
    ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1
  >
  computeEngineDisksTargetDetails;

  /// Details of the target VM in Compute Engine.
  late final pulumi.Output<
    ComputeEngineTargetDetailsResponseVmmigrationV1alpha1
  >
  computeEngineTargetDetails;

  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_details instead.
  late final pulumi.Output<TargetVMDetailsResponse> computeEngineVmDetails;

  /// The time the cutover job was created (as an API call, not when it was actually created in the target).
  late final pulumi.Output<String> createTime;

  /// Required. The cutover job identifier.
  late final pulumi.Output<String> cutoverJobId;

  /// The time the cutover job had finished.
  late final pulumi.Output<String> endTime;

  /// Provides details for the errors that led to the Cutover Job's state.
  late final pulumi.Output<StatusResponseVmmigrationV1alpha1> error;
  late final pulumi.Output<String> location;
  late final pulumi.Output<String> migratingVmId;

  /// The name of the cutover job.
  late final pulumi.Output<String> name;

  /// The current progress in percentage of the cutover job.
  late final pulumi.Output<int> progress;

  /// The current progress in percentage of the cutover job.
  late final pulumi.Output<int> progressPercent;
  late final pulumi.Output<String> project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  late final pulumi.Output<String> sourceId;

  /// State of the cutover job.
  late final pulumi.Output<String> state;

  /// A message providing possible extra details about the current state.
  late final pulumi.Output<String> stateMessage;

  /// The time the state was last updated.
  late final pulumi.Output<String> stateTime;

  /// The cutover steps list representing its progress.
  late final pulumi.Output<List<Map<String, dynamic>>> steps;

  /// Details of the VM to create as the target of this cutover job. Deprecated: Use compute_engine_target_details instead.
  late final pulumi.Output<TargetVMDetailsResponse> targetDetails;

  /// Creates a new [CutoverJobVmmigrationV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CutoverJobVmmigrationV1alpha1]. {@macro pulumi_vmmigration_v1alpha1_cutover_job_vmmigration_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CutoverJobVmmigrationV1alpha1(
    String name, {
    CutoverJobVmmigrationV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:vmmigration/v1alpha1:CutoverJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    computeEngineDisksTargetDetails =
        registerOutput<
          ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1
        >('computeEngineDisksTargetDetails');
    computeEngineTargetDetails =
        registerOutput<ComputeEngineTargetDetailsResponseVmmigrationV1alpha1>(
          'computeEngineTargetDetails',
        );
    computeEngineVmDetails = registerOutput<TargetVMDetailsResponse>(
      'computeEngineVmDetails',
    );
    createTime = registerOutput<String>('createTime');
    cutoverJobId = registerOutput<String>('cutoverJobId');
    endTime = registerOutput<String>('endTime');
    error = registerOutput<StatusResponseVmmigrationV1alpha1>('error');
    location = registerOutput<String>('location');
    migratingVmId = registerOutput<String>('migratingVmId');
    this.name = registerOutput<String>('name');
    progress = registerOutput<int>('progress');
    progressPercent = registerOutput<int>('progressPercent');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    sourceId = registerOutput<String>('sourceId');
    state = registerOutput<String>('state');
    stateMessage = registerOutput<String>('stateMessage');
    stateTime = registerOutput<String>('stateTime');
    steps = registerOutput<List<Map<String, dynamic>>>('steps');
    targetDetails = registerOutput<TargetVMDetailsResponse>('targetDetails');
  }
}
