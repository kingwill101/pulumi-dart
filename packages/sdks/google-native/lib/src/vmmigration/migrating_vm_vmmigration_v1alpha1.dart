import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_source_vm_details_response_vmmigration_v1alpha1.dart';
import 'azure_source_vm_details_response_vmmigration_v1alpha1.dart';
import 'clone_job_response_vmmigration_v1alpha1.dart';
import 'compute_engine_disks_target_defaults_response_vmmigration_v1alpha1.dart';
import 'compute_engine_target_defaults_response_vmmigration_v1alpha1.dart';
import 'cutover_forecast_response_vmmigration_v1alpha1.dart';
import 'cutover_job_response_vmmigration_v1alpha1.dart';
import 'migrating_vm_vmmigration_v1alpha1_args.dart';
import 'replication_cycle_response_vmmigration_v1alpha1.dart';
import 'replication_sync_response_vmmigration_v1alpha1.dart';
import 'schedule_policy_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';
import 'target_vmdetails_response.dart';
import 'vmware_source_vm_details_response_vmmigration_v1alpha1.dart';

/// Creates a new MigratingVm in a given Source.
/// Auto-naming is currently not supported for this resource.
class MigratingVmVmmigrationV1alpha1 extends pulumi.CustomResource {
  /// Details of the VM from an AWS source.
  late final pulumi.Output<AwsSourceVmDetailsResponseVmmigrationV1alpha1> awsSourceVmDetails;
  /// Details of the VM from an Azure source.
  late final pulumi.Output<AzureSourceVmDetailsResponseVmmigrationV1alpha1> azureSourceVmDetails;
  /// Details of the target Persistent Disks in Compute Engine.
  late final pulumi.Output<ComputeEngineDisksTargetDefaultsResponseVmmigrationV1alpha1> computeEngineDisksTargetDefaults;
  /// Details of the target VM in Compute Engine.
  late final pulumi.Output<ComputeEngineTargetDefaultsResponseVmmigrationV1alpha1> computeEngineTargetDefaults;
  /// Details of the VM in Compute Engine. Deprecated: Use compute_engine_target_defaults instead.
  late final pulumi.Output<TargetVMDetailsResponse> computeEngineVmDefaults;
  /// The time the migrating VM was created (this refers to this resource and not to the time it was installed in the source).
  late final pulumi.Output<String> createTime;
  /// Details of the current running replication cycle.
  late final pulumi.Output<ReplicationCycleResponseVmmigrationV1alpha1> currentSyncInfo;
  /// Provides details of future CutoverJobs of a MigratingVm. Set to empty when cutover forecast is unavailable.
  late final pulumi.Output<CutoverForecastResponseVmmigrationV1alpha1> cutoverForecast;
  /// The description attached to the migrating VM by the user.
  late final pulumi.Output<String> description;
  /// The display name attached to the MigratingVm by the user.
  late final pulumi.Output<String> displayName;
  /// Provides details on the state of the Migrating VM in case of an error in replication.
  late final pulumi.Output<StatusResponseVmmigrationV1alpha1> error;
  /// The group this migrating vm is included in, if any. The group is represented by the full path of the appropriate Group resource.
  late final pulumi.Output<String> group;
  /// The labels of the migrating VM.
  late final pulumi.Output<Map<String, String>> labels;
  /// Details of the last replication cycle. This will be updated whenever a replication cycle is finished and is not to be confused with last_sync which is only updated on successful replication cycles.
  late final pulumi.Output<ReplicationCycleResponseVmmigrationV1alpha1> lastReplicationCycle;
  /// The most updated snapshot created time in the source that finished replication.
  late final pulumi.Output<ReplicationSyncResponseVmmigrationV1alpha1> lastSync;
  late final pulumi.Output<String> location;
  /// Required. The migratingVm identifier.
  late final pulumi.Output<String> migratingVmId;
  /// The identifier of the MigratingVm.
  late final pulumi.Output<String> name;
  /// The replication schedule policy.
  late final pulumi.Output<SchedulePolicyResponseVmmigrationV1alpha1> policy;
  late final pulumi.Output<String> project;
  /// The recent clone jobs performed on the migrating VM. This field holds the vm's last completed clone job and the vm's running clone job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  late final pulumi.Output<List<CloneJobResponseVmmigrationV1alpha1>> recentCloneJobs;
  /// The recent cutover jobs performed on the migrating VM. This field holds the vm's last completed cutover job and the vm's running cutover job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  late final pulumi.Output<List<CutoverJobResponseVmmigrationV1alpha1>> recentCutoverJobs;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  late final pulumi.Output<String> sourceId;
  /// The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  late final pulumi.Output<String> sourceVmId;
  /// State of the MigratingVm.
  late final pulumi.Output<String> state;
  /// The last time the migrating VM state was updated.
  late final pulumi.Output<String> stateTime;
  /// The default configuration of the target VM that will be created in Google Cloud as a result of the migration. Deprecated: Use compute_engine_target_defaults instead.
  late final pulumi.Output<TargetVMDetailsResponse> targetDefaults;
  /// The last time the migrating VM resource was updated.
  late final pulumi.Output<String> updateTime;
  /// Details of the VM from a Vmware source.
  late final pulumi.Output<VmwareSourceVmDetailsResponseVmmigrationV1alpha1> vmwareSourceVmDetails;

  /// Creates a new [MigratingVmVmmigrationV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MigratingVmVmmigrationV1alpha1]. {@macro pulumi_vmmigration_v1alpha1_migrating_vm_vmmigration_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MigratingVmVmmigrationV1alpha1(
    String name, {
    MigratingVmVmmigrationV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1alpha1:MigratingVm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsSourceVmDetails = registerOutput<AwsSourceVmDetailsResponseVmmigrationV1alpha1>('awsSourceVmDetails');
    this.azureSourceVmDetails = registerOutput<AzureSourceVmDetailsResponseVmmigrationV1alpha1>('azureSourceVmDetails');
    this.computeEngineDisksTargetDefaults = registerOutput<ComputeEngineDisksTargetDefaultsResponseVmmigrationV1alpha1>('computeEngineDisksTargetDefaults');
    this.computeEngineTargetDefaults = registerOutput<ComputeEngineTargetDefaultsResponseVmmigrationV1alpha1>('computeEngineTargetDefaults');
    this.computeEngineVmDefaults = registerOutput<TargetVMDetailsResponse>('computeEngineVmDefaults');
    this.createTime = registerOutput<String>('createTime');
    this.currentSyncInfo = registerOutput<ReplicationCycleResponseVmmigrationV1alpha1>('currentSyncInfo');
    this.cutoverForecast = registerOutput<CutoverForecastResponseVmmigrationV1alpha1>('cutoverForecast');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.error = registerOutput<StatusResponseVmmigrationV1alpha1>('error');
    this.group = registerOutput<String>('group');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lastReplicationCycle = registerOutput<ReplicationCycleResponseVmmigrationV1alpha1>('lastReplicationCycle');
    this.lastSync = registerOutput<ReplicationSyncResponseVmmigrationV1alpha1>('lastSync');
    this.location = registerOutput<String>('location');
    this.migratingVmId = registerOutput<String>('migratingVmId');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<SchedulePolicyResponseVmmigrationV1alpha1>('policy');
    this.project = registerOutput<String>('project');
    this.recentCloneJobs = registerOutput<List<CloneJobResponseVmmigrationV1alpha1>>('recentCloneJobs');
    this.recentCutoverJobs = registerOutput<List<CutoverJobResponseVmmigrationV1alpha1>>('recentCutoverJobs');
    this.requestId = registerOutput<String?>('requestId');
    this.sourceId = registerOutput<String>('sourceId');
    this.sourceVmId = registerOutput<String>('sourceVmId');
    this.state = registerOutput<String>('state');
    this.stateTime = registerOutput<String>('stateTime');
    this.targetDefaults = registerOutput<TargetVMDetailsResponse>('targetDefaults');
    this.updateTime = registerOutput<String>('updateTime');
    this.vmwareSourceVmDetails = registerOutput<VmwareSourceVmDetailsResponseVmmigrationV1alpha1>('vmwareSourceVmDetails');
  }
}
