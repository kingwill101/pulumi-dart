// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_auto_scale.dart';
import 'pool_certificate.dart';
import 'pool_container_configuration.dart';
import 'pool_data_disk.dart';
import 'pool_disk_encryption.dart';
import 'pool_extension.dart';
import 'pool_fixed_scale.dart';
import 'pool_identity.dart';
import 'pool_mount.dart';
import 'pool_network_configuration.dart';
import 'pool_node_placement.dart';
import 'pool_security_profile.dart';
import 'pool_start_task.dart';
import 'pool_storage_image_reference.dart';
import 'pool_task_scheduling_policy.dart';
import 'pool_user_account.dart';
import 'pool_window.dart';

/// Input properties used for looking up and filtering Pool resources.
class PoolState {
  /// Specifies the name of the Batch account in which the pool will be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accountName;
  /// A `auto_scale` block that describes the scale settings when using auto scale as defined below.
  ///
  /// > **Note:** `fixed_scale` and `auto_scale` blocks cannot be used both at the same time.
  final pulumi.Input<PoolAutoScale>? autoScale;
  final pulumi.Input<List<PoolCertificate>>? certificates;
  /// The container configuration used in the pool's VMs. One `container_configuration` block as defined below.
  final pulumi.Input<PoolContainerConfiguration>? containerConfiguration;
  /// A `data_disks` block describes the data disk settings as defined below.
  final pulumi.Input<List<PoolDataDisk>>? dataDisks;
  /// A `disk_encryption` block, as defined below, describes the disk encryption configuration applied on compute nodes in the pool. Disk encryption configuration is not supported on Linux pool created with Virtual Machine Image or Shared Image Gallery Image.
  final pulumi.Input<List<PoolDiskEncryption>>? diskEncryptions;
  /// Specifies the display name of the Batch pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? displayName;
  /// An `extensions` block as defined below.
  final pulumi.Input<List<PoolExtension>>? extensions;
  /// A `fixed_scale` block that describes the scale settings when using fixed scale as defined below.
  final pulumi.Input<PoolFixedScale>? fixedScale;
  /// An `identity` block as defined below.
  final pulumi.Input<PoolIdentity>? identity;
  /// Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. Values allowed are `Disabled` and `Enabled`. Defaults to `Enabled`.
  final pulumi.Input<String>? interNodeCommunication;
  /// The type of on-premises license to be used when deploying the operating system. This only applies to images that contain the Windows operating system, and should only be used when you hold valid on-premises licenses for the nodes which will be deployed. If omitted, no on-premises licensing discount is applied. Values are: "Windows_Server" - The on-premises license is for Windows Server. "Windows_Client" - The on-premises license is for Windows Client.
  final pulumi.Input<String>? licenseType;
  /// Specifies the maximum number of tasks that can run concurrently on a single compute node in the pool. Defaults to `1`. Changing this forces a new resource to be created.
  final pulumi.Input<int>? maxTasksPerNode;
  /// A map of custom batch pool metadata.
  final pulumi.Input<Map<String, String>>? metadata;
  /// A `mount` block defined as below.
  final pulumi.Input<List<PoolMount>>? mounts;
  /// Specifies the name of the Batch pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network_configuration` block that describes the network configurations for the Batch pool as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<PoolNetworkConfiguration>? networkConfiguration;
  /// Specifies the SKU of the node agents that will be created in the Batch pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? nodeAgentSkuId;
  /// A `node_placement` block that describes the placement policy for allocating nodes in the pool as defined below.
  final pulumi.Input<List<PoolNodePlacement>>? nodePlacements;
  /// Specifies the ephemeral disk placement for operating system disk for all VMs in the pool. This property can be used by user in the request to choose which location the operating system should be in. e.g., cache disk space for Ephemeral OS disk provisioning. For more information on Ephemeral OS disk size requirements, please refer to Ephemeral OS disk size requirements for Windows VMs at <https://docs.microsoft.com/en-us/azure/virtual-machines/windows/ephemeral-os-disks#size-requirements> and Linux VMs at <https://docs.microsoft.com/en-us/azure/virtual-machines/linux/ephemeral-os-disks#size-requirements>. The only possible value is `CacheDisk`.
  final pulumi.Input<String>? osDiskPlacement;
  /// The name of the resource group in which to create the Batch pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `security_profile` block that describes the security settings for the Batch pool as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<PoolSecurityProfile>? securityProfile;
  /// A `start_task` block that describes the start task settings for the Batch pool as defined below.
  final pulumi.Input<PoolStartTask>? startTask;
  /// Whether to stop if there is a pending resize operation on this pool.
  final pulumi.Input<bool>? stopPendingResizeOperation;
  /// A `storage_image_reference` block for the virtual machines that will compose the Batch pool as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<PoolStorageImageReference>? storageImageReference;
  /// The desired node communication mode for the pool. Possible values are `Classic`, `Default` and `Simplified`.
  final pulumi.Input<String>? targetNodeCommunicationMode;
  /// A `task_scheduling_policy` block that describes how tasks are distributed across compute nodes in a pool as defined below. If not specified, the default is spread as defined below.
  final pulumi.Input<List<PoolTaskSchedulingPolicy>>? taskSchedulingPolicies;
  /// A `user_accounts` block that describes the list of user accounts to be created on each node in the pool as defined below.
  final pulumi.Input<List<PoolUserAccount>>? userAccounts;
  /// Specifies the size of the VM created in the Batch pool. Changing this forces a new resource to be created.
  final pulumi.Input<String>? vmSize;
  /// A `windows` block that describes the Windows configuration in the pool as defined below.
  final pulumi.Input<List<PoolWindow>>? windows;

  /// Creates a new [PoolState].
  /// [accountName] Specifies the name of the Batch account in which the pool will be created. Changing this forces a new resource to be created.
  /// [autoScale] A `auto_scale` block that describes the scale settings when using auto scale as defined below.
  /// [certificates] Optional.
  /// [containerConfiguration] The container configuration used in the pool's VMs. One `container_configuration` block as defined below.
  /// [dataDisks] A `data_disks` block describes the data disk settings as defined below.
  /// [diskEncryptions] A `disk_encryption` block, as defined below, describes the disk encryption configuration applied on compute nodes in the pool. Disk encryption configuration is not supported on Linux pool created with Virtual Machine Image or Shared Image Gallery Image.
  /// [displayName] Specifies the display name of the Batch pool. Changing this forces a new resource to be created.
  /// [extensions] An `extensions` block as defined below.
  /// [fixedScale] A `fixed_scale` block that describes the scale settings when using fixed scale as defined below.
  /// [identity] An `identity` block as defined below.
  /// [interNodeCommunication] Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. Values allowed are `Disabled` and `Enabled`. Defaults to `Enabled`.
  /// [licenseType] The type of on-premises license to be used when deploying the operating system. This only applies to images that contain the Windows operating system, and should only be used when you hold valid on-premises licenses for the nodes which will be deployed. If omitted, no on-premises licensing discount is applied. Values are: "Windows_Server" - The on-premises license is for Windows Server. "Windows_Client" - The on-premises license is for Windows Client.
  /// [maxTasksPerNode] Specifies the maximum number of tasks that can run concurrently on a single compute node in the pool. Defaults to `1`. Changing this forces a new resource to be created.
  /// [metadata] A map of custom batch pool metadata.
  /// [mounts] A `mount` block defined as below.
  /// [name] Specifies the name of the Batch pool. Changing this forces a new resource to be created.
  /// [networkConfiguration] A `network_configuration` block that describes the network configurations for the Batch pool as defined below. Changing this forces a new resource to be created.
  /// [nodeAgentSkuId] Specifies the SKU of the node agents that will be created in the Batch pool. Changing this forces a new resource to be created.
  /// [nodePlacements] A `node_placement` block that describes the placement policy for allocating nodes in the pool as defined below.
  /// [osDiskPlacement] Specifies the ephemeral disk placement for operating system disk for all VMs in the pool. This property can be used by user in the request to choose which location the operating system should be in. e.g., cache disk space for Ephemeral OS disk provisioning. For more information on Ephemeral OS disk size requirements, please refer to Ephemeral OS disk size requirements for Windows VMs at <https://docs.microsoft.com/en-us/azure/virtual-machines/windows/ephemeral-os-disks#size-requirements> and Linux VMs at <https://docs.microsoft.com/en-us/azure/virtual-machines/linux/ephemeral-os-disks#size-requirements>. The only possible value is `CacheDisk`.
  /// [resourceGroupName] The name of the resource group in which to create the Batch pool. Changing this forces a new resource to be created.
  /// [securityProfile] A `security_profile` block that describes the security settings for the Batch pool as defined below. Changing this forces a new resource to be created.
  /// [startTask] A `start_task` block that describes the start task settings for the Batch pool as defined below.
  /// [stopPendingResizeOperation] Whether to stop if there is a pending resize operation on this pool.
  /// [storageImageReference] A `storage_image_reference` block for the virtual machines that will compose the Batch pool as defined below. Changing this forces a new resource to be created.
  /// [targetNodeCommunicationMode] The desired node communication mode for the pool. Possible values are `Classic`, `Default` and `Simplified`.
  /// [taskSchedulingPolicies] A `task_scheduling_policy` block that describes how tasks are distributed across compute nodes in a pool as defined below. If not specified, the default is spread as defined below.
  /// [userAccounts] A `user_accounts` block that describes the list of user accounts to be created on each node in the pool as defined below.
  /// [vmSize] Specifies the size of the VM created in the Batch pool. Changing this forces a new resource to be created.
  /// [windows] A `windows` block that describes the Windows configuration in the pool as defined below.
  PoolState({
    this.accountName,
    this.autoScale,
    this.certificates,
    this.containerConfiguration,
    this.dataDisks,
    this.diskEncryptions,
    this.displayName,
    this.extensions,
    this.fixedScale,
    this.identity,
    this.interNodeCommunication,
    this.licenseType,
    this.maxTasksPerNode,
    this.metadata,
    this.mounts,
    this.name,
    this.networkConfiguration,
    this.nodeAgentSkuId,
    this.nodePlacements,
    this.osDiskPlacement,
    this.resourceGroupName,
    this.securityProfile,
    this.startTask,
    this.stopPendingResizeOperation,
    this.storageImageReference,
    this.targetNodeCommunicationMode,
    this.taskSchedulingPolicies,
    this.userAccounts,
    this.vmSize,
    this.windows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'autoScale': ?pulumi.Input.mapOptionalInputValue<PoolAutoScale, Map<String, dynamic>>(autoScale, (value) => value.toMap()),
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<PoolCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<PoolCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerConfiguration': ?pulumi.Input.mapOptionalInputValue<PoolContainerConfiguration, Map<String, dynamic>>(containerConfiguration, (value) => value.toMap()),
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<PoolDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<PoolDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskEncryptions': ?pulumi.Input.mapOptionalInputValue<List<PoolDiskEncryption>, List<Map<String, dynamic>>>(diskEncryptions, (value) => pulumi.Input.encodeList<PoolDiskEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<PoolExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<PoolExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fixedScale': ?pulumi.Input.mapOptionalInputValue<PoolFixedScale, Map<String, dynamic>>(fixedScale, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<PoolIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'interNodeCommunication': ?interNodeCommunication,
      'licenseType': ?licenseType,
      'maxTasksPerNode': ?maxTasksPerNode,
      'metadata': ?metadata,
      'mounts': ?pulumi.Input.mapOptionalInputValue<List<PoolMount>, List<Map<String, dynamic>>>(mounts, (value) => pulumi.Input.encodeList<PoolMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<PoolNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'nodeAgentSkuId': ?nodeAgentSkuId,
      'nodePlacements': ?pulumi.Input.mapOptionalInputValue<List<PoolNodePlacement>, List<Map<String, dynamic>>>(nodePlacements, (value) => pulumi.Input.encodeList<PoolNodePlacement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDiskPlacement': ?osDiskPlacement,
      'resourceGroupName': ?resourceGroupName,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<PoolSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'startTask': ?pulumi.Input.mapOptionalInputValue<PoolStartTask, Map<String, dynamic>>(startTask, (value) => value.toMap()),
      'stopPendingResizeOperation': ?stopPendingResizeOperation,
      'storageImageReference': ?pulumi.Input.mapOptionalInputValue<PoolStorageImageReference, Map<String, dynamic>>(storageImageReference, (value) => value.toMap()),
      'targetNodeCommunicationMode': ?targetNodeCommunicationMode,
      'taskSchedulingPolicies': ?pulumi.Input.mapOptionalInputValue<List<PoolTaskSchedulingPolicy>, List<Map<String, dynamic>>>(taskSchedulingPolicies, (value) => pulumi.Input.encodeList<PoolTaskSchedulingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userAccounts': ?pulumi.Input.mapOptionalInputValue<List<PoolUserAccount>, List<Map<String, dynamic>>>(userAccounts, (value) => pulumi.Input.encodeList<PoolUserAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmSize': ?vmSize,
      'windows': ?pulumi.Input.mapOptionalInputValue<List<PoolWindow>, List<Map<String, dynamic>>>(windows, (value) => pulumi.Input.encodeList<PoolWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PoolState.fromMap(Map<String, dynamic> map) {
    return PoolState(
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      autoScale: map['autoScale'] == null ? null : (PoolAutoScale.fromMap((map['autoScale'] as Map).cast<String, dynamic>())).input(),
      certificates: map['certificates'] == null ? null : (pulumi.Input.decodeList<PoolCertificate>(map['certificates'], (value) => PoolCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containerConfiguration: map['containerConfiguration'] == null ? null : (PoolContainerConfiguration.fromMap((map['containerConfiguration'] as Map).cast<String, dynamic>())).input(),
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<PoolDataDisk>(map['dataDisks'], (value) => PoolDataDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diskEncryptions: map['diskEncryptions'] == null ? null : (pulumi.Input.decodeList<PoolDiskEncryption>(map['diskEncryptions'], (value) => PoolDiskEncryption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      extensions: map['extensions'] == null ? null : (pulumi.Input.decodeList<PoolExtension>(map['extensions'], (value) => PoolExtension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fixedScale: map['fixedScale'] == null ? null : (PoolFixedScale.fromMap((map['fixedScale'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (PoolIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      interNodeCommunication: map['interNodeCommunication'] == null ? null : (map['interNodeCommunication'] as String).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType'] as String).input(),
      maxTasksPerNode: map['maxTasksPerNode'] == null ? null : (map['maxTasksPerNode'] as int).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      mounts: map['mounts'] == null ? null : (pulumi.Input.decodeList<PoolMount>(map['mounts'], (value) => PoolMount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkConfiguration: map['networkConfiguration'] == null ? null : (PoolNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())).input(),
      nodeAgentSkuId: map['nodeAgentSkuId'] == null ? null : (map['nodeAgentSkuId'] as String).input(),
      nodePlacements: map['nodePlacements'] == null ? null : (pulumi.Input.decodeList<PoolNodePlacement>(map['nodePlacements'], (value) => PoolNodePlacement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      osDiskPlacement: map['osDiskPlacement'] == null ? null : (map['osDiskPlacement'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      securityProfile: map['securityProfile'] == null ? null : (PoolSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())).input(),
      startTask: map['startTask'] == null ? null : (PoolStartTask.fromMap((map['startTask'] as Map).cast<String, dynamic>())).input(),
      stopPendingResizeOperation: map['stopPendingResizeOperation'] == null ? null : (map['stopPendingResizeOperation'] as bool).input(),
      storageImageReference: map['storageImageReference'] == null ? null : (PoolStorageImageReference.fromMap((map['storageImageReference'] as Map).cast<String, dynamic>())).input(),
      targetNodeCommunicationMode: map['targetNodeCommunicationMode'] == null ? null : (map['targetNodeCommunicationMode'] as String).input(),
      taskSchedulingPolicies: map['taskSchedulingPolicies'] == null ? null : (pulumi.Input.decodeList<PoolTaskSchedulingPolicy>(map['taskSchedulingPolicies'], (value) => PoolTaskSchedulingPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userAccounts: map['userAccounts'] == null ? null : (pulumi.Input.decodeList<PoolUserAccount>(map['userAccounts'], (value) => PoolUserAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmSize: map['vmSize'] == null ? null : (map['vmSize'] as String).input(),
      windows: map['windows'] == null ? null : (pulumi.Input.decodeList<PoolWindow>(map['windows'], (value) => PoolWindow.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

