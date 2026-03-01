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
    pulumi.Output<String>? accountName,
    pulumi.Output<PoolAutoScale>? autoScale,
    pulumi.Output<List<PoolCertificate>>? certificates,
    pulumi.Output<PoolContainerConfiguration>? containerConfiguration,
    pulumi.Output<List<PoolDataDisk>>? dataDisks,
    pulumi.Output<List<PoolDiskEncryption>>? diskEncryptions,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<PoolExtension>>? extensions,
    pulumi.Output<PoolFixedScale>? fixedScale,
    pulumi.Output<PoolIdentity>? identity,
    pulumi.Output<String>? interNodeCommunication,
    pulumi.Output<String>? licenseType,
    pulumi.Output<int>? maxTasksPerNode,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<List<PoolMount>>? mounts,
    pulumi.Output<String>? name,
    pulumi.Output<PoolNetworkConfiguration>? networkConfiguration,
    pulumi.Output<String>? nodeAgentSkuId,
    pulumi.Output<List<PoolNodePlacement>>? nodePlacements,
    pulumi.Output<String>? osDiskPlacement,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<PoolSecurityProfile>? securityProfile,
    pulumi.Output<PoolStartTask>? startTask,
    pulumi.Output<bool>? stopPendingResizeOperation,
    pulumi.Output<PoolStorageImageReference>? storageImageReference,
    pulumi.Output<String>? targetNodeCommunicationMode,
    pulumi.Output<List<PoolTaskSchedulingPolicy>>? taskSchedulingPolicies,
    pulumi.Output<List<PoolUserAccount>>? userAccounts,
    pulumi.Output<String>? vmSize,
    pulumi.Output<List<PoolWindow>>? windows,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      autoScale = pulumi.Input.asOptionalInput<PoolAutoScale>(autoScale),
      certificates = pulumi.Input.asOptionalInput<List<PoolCertificate>>(certificates),
      containerConfiguration = pulumi.Input.asOptionalInput<PoolContainerConfiguration>(containerConfiguration),
      dataDisks = pulumi.Input.asOptionalInput<List<PoolDataDisk>>(dataDisks),
      diskEncryptions = pulumi.Input.asOptionalInput<List<PoolDiskEncryption>>(diskEncryptions),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      extensions = pulumi.Input.asOptionalInput<List<PoolExtension>>(extensions),
      fixedScale = pulumi.Input.asOptionalInput<PoolFixedScale>(fixedScale),
      identity = pulumi.Input.asOptionalInput<PoolIdentity>(identity),
      interNodeCommunication = pulumi.Input.asOptionalInput<String>(interNodeCommunication),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      maxTasksPerNode = pulumi.Input.asOptionalInput<int>(maxTasksPerNode),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      mounts = pulumi.Input.asOptionalInput<List<PoolMount>>(mounts),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfiguration = pulumi.Input.asOptionalInput<PoolNetworkConfiguration>(networkConfiguration),
      nodeAgentSkuId = pulumi.Input.asOptionalInput<String>(nodeAgentSkuId),
      nodePlacements = pulumi.Input.asOptionalInput<List<PoolNodePlacement>>(nodePlacements),
      osDiskPlacement = pulumi.Input.asOptionalInput<String>(osDiskPlacement),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      securityProfile = pulumi.Input.asOptionalInput<PoolSecurityProfile>(securityProfile),
      startTask = pulumi.Input.asOptionalInput<PoolStartTask>(startTask),
      stopPendingResizeOperation = pulumi.Input.asOptionalInput<bool>(stopPendingResizeOperation),
      storageImageReference = pulumi.Input.asOptionalInput<PoolStorageImageReference>(storageImageReference),
      targetNodeCommunicationMode = pulumi.Input.asOptionalInput<String>(targetNodeCommunicationMode),
      taskSchedulingPolicies = pulumi.Input.asOptionalInput<List<PoolTaskSchedulingPolicy>>(taskSchedulingPolicies),
      userAccounts = pulumi.Input.asOptionalInput<List<PoolUserAccount>>(userAccounts),
      vmSize = pulumi.Input.asOptionalInput<String>(vmSize),
      windows = pulumi.Input.asOptionalInput<List<PoolWindow>>(windows);

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
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      autoScale: map['autoScale'] == null ? null : pulumi.Output.create<PoolAutoScale>(PoolAutoScale.fromMap((map['autoScale'] as Map).cast<String, dynamic>())),
      certificates: map['certificates'] == null ? null : pulumi.Output.create<List<PoolCertificate>>(pulumi.Input.decodeList<PoolCertificate>(map['certificates'], (value) => PoolCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      containerConfiguration: map['containerConfiguration'] == null ? null : pulumi.Output.create<PoolContainerConfiguration>(PoolContainerConfiguration.fromMap((map['containerConfiguration'] as Map).cast<String, dynamic>())),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Output.create<List<PoolDataDisk>>(pulumi.Input.decodeList<PoolDataDisk>(map['dataDisks'], (value) => PoolDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      diskEncryptions: map['diskEncryptions'] == null ? null : pulumi.Output.create<List<PoolDiskEncryption>>(pulumi.Input.decodeList<PoolDiskEncryption>(map['diskEncryptions'], (value) => PoolDiskEncryption.fromMap((value as Map).cast<String, dynamic>()))),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      extensions: map['extensions'] == null ? null : pulumi.Output.create<List<PoolExtension>>(pulumi.Input.decodeList<PoolExtension>(map['extensions'], (value) => PoolExtension.fromMap((value as Map).cast<String, dynamic>()))),
      fixedScale: map['fixedScale'] == null ? null : pulumi.Output.create<PoolFixedScale>(PoolFixedScale.fromMap((map['fixedScale'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<PoolIdentity>(PoolIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      interNodeCommunication: map['interNodeCommunication'] == null ? null : pulumi.Output.create<String>(map['interNodeCommunication'] as String),
      licenseType: map['licenseType'] == null ? null : pulumi.Output.create<String>(map['licenseType'] as String),
      maxTasksPerNode: map['maxTasksPerNode'] == null ? null : pulumi.Output.create<int>(map['maxTasksPerNode'] as int),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      mounts: map['mounts'] == null ? null : pulumi.Output.create<List<PoolMount>>(pulumi.Input.decodeList<PoolMount>(map['mounts'], (value) => PoolMount.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfiguration: map['networkConfiguration'] == null ? null : pulumi.Output.create<PoolNetworkConfiguration>(PoolNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())),
      nodeAgentSkuId: map['nodeAgentSkuId'] == null ? null : pulumi.Output.create<String>(map['nodeAgentSkuId'] as String),
      nodePlacements: map['nodePlacements'] == null ? null : pulumi.Output.create<List<PoolNodePlacement>>(pulumi.Input.decodeList<PoolNodePlacement>(map['nodePlacements'], (value) => PoolNodePlacement.fromMap((value as Map).cast<String, dynamic>()))),
      osDiskPlacement: map['osDiskPlacement'] == null ? null : pulumi.Output.create<String>(map['osDiskPlacement'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securityProfile: map['securityProfile'] == null ? null : pulumi.Output.create<PoolSecurityProfile>(PoolSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>())),
      startTask: map['startTask'] == null ? null : pulumi.Output.create<PoolStartTask>(PoolStartTask.fromMap((map['startTask'] as Map).cast<String, dynamic>())),
      stopPendingResizeOperation: map['stopPendingResizeOperation'] == null ? null : pulumi.Output.create<bool>(map['stopPendingResizeOperation'] as bool),
      storageImageReference: map['storageImageReference'] == null ? null : pulumi.Output.create<PoolStorageImageReference>(PoolStorageImageReference.fromMap((map['storageImageReference'] as Map).cast<String, dynamic>())),
      targetNodeCommunicationMode: map['targetNodeCommunicationMode'] == null ? null : pulumi.Output.create<String>(map['targetNodeCommunicationMode'] as String),
      taskSchedulingPolicies: map['taskSchedulingPolicies'] == null ? null : pulumi.Output.create<List<PoolTaskSchedulingPolicy>>(pulumi.Input.decodeList<PoolTaskSchedulingPolicy>(map['taskSchedulingPolicies'], (value) => PoolTaskSchedulingPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      userAccounts: map['userAccounts'] == null ? null : pulumi.Output.create<List<PoolUserAccount>>(pulumi.Input.decodeList<PoolUserAccount>(map['userAccounts'], (value) => PoolUserAccount.fromMap((value as Map).cast<String, dynamic>()))),
      vmSize: map['vmSize'] == null ? null : pulumi.Output.create<String>(map['vmSize'] as String),
      windows: map['windows'] == null ? null : pulumi.Output.create<List<PoolWindow>>(pulumi.Input.decodeList<PoolWindow>(map['windows'], (value) => PoolWindow.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

