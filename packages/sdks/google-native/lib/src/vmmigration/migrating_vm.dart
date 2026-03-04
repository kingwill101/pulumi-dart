import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_source_vm_details_response.dart';
import 'azure_source_vm_details_response.dart';
import 'compute_engine_disks_target_defaults_response.dart';
import 'compute_engine_target_defaults_response.dart';
import 'cutover_forecast_response.dart';
import 'migrating_vm_args.dart';
import 'replication_cycle_response.dart';
import 'replication_sync_response.dart';
import 'schedule_policy_response.dart';
import 'status_response.dart';
import 'vmware_source_vm_details_response.dart';

/// Creates a new MigratingVm in a given Source.
/// Auto-naming is currently not supported for this resource.
class MigratingVm extends pulumi.CustomResource {
  /// Details of the VM from an AWS source.
  late final pulumi.Output<AwsSourceVmDetailsResponse> awsSourceVmDetails;

  /// Details of the VM from an Azure source.
  late final pulumi.Output<AzureSourceVmDetailsResponse> azureSourceVmDetails;

  /// Details of the target Persistent Disks in Compute Engine.
  late final pulumi.Output<ComputeEngineDisksTargetDefaultsResponse>
  computeEngineDisksTargetDefaults;

  /// Details of the target VM in Compute Engine.
  late final pulumi.Output<ComputeEngineTargetDefaultsResponse>
  computeEngineTargetDefaults;

  /// The time the migrating VM was created (this refers to this resource and not to the time it was installed in the source).
  late final pulumi.Output<String> createTime;

  /// Details of the current running replication cycle.
  late final pulumi.Output<ReplicationCycleResponse> currentSyncInfo;

  /// Provides details of future CutoverJobs of a MigratingVm. Set to empty when cutover forecast is unavailable.
  late final pulumi.Output<CutoverForecastResponse> cutoverForecast;

  /// The description attached to the migrating VM by the user.
  late final pulumi.Output<String> description;

  /// The display name attached to the MigratingVm by the user.
  late final pulumi.Output<String> displayName;

  /// Provides details on the state of the Migrating VM in case of an error in replication.
  late final pulumi.Output<StatusResponse> error;

  /// The group this migrating vm is included in, if any. The group is represented by the full path of the appropriate Group resource.
  late final pulumi.Output<String> group;

  /// The labels of the migrating VM.
  late final pulumi.Output<Map<String, String>> labels;

  /// Details of the last replication cycle. This will be updated whenever a replication cycle is finished and is not to be confused with last_sync which is only updated on successful replication cycles.
  late final pulumi.Output<ReplicationCycleResponse> lastReplicationCycle;

  /// The most updated snapshot created time in the source that finished replication.
  late final pulumi.Output<ReplicationSyncResponse> lastSync;
  late final pulumi.Output<String> location;

  /// Required. The migratingVm identifier.
  late final pulumi.Output<String> migratingVmId;

  /// The identifier of the MigratingVm.
  late final pulumi.Output<String> name;

  /// The replication schedule policy.
  late final pulumi.Output<SchedulePolicyResponse> policy;
  late final pulumi.Output<String> project;

  /// The recent clone jobs performed on the migrating VM. This field holds the vm's last completed clone job and the vm's running clone job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  late final pulumi.Output<List<Map<String, dynamic>>> recentCloneJobs;

  /// The recent cutover jobs performed on the migrating VM. This field holds the vm's last completed cutover job and the vm's running cutover job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  late final pulumi.Output<List<Map<String, dynamic>>> recentCutoverJobs;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  late final pulumi.Output<String> sourceId;

  /// The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  late final pulumi.Output<String> sourceVmId;

  /// State of the MigratingVm.
  late final pulumi.Output<String> state;

  /// The last time the migrating VM state was updated.
  late final pulumi.Output<String> stateTime;

  /// The last time the migrating VM resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Details of the VM from a Vmware source.
  late final pulumi.Output<VmwareSourceVmDetailsResponse> vmwareSourceVmDetails;

  /// Creates a new [MigratingVm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MigratingVm]. {@macro pulumi_vmmigration_v1_migrating_vm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MigratingVm(
    String name, {
    MigratingVmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:vmmigration/v1:MigratingVm',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    awsSourceVmDetails = registerOutput<AwsSourceVmDetailsResponse>(
      'awsSourceVmDetails',
    );
    azureSourceVmDetails = registerOutput<AzureSourceVmDetailsResponse>(
      'azureSourceVmDetails',
    );
    computeEngineDisksTargetDefaults =
        registerOutput<ComputeEngineDisksTargetDefaultsResponse>(
          'computeEngineDisksTargetDefaults',
        );
    computeEngineTargetDefaults =
        registerOutput<ComputeEngineTargetDefaultsResponse>(
          'computeEngineTargetDefaults',
        );
    createTime = registerOutput<String>('createTime');
    currentSyncInfo = registerOutput<ReplicationCycleResponse>(
      'currentSyncInfo',
    );
    cutoverForecast = registerOutput<CutoverForecastResponse>(
      'cutoverForecast',
    );
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    error = registerOutput<StatusResponse>('error');
    group = registerOutput<String>('group');
    labels = registerOutput<Map<String, String>>('labels');
    lastReplicationCycle = registerOutput<ReplicationCycleResponse>(
      'lastReplicationCycle',
    );
    lastSync = registerOutput<ReplicationSyncResponse>('lastSync');
    location = registerOutput<String>('location');
    migratingVmId = registerOutput<String>('migratingVmId');
    this.name = registerOutput<String>('name');
    policy = registerOutput<SchedulePolicyResponse>('policy');
    project = registerOutput<String>('project');
    recentCloneJobs = registerOutput<List<Map<String, dynamic>>>(
      'recentCloneJobs',
    );
    recentCutoverJobs = registerOutput<List<Map<String, dynamic>>>(
      'recentCutoverJobs',
    );
    requestId = registerOutput<String?>('requestId');
    sourceId = registerOutput<String>('sourceId');
    sourceVmId = registerOutput<String>('sourceVmId');
    state = registerOutput<String>('state');
    stateTime = registerOutput<String>('stateTime');
    updateTime = registerOutput<String>('updateTime');
    vmwareSourceVmDetails = registerOutput<VmwareSourceVmDetailsResponse>(
      'vmwareSourceVmDetails',
    );
  }
}
