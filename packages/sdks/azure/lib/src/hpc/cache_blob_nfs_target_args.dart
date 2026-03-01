// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hpc_cache_blob_nfs_target_cache_blob_nfs_target_args_doc}
/// The set of arguments for CacheBlobNfsTarget.
/// {@endtemplate}
/// {@macro pulumi_hpc_cache_blob_nfs_target_cache_blob_nfs_target_args_doc}
class CacheBlobNfsTargetArgs {
  /// The name of the access policy applied to this target. Defaults to `default`.
  final pulumi.Input<String>? accessPolicyName;
  /// The name of the HPC Cache, which the HPC Cache Blob NFS Target will be added to. Changing this forces a new HPC Cache Blob NFS Target to be created.
  final pulumi.Input<String> cacheName;
  /// The name which should be used for this HPC Cache Blob NFS Target. Changing this forces a new HPC Cache Blob NFS Target to be created.
  final pulumi.Input<String>? name;
  /// The client-facing file path of the HPC Cache Blob NFS Target.
  final pulumi.Input<String> namespacePath;
  /// The name of the Resource Group where the HPC Cache Blob NFS Target should exist. Changing this forces a new HPC Cache Blob NFS Target to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Resource Manager ID of the Storage Container used as the HPC Cache Blob NFS Target. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azure.storage.Container` Data Source/Resource as `resource_manager_id`.
  final pulumi.Input<String> storageContainerId;
  /// The type of usage of the HPC Cache Blob NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`.
  final pulumi.Input<String> usageModel;
  /// The amount of time the cache waits before it checks the back-end storage for file updates. Possible values are between `1` and `31536000`.
  final pulumi.Input<int>? verificationTimerInSeconds;
  /// The amount of time the cache waits after the last file change before it copies the changed file to back-end storage. Possible values are between `1` and `31536000`.
  final pulumi.Input<int>? writeBackTimerInSeconds;

  /// Creates a new [CacheBlobNfsTargetArgs].
  /// [accessPolicyName] The name of the access policy applied to this target. Defaults to `default`.
  /// [cacheName] The name of the HPC Cache, which the HPC Cache Blob NFS Target will be added to. Changing this forces a new HPC Cache Blob NFS Target to be created.
  /// [name] The name which should be used for this HPC Cache Blob NFS Target. Changing this forces a new HPC Cache Blob NFS Target to be created.
  /// [namespacePath] The client-facing file path of the HPC Cache Blob NFS Target.
  /// [resourceGroupName] The name of the Resource Group where the HPC Cache Blob NFS Target should exist. Changing this forces a new HPC Cache Blob NFS Target to be created.
  /// [storageContainerId] The Resource Manager ID of the Storage Container used as the HPC Cache Blob NFS Target. Changing this forces a new resource to be created.
  /// [usageModel] The type of usage of the HPC Cache Blob NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`.
  /// [verificationTimerInSeconds] The amount of time the cache waits before it checks the back-end storage for file updates. Possible values are between `1` and `31536000`.
  /// [writeBackTimerInSeconds] The amount of time the cache waits after the last file change before it copies the changed file to back-end storage. Possible values are between `1` and `31536000`.
  CacheBlobNfsTargetArgs({
    pulumi.Output<String>? accessPolicyName,
    required pulumi.Output<String> cacheName,
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespacePath,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageContainerId,
    required pulumi.Output<String> usageModel,
    pulumi.Output<int>? verificationTimerInSeconds,
    pulumi.Output<int>? writeBackTimerInSeconds,
  }) :
      accessPolicyName = pulumi.Input.asOptionalInput<String>(accessPolicyName),
      cacheName = pulumi.Input.asInput<String>(cacheName),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespacePath = pulumi.Input.asInput<String>(namespacePath),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageContainerId = pulumi.Input.asInput<String>(storageContainerId),
      usageModel = pulumi.Input.asInput<String>(usageModel),
      verificationTimerInSeconds = pulumi.Input.asOptionalInput<int>(verificationTimerInSeconds),
      writeBackTimerInSeconds = pulumi.Input.asOptionalInput<int>(writeBackTimerInSeconds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': ?accessPolicyName,
      'cacheName': cacheName,
      'name': ?name,
      'namespacePath': namespacePath,
      'resourceGroupName': resourceGroupName,
      'storageContainerId': storageContainerId,
      'usageModel': usageModel,
      'verificationTimerInSeconds': ?verificationTimerInSeconds,
      'writeBackTimerInSeconds': ?writeBackTimerInSeconds,
    };
  }

  factory CacheBlobNfsTargetArgs.fromMap(Map<String, dynamic> map) {
    return CacheBlobNfsTargetArgs(
      accessPolicyName: map['accessPolicyName'] == null ? null : pulumi.Output.create<String>(map['accessPolicyName'] as String),
      cacheName: pulumi.Output.create<String>(map['cacheName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespacePath: pulumi.Output.create<String>(map['namespacePath'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageContainerId: pulumi.Output.create<String>(map['storageContainerId'] as String),
      usageModel: pulumi.Output.create<String>(map['usageModel'] as String),
      verificationTimerInSeconds: map['verificationTimerInSeconds'] == null ? null : pulumi.Output.create<int>(map['verificationTimerInSeconds'] as int),
      writeBackTimerInSeconds: map['writeBackTimerInSeconds'] == null ? null : pulumi.Output.create<int>(map['writeBackTimerInSeconds'] as int),
    );
  }
}

