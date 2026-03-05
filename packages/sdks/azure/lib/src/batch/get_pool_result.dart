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
  final String accountName;
  /// A `auto_scale` block that describes the scale settings when using auto scale.
  final List<GetPoolAutoScale> autoScales;
  final List<GetPoolCertificate> certificates;
  /// The container configuration used in the pool's VMs.
  final List<GetPoolContainerConfiguration> containerConfigurations;
  /// A `data_disks` block describes the data disk settings.
  final List<GetPoolDataDisk> dataDisks;
  /// A `disk_encryption` block describes the disk encryption configuration applied on compute nodes in the pool.
  final List<GetPoolDiskEncryption> diskEncryptions;
  final String displayName;
  /// An `extensions` block describes the extension settings
  final List<GetPoolExtension> extensions;
  /// A `fixed_scale` block that describes the scale settings when using fixed scale.
  final List<GetPoolFixedScale> fixedScales;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool.
  final String interNodeCommunication;
  /// The type of on-premises license to be used when deploying the operating system.
  final String licenseType;
  /// The maximum number of tasks that can run concurrently on a single compute node in the pool.
  final int maxTasksPerNode;
  final Map<String, String> metadata;
  /// A `mount` block that describes mount configuration.
  final List<GetPoolMount> mounts;
  /// The name of the user account.
  final String name;
  final List<GetPoolNetworkConfiguration> networkConfigurations;
  /// The SKU of the node agents in the Batch pool.
  final String nodeAgentSkuId;
  /// A `node_placement` block that describes the placement policy for allocating nodes in the pool.
  final List<GetPoolNodePlacement> nodePlacements;
  /// Specifies the ephemeral disk placement for operating system disk for all VMs in the pool.
  final String osDiskPlacement;
  final String resourceGroupName;
  /// A `start_task` block that describes the start task settings for the Batch pool.
  final List<GetPoolStartTask> startTasks;
  /// The reference of the storage image used by the nodes in the Batch pool.
  final List<GetPoolStorageImageReference> storageImageReferences;
  /// A `task_scheduling_policy` block that describes how tasks are distributed across compute nodes in a pool.
  final List<GetPoolTaskSchedulingPolicy> taskSchedulingPolicies;
  /// A `user_accounts` block that describes the list of user accounts to be created on each node in the pool.
  final List<GetPoolUserAccount> userAccounts;
  /// The size of the VM created in the Batch pool.
  final String vmSize;
  /// A `windows` block that describes the Windows configuration in the pool.
  final List<GetPoolWindow> windows;

  /// Creates a new [GetPoolResult].
  /// [accountName] The Azure Storage Account name.
  /// [autoScales] A `auto_scale` block that describes the scale settings when using auto scale.
  /// [certificates] Required.
  /// [containerConfigurations] The container configuration used in the pool's VMs.
  /// [dataDisks] A `data_disks` block describes the data disk settings.
  /// [diskEncryptions] A `disk_encryption` block describes the disk encryption configuration applied on compute nodes in the pool.
  /// [displayName] Required.
  /// [extensions] An `extensions` block describes the extension settings
  /// [fixedScales] A `fixed_scale` block that describes the scale settings when using fixed scale.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [interNodeCommunication] Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool.
  /// [licenseType] The type of on-premises license to be used when deploying the operating system.
  /// [maxTasksPerNode] The maximum number of tasks that can run concurrently on a single compute node in the pool.
  /// [metadata] Required.
  /// [mounts] A `mount` block that describes mount configuration.
  /// [name] The name of the user account.
  /// [networkConfigurations] Required.
  /// [nodeAgentSkuId] The SKU of the node agents in the Batch pool.
  /// [nodePlacements] A `node_placement` block that describes the placement policy for allocating nodes in the pool.
  /// [osDiskPlacement] Specifies the ephemeral disk placement for operating system disk for all VMs in the pool.
  /// [resourceGroupName] Required.
  /// [startTasks] A `start_task` block that describes the start task settings for the Batch pool.
  /// [storageImageReferences] The reference of the storage image used by the nodes in the Batch pool.
  /// [taskSchedulingPolicies] A `task_scheduling_policy` block that describes how tasks are distributed across compute nodes in a pool.
  /// [userAccounts] A `user_accounts` block that describes the list of user accounts to be created on each node in the pool.
  /// [vmSize] The size of the VM created in the Batch pool.
  /// [windows] A `windows` block that describes the Windows configuration in the pool.
  GetPoolResult({
    required this.accountName,
    required this.autoScales,
    required this.certificates,
    required this.containerConfigurations,
    required this.dataDisks,
    required this.diskEncryptions,
    required this.displayName,
    required this.extensions,
    required this.fixedScales,
    required this.id,
    required this.interNodeCommunication,
    required this.licenseType,
    required this.maxTasksPerNode,
    required this.metadata,
    required this.mounts,
    required this.name,
    required this.networkConfigurations,
    required this.nodeAgentSkuId,
    required this.nodePlacements,
    required this.osDiskPlacement,
    required this.resourceGroupName,
    required this.startTasks,
    required this.storageImageReferences,
    required this.taskSchedulingPolicies,
    required this.userAccounts,
    required this.vmSize,
    required this.windows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'autoScales': pulumi.Input.encodeList<GetPoolAutoScale, Map<String, dynamic>>(autoScales, (value) => value.toMap()),
      'certificates': pulumi.Input.encodeList<GetPoolCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'containerConfigurations': pulumi.Input.encodeList<GetPoolContainerConfiguration, Map<String, dynamic>>(containerConfigurations, (value) => value.toMap()),
      'dataDisks': pulumi.Input.encodeList<GetPoolDataDisk, Map<String, dynamic>>(dataDisks, (value) => value.toMap()),
      'diskEncryptions': pulumi.Input.encodeList<GetPoolDiskEncryption, Map<String, dynamic>>(diskEncryptions, (value) => value.toMap()),
      'displayName': displayName,
      'extensions': pulumi.Input.encodeList<GetPoolExtension, Map<String, dynamic>>(extensions, (value) => value.toMap()),
      'fixedScales': pulumi.Input.encodeList<GetPoolFixedScale, Map<String, dynamic>>(fixedScales, (value) => value.toMap()),
      'id': id,
      'interNodeCommunication': interNodeCommunication,
      'licenseType': licenseType,
      'maxTasksPerNode': maxTasksPerNode,
      'metadata': metadata,
      'mounts': pulumi.Input.encodeList<GetPoolMount, Map<String, dynamic>>(mounts, (value) => value.toMap()),
      'name': name,
      'networkConfigurations': pulumi.Input.encodeList<GetPoolNetworkConfiguration, Map<String, dynamic>>(networkConfigurations, (value) => value.toMap()),
      'nodeAgentSkuId': nodeAgentSkuId,
      'nodePlacements': pulumi.Input.encodeList<GetPoolNodePlacement, Map<String, dynamic>>(nodePlacements, (value) => value.toMap()),
      'osDiskPlacement': osDiskPlacement,
      'resourceGroupName': resourceGroupName,
      'startTasks': pulumi.Input.encodeList<GetPoolStartTask, Map<String, dynamic>>(startTasks, (value) => value.toMap()),
      'storageImageReferences': pulumi.Input.encodeList<GetPoolStorageImageReference, Map<String, dynamic>>(storageImageReferences, (value) => value.toMap()),
      'taskSchedulingPolicies': pulumi.Input.encodeList<GetPoolTaskSchedulingPolicy, Map<String, dynamic>>(taskSchedulingPolicies, (value) => value.toMap()),
      'userAccounts': pulumi.Input.encodeList<GetPoolUserAccount, Map<String, dynamic>>(userAccounts, (value) => value.toMap()),
      'vmSize': vmSize,
      'windows': pulumi.Input.encodeList<GetPoolWindow, Map<String, dynamic>>(windows, (value) => value.toMap()),
    };
  }

  factory GetPoolResult.fromMap(Map<String, dynamic> map) {
    return GetPoolResult(
      accountName: map['accountName'] as String,
      autoScales: pulumi.Input.decodeList<GetPoolAutoScale>(map['autoScales']!, (value) => GetPoolAutoScale.fromMap((value as Map).cast<String, dynamic>())),
      certificates: pulumi.Input.decodeList<GetPoolCertificate>(map['certificates']!, (value) => GetPoolCertificate.fromMap((value as Map).cast<String, dynamic>())),
      containerConfigurations: pulumi.Input.decodeList<GetPoolContainerConfiguration>(map['containerConfigurations']!, (value) => GetPoolContainerConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      dataDisks: pulumi.Input.decodeList<GetPoolDataDisk>(map['dataDisks']!, (value) => GetPoolDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      diskEncryptions: pulumi.Input.decodeList<GetPoolDiskEncryption>(map['diskEncryptions']!, (value) => GetPoolDiskEncryption.fromMap((value as Map).cast<String, dynamic>())),
      displayName: map['displayName'] as String,
      extensions: pulumi.Input.decodeList<GetPoolExtension>(map['extensions']!, (value) => GetPoolExtension.fromMap((value as Map).cast<String, dynamic>())),
      fixedScales: pulumi.Input.decodeList<GetPoolFixedScale>(map['fixedScales']!, (value) => GetPoolFixedScale.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      interNodeCommunication: map['interNodeCommunication'] as String,
      licenseType: map['licenseType'] as String,
      maxTasksPerNode: map['maxTasksPerNode'] as int,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      mounts: pulumi.Input.decodeList<GetPoolMount>(map['mounts']!, (value) => GetPoolMount.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkConfigurations: pulumi.Input.decodeList<GetPoolNetworkConfiguration>(map['networkConfigurations']!, (value) => GetPoolNetworkConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      nodeAgentSkuId: map['nodeAgentSkuId'] as String,
      nodePlacements: pulumi.Input.decodeList<GetPoolNodePlacement>(map['nodePlacements']!, (value) => GetPoolNodePlacement.fromMap((value as Map).cast<String, dynamic>())),
      osDiskPlacement: map['osDiskPlacement'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      startTasks: pulumi.Input.decodeList<GetPoolStartTask>(map['startTasks']!, (value) => GetPoolStartTask.fromMap((value as Map).cast<String, dynamic>())),
      storageImageReferences: pulumi.Input.decodeList<GetPoolStorageImageReference>(map['storageImageReferences']!, (value) => GetPoolStorageImageReference.fromMap((value as Map).cast<String, dynamic>())),
      taskSchedulingPolicies: pulumi.Input.decodeList<GetPoolTaskSchedulingPolicy>(map['taskSchedulingPolicies']!, (value) => GetPoolTaskSchedulingPolicy.fromMap((value as Map).cast<String, dynamic>())),
      userAccounts: pulumi.Input.decodeList<GetPoolUserAccount>(map['userAccounts']!, (value) => GetPoolUserAccount.fromMap((value as Map).cast<String, dynamic>())),
      vmSize: map['vmSize'] as String,
      windows: pulumi.Input.decodeList<GetPoolWindow>(map['windows']!, (value) => GetPoolWindow.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

