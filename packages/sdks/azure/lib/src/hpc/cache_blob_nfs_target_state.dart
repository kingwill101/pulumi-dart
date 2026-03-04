// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CacheBlobNfsTarget resources.
class CacheBlobNfsTargetState {
  /// The name of the access policy applied to this target. Defaults to `default`.
  final pulumi.Input<String>? accessPolicyName;

  /// The name of the HPC Cache, which the HPC Cache Blob NFS Target will be added to. Changing this forces a new HPC Cache Blob NFS Target to be created.
  final pulumi.Input<String>? cacheName;

  /// The name which should be used for this HPC Cache Blob NFS Target. Changing this forces a new HPC Cache Blob NFS Target to be created.
  final pulumi.Input<String>? name;

  /// The client-facing file path of the HPC Cache Blob NFS Target.
  final pulumi.Input<String>? namespacePath;

  /// The name of the Resource Group where the HPC Cache Blob NFS Target should exist. Changing this forces a new HPC Cache Blob NFS Target to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// The Resource Manager ID of the Storage Container used as the HPC Cache Blob NFS Target. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azure.storage.Container` Data Source/Resource as `resource_manager_id`.
  final pulumi.Input<String>? storageContainerId;

  /// The type of usage of the HPC Cache Blob NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`.
  final pulumi.Input<String>? usageModel;

  /// The amount of time the cache waits before it checks the back-end storage for file updates. Possible values are between `1` and `31536000`.
  final pulumi.Input<int>? verificationTimerInSeconds;

  /// The amount of time the cache waits after the last file change before it copies the changed file to back-end storage. Possible values are between `1` and `31536000`.
  final pulumi.Input<int>? writeBackTimerInSeconds;

  /// Creates a new [CacheBlobNfsTargetState].
  /// [accessPolicyName] The name of the access policy applied to this target. Defaults to `default`.
  /// [cacheName] The name of the HPC Cache, which the HPC Cache Blob NFS Target will be added to. Changing this forces a new HPC Cache Blob NFS Target to be created.
  /// [name] The name which should be used for this HPC Cache Blob NFS Target. Changing this forces a new HPC Cache Blob NFS Target to be created.
  /// [namespacePath] The client-facing file path of the HPC Cache Blob NFS Target.
  /// [resourceGroupName] The name of the Resource Group where the HPC Cache Blob NFS Target should exist. Changing this forces a new HPC Cache Blob NFS Target to be created.
  /// [storageContainerId] The Resource Manager ID of the Storage Container used as the HPC Cache Blob NFS Target. Changing this forces a new resource to be created.
  /// [usageModel] The type of usage of the HPC Cache Blob NFS Target. Possible values are: `READ_HEAVY_INFREQ`, `READ_HEAVY_CHECK_180`, `READ_ONLY`, `READ_WRITE`, `WRITE_WORKLOAD_15`, `WRITE_AROUND`, `WRITE_WORKLOAD_CHECK_30`, `WRITE_WORKLOAD_CHECK_60` and `WRITE_WORKLOAD_CLOUDWS`.
  /// [verificationTimerInSeconds] The amount of time the cache waits before it checks the back-end storage for file updates. Possible values are between `1` and `31536000`.
  /// [writeBackTimerInSeconds] The amount of time the cache waits after the last file change before it copies the changed file to back-end storage. Possible values are between `1` and `31536000`.
  CacheBlobNfsTargetState({
    this.accessPolicyName,
    this.cacheName,
    this.name,
    this.namespacePath,
    this.resourceGroupName,
    this.storageContainerId,
    this.usageModel,
    this.verificationTimerInSeconds,
    this.writeBackTimerInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicyName': ?accessPolicyName,
      'cacheName': ?cacheName,
      'name': ?name,
      'namespacePath': ?namespacePath,
      'resourceGroupName': ?resourceGroupName,
      'storageContainerId': ?storageContainerId,
      'usageModel': ?usageModel,
      'verificationTimerInSeconds': ?verificationTimerInSeconds,
      'writeBackTimerInSeconds': ?writeBackTimerInSeconds,
    };
  }

  factory CacheBlobNfsTargetState.fromMap(Map<String, dynamic> map) {
    return CacheBlobNfsTargetState(
      accessPolicyName: (() {
        final guardedValue = map['accessPolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cacheName: (() {
        final guardedValue = map['cacheName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespacePath: (() {
        final guardedValue = map['namespacePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageContainerId: (() {
        final guardedValue = map['storageContainerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      usageModel: (() {
        final guardedValue = map['usageModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      verificationTimerInSeconds: (() {
        final guardedValue = map['verificationTimerInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      writeBackTimerInSeconds: (() {
        final guardedValue = map['writeBackTimerInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
