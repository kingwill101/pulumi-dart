// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_auto_scale.dart';
import 'get_pool_certificate.dart';
import 'get_pool_container_configuration.dart';
import 'get_pool_data_disk.dart';
import 'get_pool_disk_encryption.dart';
import 'get_pool_extension.dart';
import 'get_pool_fixed_scale.dart';
import 'get_pool_mount.dart';
import 'get_pool_network_configuration.dart';
import 'get_pool_node_placement.dart';
import 'get_pool_start_task.dart';
import 'get_pool_storage_image_reference.dart';
import 'get_pool_task_scheduling_policy.dart';
import 'get_pool_user_account.dart';
import 'get_pool_window.dart';

/// Result data returned by getPool.
class GetPoolResult {
  /// The Azure Storage Account name.
  final String? accountName;
  /// A `autoScale` block that describes the scale settings when using auto scale.
  final List<GetPoolAutoScale>? autoScales;
  final List<GetPoolCertificate>? certificates;
  /// The container configuration used in the pool's VMs.
  final List<GetPoolContainerConfiguration>? containerConfigurations;
  /// A `dataDisks` block describes the data disk settings.
  final List<GetPoolDataDisk>? dataDisks;
  /// A `diskEncryption` block describes the disk encryption configuration applied on compute nodes in the pool.
  final List<GetPoolDiskEncryption>? diskEncryptions;
  final String? displayName;
  /// An `extensions` block describes the extension settings
  final List<GetPoolExtension>? extensions;
  /// A `fixedScale` block that describes the scale settings when using fixed scale.
  final List<GetPoolFixedScale>? fixedScales;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool.
  final String? interNodeCommunication;
  /// The type of on-premises license to be used when deploying the operating system.
  final String? licenseType;
  /// The maximum number of tasks that can run concurrently on a single compute node in the pool.
  final int? maxTasksPerNode;
  final Map<String, String>? metadata;
  /// A `mount` block that describes mount configuration.
  final List<GetPoolMount>? mounts;
  /// The name of the user account.
  final String? name;
  final List<GetPoolNetworkConfiguration>? networkConfigurations;
  /// The SKU of the node agents in the Batch pool.
  final String? nodeAgentSkuId;
  /// A `nodePlacement` block that describes the placement policy for allocating nodes in the pool.
  final List<GetPoolNodePlacement>? nodePlacements;
  /// Specifies the ephemeral disk placement for operating system disk for all VMs in the pool.
  final String? osDiskPlacement;
  final String? resourceGroupName;
  /// A `startTask` block that describes the start task settings for the Batch pool.
  final List<GetPoolStartTask>? startTasks;
  /// The reference of the storage image used by the nodes in the Batch pool.
  final List<GetPoolStorageImageReference>? storageImageReferences;
  /// A `taskSchedulingPolicy` block that describes how tasks are distributed across compute nodes in a pool.
  final List<GetPoolTaskSchedulingPolicy>? taskSchedulingPolicies;
  /// A `userAccounts` block that describes the list of user accounts to be created on each node in the pool.
  final List<GetPoolUserAccount>? userAccounts;
  /// The size of the VM created in the Batch pool.
  final String? vmSize;
  /// A `windows` block that describes the Windows configuration in the pool.
  final List<GetPoolWindow>? windows;

  /// Creates a new [GetPoolResult].
  /// [accountName] The Azure Storage Account name.
  /// [autoScales] A `autoScale` block that describes the scale settings when using auto scale.
  /// [certificates] Optional.
  /// [containerConfigurations] The container configuration used in the pool's VMs.
  /// [dataDisks] A `dataDisks` block describes the data disk settings.
  /// [diskEncryptions] A `diskEncryption` block describes the disk encryption configuration applied on compute nodes in the pool.
  /// [displayName] Optional.
  /// [extensions] An `extensions` block describes the extension settings
  /// [fixedScales] A `fixedScale` block that describes the scale settings when using fixed scale.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [interNodeCommunication] Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool.
  /// [licenseType] The type of on-premises license to be used when deploying the operating system.
  /// [maxTasksPerNode] The maximum number of tasks that can run concurrently on a single compute node in the pool.
  /// [metadata] Optional.
  /// [mounts] A `mount` block that describes mount configuration.
  /// [name] The name of the user account.
  /// [networkConfigurations] Optional.
  /// [nodeAgentSkuId] The SKU of the node agents in the Batch pool.
  /// [nodePlacements] A `nodePlacement` block that describes the placement policy for allocating nodes in the pool.
  /// [osDiskPlacement] Specifies the ephemeral disk placement for operating system disk for all VMs in the pool.
  /// [resourceGroupName] Optional.
  /// [startTasks] A `startTask` block that describes the start task settings for the Batch pool.
  /// [storageImageReferences] The reference of the storage image used by the nodes in the Batch pool.
  /// [taskSchedulingPolicies] A `taskSchedulingPolicy` block that describes how tasks are distributed across compute nodes in a pool.
  /// [userAccounts] A `userAccounts` block that describes the list of user accounts to be created on each node in the pool.
  /// [vmSize] The size of the VM created in the Batch pool.
  /// [windows] A `windows` block that describes the Windows configuration in the pool.
  const GetPoolResult({
    this.accountName,
    this.autoScales,
    this.certificates,
    this.containerConfigurations,
    this.dataDisks,
    this.diskEncryptions,
    this.displayName,
    this.extensions,
    this.fixedScales,
    this.id,
    this.interNodeCommunication,
    this.licenseType,
    this.maxTasksPerNode,
    this.metadata,
    this.mounts,
    this.name,
    this.networkConfigurations,
    this.nodeAgentSkuId,
    this.nodePlacements,
    this.osDiskPlacement,
    this.resourceGroupName,
    this.startTasks,
    this.storageImageReferences,
    this.taskSchedulingPolicies,
    this.userAccounts,
    this.vmSize,
    this.windows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'autoScales': ?(() { final guardedValue = autoScales; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolAutoScale, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'certificates': ?(() { final guardedValue = certificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolCertificate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'containerConfigurations': ?(() { final guardedValue = containerConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolContainerConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataDisks': ?(() { final guardedValue = dataDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolDataDisk, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'diskEncryptions': ?(() { final guardedValue = diskEncryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolDiskEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'displayName': ?displayName,
      'extensions': ?(() { final guardedValue = extensions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolExtension, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fixedScales': ?(() { final guardedValue = fixedScales; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolFixedScale, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'interNodeCommunication': ?interNodeCommunication,
      'licenseType': ?licenseType,
      'maxTasksPerNode': ?maxTasksPerNode,
      'metadata': ?metadata,
      'mounts': ?(() { final guardedValue = mounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolMount, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'networkConfigurations': ?(() { final guardedValue = networkConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolNetworkConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodeAgentSkuId': ?nodeAgentSkuId,
      'nodePlacements': ?(() { final guardedValue = nodePlacements; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolNodePlacement, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'osDiskPlacement': ?osDiskPlacement,
      'resourceGroupName': ?resourceGroupName,
      'startTasks': ?(() { final guardedValue = startTasks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolStartTask, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageImageReferences': ?(() { final guardedValue = storageImageReferences; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolStorageImageReference, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'taskSchedulingPolicies': ?(() { final guardedValue = taskSchedulingPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolTaskSchedulingPolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userAccounts': ?(() { final guardedValue = userAccounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolUserAccount, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vmSize': ?vmSize,
      'windows': ?(() { final guardedValue = windows; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPoolWindow, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPoolResult.fromMap(Map<String, dynamic> map) {
    return GetPoolResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoScales: (() { final guardedValue = map['autoScales']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolAutoScale>(guardedValue, (value) => GetPoolAutoScale.fromMap((value as Map).cast<String, dynamic>())); })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolCertificate>(guardedValue, (value) => GetPoolCertificate.fromMap((value as Map).cast<String, dynamic>())); })(),
      containerConfigurations: (() { final guardedValue = map['containerConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolContainerConfiguration>(guardedValue, (value) => GetPoolContainerConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolDataDisk>(guardedValue, (value) => GetPoolDataDisk.fromMap((value as Map).cast<String, dynamic>())); })(),
      diskEncryptions: (() { final guardedValue = map['diskEncryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolDiskEncryption>(guardedValue, (value) => GetPoolDiskEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolExtension>(guardedValue, (value) => GetPoolExtension.fromMap((value as Map).cast<String, dynamic>())); })(),
      fixedScales: (() { final guardedValue = map['fixedScales']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolFixedScale>(guardedValue, (value) => GetPoolFixedScale.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interNodeCommunication: (() { final guardedValue = map['interNodeCommunication']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxTasksPerNode: (() { final guardedValue = map['maxTasksPerNode']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      mounts: (() { final guardedValue = map['mounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolMount>(guardedValue, (value) => GetPoolMount.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConfigurations: (() { final guardedValue = map['networkConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolNetworkConfiguration>(guardedValue, (value) => GetPoolNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodeAgentSkuId: (() { final guardedValue = map['nodeAgentSkuId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodePlacements: (() { final guardedValue = map['nodePlacements']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolNodePlacement>(guardedValue, (value) => GetPoolNodePlacement.fromMap((value as Map).cast<String, dynamic>())); })(),
      osDiskPlacement: (() { final guardedValue = map['osDiskPlacement']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTasks: (() { final guardedValue = map['startTasks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolStartTask>(guardedValue, (value) => GetPoolStartTask.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageImageReferences: (() { final guardedValue = map['storageImageReferences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolStorageImageReference>(guardedValue, (value) => GetPoolStorageImageReference.fromMap((value as Map).cast<String, dynamic>())); })(),
      taskSchedulingPolicies: (() { final guardedValue = map['taskSchedulingPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolTaskSchedulingPolicy>(guardedValue, (value) => GetPoolTaskSchedulingPolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      userAccounts: (() { final guardedValue = map['userAccounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolUserAccount>(guardedValue, (value) => GetPoolUserAccount.fromMap((value as Map).cast<String, dynamic>())); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return guardedValue as String; })(),
      windows: (() { final guardedValue = map['windows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPoolWindow>(guardedValue, (value) => GetPoolWindow.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
