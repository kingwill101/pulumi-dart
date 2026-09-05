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
  final pulumi.Input<String?>? accountName;
  /// A `autoScale` block that describes the scale settings when using auto scale as defined below.
  ///
  /// &gt; **Note:** `fixedScale` and `autoScale` blocks cannot be used both at the same time.
  final pulumi.Input<PoolAutoScale?>? autoScale;
  final pulumi.Input<List<PoolCertificate>?>? certificates;
  /// The container configuration used in the pool's VMs. One `containerConfiguration` block as defined below.
  final pulumi.Input<PoolContainerConfiguration?>? containerConfiguration;
  /// A `dataDisks` block describes the data disk settings as defined below.
  final pulumi.Input<List<PoolDataDisk>?>? dataDisks;
  /// A `diskEncryption` block, as defined below, describes the disk encryption configuration applied on compute nodes in the pool. Disk encryption configuration is not supported on Linux pool created with Virtual Machine Image or Shared Image Gallery Image.
  final pulumi.Input<List<PoolDiskEncryption>?>? diskEncryptions;
  /// Specifies the display name of the Batch pool. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? displayName;
  /// An `extensions` block as defined below.
  final pulumi.Input<List<PoolExtension>?>? extensions;
  /// A `fixedScale` block that describes the scale settings when using fixed scale as defined below.
  final pulumi.Input<PoolFixedScale?>? fixedScale;
  /// An `identity` block as defined below.
  final pulumi.Input<PoolIdentity?>? identity;
  /// Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. Values allowed are `Disabled` and `Enabled`. Defaults to `Enabled`.
  final pulumi.Input<String?>? interNodeCommunication;
  /// The type of on-premises license to be used when deploying the operating system. This only applies to images that contain the Windows operating system, and should only be used when you hold valid on-premises licenses for the nodes which will be deployed. If omitted, no on-premises licensing discount is applied. Values are: "Windows_Server" - The on-premises license is for Windows Server. "Windows_Client" - The on-premises license is for Windows Client.
  final pulumi.Input<String?>? licenseType;
  /// Specifies the maximum number of tasks that can run concurrently on a single compute node in the pool. Defaults to `1`. Changing this forces a new resource to be created.
  final pulumi.Input<int?>? maxTasksPerNode;
  /// A map of custom batch pool metadata.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// A `mount` block defined as below.
  final pulumi.Input<List<PoolMount>?>? mounts;
  /// Specifies the name of the Batch pool. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A `networkConfiguration` block that describes the network configurations for the Batch pool as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<PoolNetworkConfiguration?>? networkConfiguration;
  /// Specifies the SKU of the node agents that will be created in the Batch pool. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? nodeAgentSkuId;
  /// A `nodePlacement` block that describes the placement policy for allocating nodes in the pool as defined below.
  final pulumi.Input<List<PoolNodePlacement>?>? nodePlacements;
  /// Specifies the ephemeral disk placement for operating system disk for all VMs in the pool. This property can be used by user in the request to choose which location the operating system should be in. e.g., cache disk space for Ephemeral OS disk provisioning. For more information on Ephemeral OS disk size requirements, please refer to Ephemeral OS disk size requirements for Windows VMs at &lt;https://docs.microsoft.com/en-us/azure/virtual-machines/windows/ephemeral-os-disks#size-requirements&gt; and Linux VMs at &lt;https://docs.microsoft.com/en-us/azure/virtual-machines/linux/ephemeral-os-disks#size-requirements&gt;. The only possible value is `CacheDisk`.
  final pulumi.Input<String?>? osDiskPlacement;
  /// The name of the resource group in which to create the Batch pool. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A `securityProfile` block that describes the security settings for the Batch pool as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<PoolSecurityProfile?>? securityProfile;
  /// A `startTask` block that describes the start task settings for the Batch pool as defined below.
  final pulumi.Input<PoolStartTask?>? startTask;
  /// Whether to stop if there is a pending resize operation on this pool.
  final pulumi.Input<bool?>? stopPendingResizeOperation;
  /// A `storageImageReference` block for the virtual machines that will compose the Batch pool as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<PoolStorageImageReference?>? storageImageReference;
  /// The desired node communication mode for the pool. Possible values are `Classic`, `Default` and `Simplified`.
  final pulumi.Input<String?>? targetNodeCommunicationMode;
  /// A `taskSchedulingPolicy` block that describes how tasks are distributed across compute nodes in a pool as defined below. If not specified, the default is spread as defined below.
  final pulumi.Input<List<PoolTaskSchedulingPolicy>?>? taskSchedulingPolicies;
  /// A `userAccounts` block that describes the list of user accounts to be created on each node in the pool as defined below.
  final pulumi.Input<List<PoolUserAccount>?>? userAccounts;
  /// Specifies the size of the VM created in the Batch pool. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? vmSize;
  /// A `windows` block that describes the Windows configuration in the pool as defined below.
  final pulumi.Input<List<PoolWindow>?>? windows;

  /// Creates a new [PoolState].
  /// [accountName] Specifies the name of the Batch account in which the pool will be created. Changing this forces a new resource to be created.
  /// [autoScale] A `autoScale` block that describes the scale settings when using auto scale as defined below.
  /// [certificates] Optional.
  /// [containerConfiguration] The container configuration used in the pool's VMs. One `containerConfiguration` block as defined below.
  /// [dataDisks] A `dataDisks` block describes the data disk settings as defined below.
  /// [diskEncryptions] A `diskEncryption` block, as defined below, describes the disk encryption configuration applied on compute nodes in the pool. Disk encryption configuration is not supported on Linux pool created with Virtual Machine Image or Shared Image Gallery Image.
  /// [displayName] Specifies the display name of the Batch pool. Changing this forces a new resource to be created.
  /// [extensions] An `extensions` block as defined below.
  /// [fixedScale] A `fixedScale` block that describes the scale settings when using fixed scale as defined below.
  /// [identity] An `identity` block as defined below.
  /// [interNodeCommunication] Whether the pool permits direct communication between nodes. This imposes restrictions on which nodes can be assigned to the pool. Enabling this value can reduce the chance of the requested number of nodes to be allocated in the pool. Values allowed are `Disabled` and `Enabled`. Defaults to `Enabled`.
  /// [licenseType] The type of on-premises license to be used when deploying the operating system. This only applies to images that contain the Windows operating system, and should only be used when you hold valid on-premises licenses for the nodes which will be deployed. If omitted, no on-premises licensing discount is applied. Values are: "Windows_Server" - The on-premises license is for Windows Server. "Windows_Client" - The on-premises license is for Windows Client.
  /// [maxTasksPerNode] Specifies the maximum number of tasks that can run concurrently on a single compute node in the pool. Defaults to `1`. Changing this forces a new resource to be created.
  /// [metadata] A map of custom batch pool metadata.
  /// [mounts] A `mount` block defined as below.
  /// [name] Specifies the name of the Batch pool. Changing this forces a new resource to be created.
  /// [networkConfiguration] A `networkConfiguration` block that describes the network configurations for the Batch pool as defined below. Changing this forces a new resource to be created.
  /// [nodeAgentSkuId] Specifies the SKU of the node agents that will be created in the Batch pool. Changing this forces a new resource to be created.
  /// [nodePlacements] A `nodePlacement` block that describes the placement policy for allocating nodes in the pool as defined below.
  /// [osDiskPlacement] Specifies the ephemeral disk placement for operating system disk for all VMs in the pool. This property can be used by user in the request to choose which location the operating system should be in. e.g., cache disk space for Ephemeral OS disk provisioning. For more information on Ephemeral OS disk size requirements, please refer to Ephemeral OS disk size requirements for Windows VMs at &lt;https://docs.microsoft.com/en-us/azure/virtual-machines/windows/ephemeral-os-disks#size-requirements&gt; and Linux VMs at &lt;https://docs.microsoft.com/en-us/azure/virtual-machines/linux/ephemeral-os-disks#size-requirements&gt;. The only possible value is `CacheDisk`.
  /// [resourceGroupName] The name of the resource group in which to create the Batch pool. Changing this forces a new resource to be created.
  /// [securityProfile] A `securityProfile` block that describes the security settings for the Batch pool as defined below. Changing this forces a new resource to be created.
  /// [startTask] A `startTask` block that describes the start task settings for the Batch pool as defined below.
  /// [stopPendingResizeOperation] Whether to stop if there is a pending resize operation on this pool.
  /// [storageImageReference] A `storageImageReference` block for the virtual machines that will compose the Batch pool as defined below. Changing this forces a new resource to be created.
  /// [targetNodeCommunicationMode] The desired node communication mode for the pool. Possible values are `Classic`, `Default` and `Simplified`.
  /// [taskSchedulingPolicies] A `taskSchedulingPolicy` block that describes how tasks are distributed across compute nodes in a pool as defined below. If not specified, the default is spread as defined below.
  /// [userAccounts] A `userAccounts` block that describes the list of user accounts to be created on each node in the pool as defined below.
  /// [vmSize] Specifies the size of the VM created in the Batch pool. Changing this forces a new resource to be created.
  /// [windows] A `windows` block that describes the Windows configuration in the pool as defined below.
  const PoolState({
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
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoScale: (() { final guardedValue = map['autoScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolAutoScale.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolCertificate>(guardedValue, (value) => PoolCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      containerConfiguration: (() { final guardedValue = map['containerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolContainerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolDataDisk>(guardedValue, (value) => PoolDataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      diskEncryptions: (() { final guardedValue = map['diskEncryptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolDiskEncryption>(guardedValue, (value) => PoolDiskEncryption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolExtension>(guardedValue, (value) => PoolExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fixedScale: (() { final guardedValue = map['fixedScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolFixedScale.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interNodeCommunication: (() { final guardedValue = map['interNodeCommunication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTasksPerNode: (() { final guardedValue = map['maxTasksPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mounts: (() { final guardedValue = map['mounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolMount>(guardedValue, (value) => PoolMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfiguration: (() { final guardedValue = map['networkConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeAgentSkuId: (() { final guardedValue = map['nodeAgentSkuId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodePlacements: (() { final guardedValue = map['nodePlacements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolNodePlacement>(guardedValue, (value) => PoolNodePlacement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      osDiskPlacement: (() { final guardedValue = map['osDiskPlacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProfile: (() { final guardedValue = map['securityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolSecurityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startTask: (() { final guardedValue = map['startTask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolStartTask.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stopPendingResizeOperation: (() { final guardedValue = map['stopPendingResizeOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageImageReference: (() { final guardedValue = map['storageImageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolStorageImageReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetNodeCommunicationMode: (() { final guardedValue = map['targetNodeCommunicationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskSchedulingPolicies: (() { final guardedValue = map['taskSchedulingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolTaskSchedulingPolicy>(guardedValue, (value) => PoolTaskSchedulingPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      userAccounts: (() { final guardedValue = map['userAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolUserAccount>(guardedValue, (value) => PoolUserAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      windows: (() { final guardedValue = map['windows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PoolWindow>(guardedValue, (value) => PoolWindow.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
