// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_source_vm_details_response.dart';
import 'azure_source_vm_details_response.dart';
import 'clone_job_response.dart';
import 'compute_engine_disks_target_defaults_response.dart';
import 'compute_engine_target_defaults_response.dart';
import 'cutover_forecast_response.dart';
import 'cutover_job_response.dart';
import 'replication_cycle_response.dart';
import 'replication_sync_response.dart';
import 'schedule_policy_response.dart';
import 'status_response.dart';
import 'vmware_source_vm_details_response.dart';

/// Result data returned by getMigratingVm.
class GetMigratingVmResult {
  /// Details of the VM from an AWS source.
  final AwsSourceVmDetailsResponse? awsSourceVmDetails;
  /// Details of the VM from an Azure source.
  final AzureSourceVmDetailsResponse? azureSourceVmDetails;
  /// Details of the target Persistent Disks in Compute Engine.
  final ComputeEngineDisksTargetDefaultsResponse? computeEngineDisksTargetDefaults;
  /// Details of the target VM in Compute Engine.
  final ComputeEngineTargetDefaultsResponse? computeEngineTargetDefaults;
  /// The time the migrating VM was created (this refers to this resource and not to the time it was installed in the source).
  final String? createTime;
  /// Details of the current running replication cycle.
  final ReplicationCycleResponse? currentSyncInfo;
  /// Provides details of future CutoverJobs of a MigratingVm. Set to empty when cutover forecast is unavailable.
  final CutoverForecastResponse? cutoverForecast;
  /// The description attached to the migrating VM by the user.
  final String? description;
  /// The display name attached to the MigratingVm by the user.
  final String? displayName;
  /// Provides details on the state of the Migrating VM in case of an error in replication.
  final StatusResponse? error;
  /// The group this migrating vm is included in, if any. The group is represented by the full path of the appropriate Group resource.
  final String? group;
  /// The labels of the migrating VM.
  final Map<String, String>? labels;
  /// Details of the last replication cycle. This will be updated whenever a replication cycle is finished and is not to be confused with last_sync which is only updated on successful replication cycles.
  final ReplicationCycleResponse? lastReplicationCycle;
  /// The most updated snapshot created time in the source that finished replication.
  final ReplicationSyncResponse? lastSync;
  /// The identifier of the MigratingVm.
  final String? name;
  /// The replication schedule policy.
  final SchedulePolicyResponse? policy;
  /// The recent clone jobs performed on the migrating VM. This field holds the vm's last completed clone job and the vm's running clone job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  final List<CloneJobResponse>? recentCloneJobs;
  /// The recent cutover jobs performed on the migrating VM. This field holds the vm's last completed cutover job and the vm's running cutover job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  final List<CutoverJobResponse>? recentCutoverJobs;
  /// The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  final String? sourceVmId;
  /// State of the MigratingVm.
  final String? state;
  /// The last time the migrating VM state was updated.
  final String? stateTime;
  /// The last time the migrating VM resource was updated.
  final String? updateTime;
  /// Details of the VM from a Vmware source.
  final VmwareSourceVmDetailsResponse? vmwareSourceVmDetails;

  /// Creates a new [GetMigratingVmResult].
  /// [awsSourceVmDetails] Details of the VM from an AWS source.
  /// [azureSourceVmDetails] Details of the VM from an Azure source.
  /// [computeEngineDisksTargetDefaults] Details of the target Persistent Disks in Compute Engine.
  /// [computeEngineTargetDefaults] Details of the target VM in Compute Engine.
  /// [createTime] The time the migrating VM was created (this refers to this resource and not to the time it was installed in the source).
  /// [currentSyncInfo] Details of the current running replication cycle.
  /// [cutoverForecast] Provides details of future CutoverJobs of a MigratingVm. Set to empty when cutover forecast is unavailable.
  /// [description] The description attached to the migrating VM by the user.
  /// [displayName] The display name attached to the MigratingVm by the user.
  /// [error] Provides details on the state of the Migrating VM in case of an error in replication.
  /// [group] The group this migrating vm is included in, if any. The group is represented by the full path of the appropriate Group resource.
  /// [labels] The labels of the migrating VM.
  /// [lastReplicationCycle] Details of the last replication cycle. This will be updated whenever a replication cycle is finished and is not to be confused with last_sync which is only updated on successful replication cycles.
  /// [lastSync] The most updated snapshot created time in the source that finished replication.
  /// [name] The identifier of the MigratingVm.
  /// [policy] The replication schedule policy.
  /// [recentCloneJobs] The recent clone jobs performed on the migrating VM. This field holds the vm's last completed clone job and the vm's running clone job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  /// [recentCutoverJobs] The recent cutover jobs performed on the migrating VM. This field holds the vm's last completed cutover job and the vm's running cutover job, if one exists. Note: To have this field populated you need to explicitly request it via the "view" parameter of the Get/List request.
  /// [sourceVmId] The unique ID of the VM in the source. The VM's name in vSphere can be changed, so this is not the VM's name but rather its moRef id. This id is of the form vm-.
  /// [state] State of the MigratingVm.
  /// [stateTime] The last time the migrating VM state was updated.
  /// [updateTime] The last time the migrating VM resource was updated.
  /// [vmwareSourceVmDetails] Details of the VM from a Vmware source.
  const GetMigratingVmResult({
    this.awsSourceVmDetails,
    this.azureSourceVmDetails,
    this.computeEngineDisksTargetDefaults,
    this.computeEngineTargetDefaults,
    this.createTime,
    this.currentSyncInfo,
    this.cutoverForecast,
    this.description,
    this.displayName,
    this.error,
    this.group,
    this.labels,
    this.lastReplicationCycle,
    this.lastSync,
    this.name,
    this.policy,
    this.recentCloneJobs,
    this.recentCutoverJobs,
    this.sourceVmId,
    this.state,
    this.stateTime,
    this.updateTime,
    this.vmwareSourceVmDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsSourceVmDetails': ?awsSourceVmDetails?.toMap(),
      'azureSourceVmDetails': ?azureSourceVmDetails?.toMap(),
      'computeEngineDisksTargetDefaults': ?computeEngineDisksTargetDefaults?.toMap(),
      'computeEngineTargetDefaults': ?computeEngineTargetDefaults?.toMap(),
      'createTime': ?createTime,
      'currentSyncInfo': ?currentSyncInfo?.toMap(),
      'cutoverForecast': ?cutoverForecast?.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'error': ?error?.toMap(),
      'group': ?group,
      'labels': ?labels,
      'lastReplicationCycle': ?lastReplicationCycle?.toMap(),
      'lastSync': ?lastSync?.toMap(),
      'name': ?name,
      'policy': ?policy?.toMap(),
      'recentCloneJobs': ?(() { final guardedValue = recentCloneJobs; if (guardedValue == null) return null; return pulumi.Input.encodeList<CloneJobResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'recentCutoverJobs': ?(() { final guardedValue = recentCutoverJobs; if (guardedValue == null) return null; return pulumi.Input.encodeList<CutoverJobResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourceVmId': ?sourceVmId,
      'state': ?state,
      'stateTime': ?stateTime,
      'updateTime': ?updateTime,
      'vmwareSourceVmDetails': ?vmwareSourceVmDetails?.toMap(),
    };
  }

  factory GetMigratingVmResult.fromMap(Map<String, dynamic> map) {
    return GetMigratingVmResult(
      awsSourceVmDetails: (() { final guardedValue = map['awsSourceVmDetails']; if (guardedValue == null) return null; return AwsSourceVmDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureSourceVmDetails: (() { final guardedValue = map['azureSourceVmDetails']; if (guardedValue == null) return null; return AzureSourceVmDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      computeEngineDisksTargetDefaults: (() { final guardedValue = map['computeEngineDisksTargetDefaults']; if (guardedValue == null) return null; return ComputeEngineDisksTargetDefaultsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      computeEngineTargetDefaults: (() { final guardedValue = map['computeEngineTargetDefaults']; if (guardedValue == null) return null; return ComputeEngineTargetDefaultsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentSyncInfo: (() { final guardedValue = map['currentSyncInfo']; if (guardedValue == null) return null; return ReplicationCycleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cutoverForecast: (() { final guardedValue = map['cutoverForecast']; if (guardedValue == null) return null; return CutoverForecastResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return StatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lastReplicationCycle: (() { final guardedValue = map['lastReplicationCycle']; if (guardedValue == null) return null; return ReplicationCycleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastSync: (() { final guardedValue = map['lastSync']; if (guardedValue == null) return null; return ReplicationSyncResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return SchedulePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      recentCloneJobs: (() { final guardedValue = map['recentCloneJobs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CloneJobResponse>(guardedValue, (value) => CloneJobResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      recentCutoverJobs: (() { final guardedValue = map['recentCutoverJobs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CutoverJobResponse>(guardedValue, (value) => CutoverJobResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourceVmId: (() { final guardedValue = map['sourceVmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateTime: (() { final guardedValue = map['stateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmwareSourceVmDetails: (() { final guardedValue = map['vmwareSourceVmDetails']; if (guardedValue == null) return null; return VmwareSourceVmDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
