// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response.dart';
import 'container_image_response.dart';
import 'disk_response.dart';
import 'instance_migration_eligibility_response.dart';
import 'reservation_affinity_response.dart';
import 'shielded_instance_config_response.dart';
import 'upgrade_history_entry_response.dart';
import 'vm_image_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// The hardware accelerator used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  final AcceleratorConfigResponse? acceleratorConfig;
  /// Input only. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not specified, this defaults to 100.
  final String? bootDiskSizeGb;
  /// Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final String? bootDiskType;
  /// Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  final bool? canIpForward;
  /// Use a container image to start the notebook instance.
  final ContainerImageResponse? containerImage;
  /// Instance creation time.
  final String? createTime;
  /// Email address of entity that sent original CreateInstance request.
  final String? creator;
  /// Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  final String? customGpuDriverPath;
  /// Input only. The size of the data disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). You can choose the size of the data disk based on how big your notebooks and data are. If not specified, this defaults to 100.
  final String? dataDiskSizeGb;
  /// Input only. The type of the data disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final String? dataDiskType;
  /// Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  final String? diskEncryption;
  /// Attached disks to notebook instance.
  final List<DiskResponse>? disks;
  /// Whether the end user authorizes Google Cloud to install GPU driver on this instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  final bool? installGpuDriver;
  /// Checks how feasible a migration from UmN to WbI is.
  final InstanceMigrationEligibilityResponse? instanceMigrationEligibility;
  /// Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  final List<String>? instanceOwners;
  /// Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about [using your own encryption keys](/kms/docs/quickstart).
  final String? kmsKey;
  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  final Map<String, String>? labels;
  /// The [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types) of this instance.
  final String? machineType;
  /// Custom metadata to apply to this instance. For example, to specify a Cloud Storage bucket for automatic backup, you can use the `gcs-data-bucket` metadata tag. Format: `"--metadata=gcs-data-bucket=``BUCKET''"`.
  final Map<String, String>? metadata;
  /// Bool indicating whether this notebook has been migrated to a Workbench Instance
  final bool? migrated;
  /// The name of this notebook instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  final String? name;
  /// The name of the VPC that this instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  final String? network;
  /// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final String? nicType;
  /// If true, the notebook instance will not register with the proxy.
  final bool? noProxyAccess;
  /// If true, no external IP will be assigned to this instance.
  final bool? noPublicIp;
  /// Input only. If true, the data disk will not be auto deleted when deleting the instance.
  final bool? noRemoveDataDisk;
  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  final String? postStartupScript;
  /// The proxy endpoint that is used to access the Jupyter notebook.
  final String? proxyUri;
  /// Optional. The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this notebook instance.
  final ReservationAffinityResponse? reservationAffinity;
  /// The service account on this instance, giving access to other Google Cloud services. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final String? serviceAccount;
  /// Optional. The URIs of service account scopes to be included in Compute Engine instances. If not specified, the following [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam) are defined: - https://www.googleapis.com/auth/cloud-platform - https://www.googleapis.com/auth/userinfo.email If not using default scopes, you need at least: https://www.googleapis.com/auth/compute
  final List<String>? serviceAccountScopes;
  /// Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  final ShieldedInstanceConfigResponse? shieldedInstanceConfig;
  /// The state of this instance.
  final String? state;
  /// The name of the subnet that this instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  final String? subnet;
  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final List<String>? tags;
  /// Instance update time.
  final String? updateTime;
  /// The upgrade history of this instance.
  final List<UpgradeHistoryEntryResponse>? upgradeHistory;
  /// Use a Compute Engine VM image to start the notebook instance.
  final VmImageResponse? vmImage;

  /// Creates a new [GetInstanceResult].
  /// [acceleratorConfig] The hardware accelerator used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  /// [bootDiskSizeGb] Input only. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not specified, this defaults to 100.
  /// [bootDiskType] Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  /// [canIpForward] Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  /// [containerImage] Use a container image to start the notebook instance.
  /// [createTime] Instance creation time.
  /// [creator] Email address of entity that sent original CreateInstance request.
  /// [customGpuDriverPath] Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  /// [dataDiskSizeGb] Input only. The size of the data disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). You can choose the size of the data disk based on how big your notebooks and data are. If not specified, this defaults to 100.
  /// [dataDiskType] Input only. The type of the data disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  /// [diskEncryption] Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// [disks] Attached disks to notebook instance.
  /// [installGpuDriver] Whether the end user authorizes Google Cloud to install GPU driver on this instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  /// [instanceMigrationEligibility] Checks how feasible a migration from UmN to WbI is.
  /// [instanceOwners] Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  /// [kmsKey] Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about [using your own encryption keys](/kms/docs/quickstart).
  /// [labels] Labels to apply to this instance. These can be later modified by the setLabels method.
  /// [machineType] The [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types) of this instance.
  /// [metadata] Custom metadata to apply to this instance. For example, to specify a Cloud Storage bucket for automatic backup, you can use the `gcs-data-bucket` metadata tag. Format: `"--metadata=gcs-data-bucket=``BUCKET''"`.
  /// [migrated] Bool indicating whether this notebook has been migrated to a Workbench Instance
  /// [name] The name of this notebook instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// [network] The name of the VPC that this instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  /// [nicType] Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  /// [noProxyAccess] If true, the notebook instance will not register with the proxy.
  /// [noPublicIp] If true, no external IP will be assigned to this instance.
  /// [noRemoveDataDisk] Input only. If true, the data disk will not be auto deleted when deleting the instance.
  /// [postStartupScript] Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  /// [proxyUri] The proxy endpoint that is used to access the Jupyter notebook.
  /// [reservationAffinity] Optional. The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this notebook instance.
  /// [serviceAccount] The service account on this instance, giving access to other Google Cloud services. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  /// [serviceAccountScopes] Optional. The URIs of service account scopes to be included in Compute Engine instances. If not specified, the following [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam) are defined: - https://www.googleapis.com/auth/cloud-platform - https://www.googleapis.com/auth/userinfo.email If not using default scopes, you need at least: https://www.googleapis.com/auth/compute
  /// [shieldedInstanceConfig] Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  /// [state] The state of this instance.
  /// [subnet] The name of the subnet that this instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  /// [tags] Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  /// [updateTime] Instance update time.
  /// [upgradeHistory] The upgrade history of this instance.
  /// [vmImage] Use a Compute Engine VM image to start the notebook instance.
  const GetInstanceResult({
    this.acceleratorConfig,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.canIpForward,
    this.containerImage,
    this.createTime,
    this.creator,
    this.customGpuDriverPath,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.diskEncryption,
    this.disks,
    this.installGpuDriver,
    this.instanceMigrationEligibility,
    this.instanceOwners,
    this.kmsKey,
    this.labels,
    this.machineType,
    this.metadata,
    this.migrated,
    this.name,
    this.network,
    this.nicType,
    this.noProxyAccess,
    this.noPublicIp,
    this.noRemoveDataDisk,
    this.postStartupScript,
    this.proxyUri,
    this.reservationAffinity,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.state,
    this.subnet,
    this.tags,
    this.updateTime,
    this.upgradeHistory,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': ?acceleratorConfig?.toMap(),
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType': ?bootDiskType,
      'canIpForward': ?canIpForward,
      'containerImage': ?containerImage?.toMap(),
      'createTime': ?createTime,
      'creator': ?creator,
      'customGpuDriverPath': ?customGpuDriverPath,
      'dataDiskSizeGb': ?dataDiskSizeGb,
      'dataDiskType': ?dataDiskType,
      'diskEncryption': ?diskEncryption,
      'disks': ?(() { final guardedValue = disks; if (guardedValue == null) return null; return pulumi.Input.encodeList<DiskResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'installGpuDriver': ?installGpuDriver,
      'instanceMigrationEligibility': ?instanceMigrationEligibility?.toMap(),
      'instanceOwners': ?instanceOwners,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'machineType': ?machineType,
      'metadata': ?metadata,
      'migrated': ?migrated,
      'name': ?name,
      'network': ?network,
      'nicType': ?nicType,
      'noProxyAccess': ?noProxyAccess,
      'noPublicIp': ?noPublicIp,
      'noRemoveDataDisk': ?noRemoveDataDisk,
      'postStartupScript': ?postStartupScript,
      'proxyUri': ?proxyUri,
      'reservationAffinity': ?reservationAffinity?.toMap(),
      'serviceAccount': ?serviceAccount,
      'serviceAccountScopes': ?serviceAccountScopes,
      'shieldedInstanceConfig': ?shieldedInstanceConfig?.toMap(),
      'state': ?state,
      'subnet': ?subnet,
      'tags': ?tags,
      'updateTime': ?updateTime,
      'upgradeHistory': ?(() { final guardedValue = upgradeHistory; if (guardedValue == null) return null; return pulumi.Input.encodeList<UpgradeHistoryEntryResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vmImage': ?vmImage?.toMap(),
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      acceleratorConfig: (() { final guardedValue = map['acceleratorConfig']; if (guardedValue == null) return null; return AcceleratorConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      bootDiskSizeGb: (() { final guardedValue = map['bootDiskSizeGb']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootDiskType: (() { final guardedValue = map['bootDiskType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      canIpForward: (() { final guardedValue = map['canIpForward']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      containerImage: (() { final guardedValue = map['containerImage']; if (guardedValue == null) return null; return ContainerImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customGpuDriverPath: (() { final guardedValue = map['customGpuDriverPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataDiskSizeGb: (() { final guardedValue = map['dataDiskSizeGb']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataDiskType: (() { final guardedValue = map['dataDiskType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskEncryption: (() { final guardedValue = map['diskEncryption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DiskResponse>(guardedValue, (value) => DiskResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      installGpuDriver: (() { final guardedValue = map['installGpuDriver']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      instanceMigrationEligibility: (() { final guardedValue = map['instanceMigrationEligibility']; if (guardedValue == null) return null; return InstanceMigrationEligibilityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instanceOwners: (() { final guardedValue = map['instanceOwners']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      migrated: (() { final guardedValue = map['migrated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      noProxyAccess: (() { final guardedValue = map['noProxyAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      noPublicIp: (() { final guardedValue = map['noPublicIp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      noRemoveDataDisk: (() { final guardedValue = map['noRemoveDataDisk']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      postStartupScript: (() { final guardedValue = map['postStartupScript']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyUri: (() { final guardedValue = map['proxyUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return ReservationAffinityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccountScopes: (() { final guardedValue = map['serviceAccountScopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return ShieldedInstanceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgradeHistory: (() { final guardedValue = map['upgradeHistory']; if (guardedValue == null) return null; return pulumi.Input.decodeList<UpgradeHistoryEntryResponse>(guardedValue, (value) => UpgradeHistoryEntryResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      vmImage: (() { final guardedValue = map['vmImage']; if (guardedValue == null) return null; return VmImageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
