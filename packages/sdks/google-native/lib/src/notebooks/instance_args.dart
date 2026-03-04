// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config.dart';
import 'container_image.dart';
import 'instance_boot_disk_type.dart';
import 'instance_data_disk_type.dart';
import 'instance_disk_encryption.dart';
import 'instance_nic_type.dart';
import 'reservation_affinity.dart';
import 'shielded_instance_config.dart';
import 'upgrade_history_entry.dart';
import 'vm_image.dart';

/// {@template pulumi_notebooks_v1_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v1_instance_args_doc}
class InstanceArgs {
  /// The hardware accelerator used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  final pulumi.Input<AcceleratorConfig>? acceleratorConfig;

  /// Input only. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not specified, this defaults to 100.
  final pulumi.Input<String>? bootDiskSizeGb;

  /// Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final pulumi.Input<InstanceBootDiskType>? bootDiskType;

  /// Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  final pulumi.Input<bool>? canIpForward;

  /// Use a container image to start the notebook instance.
  final pulumi.Input<ContainerImage>? containerImage;

  /// Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  final pulumi.Input<String>? customGpuDriverPath;

  /// Input only. The size of the data disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). You can choose the size of the data disk based on how big your notebooks and data are. If not specified, this defaults to 100.
  final pulumi.Input<String>? dataDiskSizeGb;

  /// Input only. The type of the data disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  final pulumi.Input<InstanceDataDiskType>? dataDiskType;

  /// Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  final pulumi.Input<InstanceDiskEncryption>? diskEncryption;

  /// Whether the end user authorizes Google Cloud to install GPU driver on this instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  final pulumi.Input<bool>? installGpuDriver;

  /// Required. User-defined unique ID of this instance.
  final pulumi.Input<String> instanceId;

  /// Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  final pulumi.Input<List<String>>? instanceOwners;

  /// Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about [using your own encryption keys](/kms/docs/quickstart).
  final pulumi.Input<String>? kmsKey;

  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types) of this instance.
  final pulumi.Input<String> machineType;

  /// Custom metadata to apply to this instance. For example, to specify a Cloud Storage bucket for automatic backup, you can use the `gcs-data-bucket` metadata tag. Format: `"--metadata=gcs-data-bucket=``BUCKET''"`.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The name of the VPC that this instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  final pulumi.Input<String>? network;

  /// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final pulumi.Input<InstanceNicType>? nicType;

  /// If true, the notebook instance will not register with the proxy.
  final pulumi.Input<bool>? noProxyAccess;

  /// If true, no external IP will be assigned to this instance.
  final pulumi.Input<bool>? noPublicIp;

  /// Input only. If true, the data disk will not be auto deleted when deleting the instance.
  final pulumi.Input<bool>? noRemoveDataDisk;

  /// Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  final pulumi.Input<String>? postStartupScript;
  final pulumi.Input<String>? project;

  /// Optional. The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this notebook instance.
  final pulumi.Input<ReservationAffinity>? reservationAffinity;

  /// The service account on this instance, giving access to other Google Cloud services. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final pulumi.Input<String>? serviceAccount;

  /// Optional. The URIs of service account scopes to be included in Compute Engine instances. If not specified, the following [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam) are defined: - https://www.googleapis.com/auth/cloud-platform - https://www.googleapis.com/auth/userinfo.email If not using default scopes, you need at least: https://www.googleapis.com/auth/compute
  final pulumi.Input<List<String>>? serviceAccountScopes;

  /// Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  final pulumi.Input<ShieldedInstanceConfig>? shieldedInstanceConfig;

  /// The name of the subnet that this instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  final pulumi.Input<String>? subnet;

  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final pulumi.Input<List<String>>? tags;

  /// The upgrade history of this instance.
  final pulumi.Input<List<UpgradeHistoryEntry>>? upgradeHistory;

  /// Use a Compute Engine VM image to start the notebook instance.
  final pulumi.Input<VmImage>? vmImage;

  /// Creates a new [InstanceArgs].
  /// [acceleratorConfig] The hardware accelerator used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  /// [bootDiskSizeGb] Input only. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not specified, this defaults to 100.
  /// [bootDiskType] Input only. The type of the boot disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  /// [canIpForward] Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  /// [containerImage] Use a container image to start the notebook instance.
  /// [customGpuDriverPath] Specify a custom Cloud Storage path where the GPU driver is stored. If not specified, we'll automatically choose from official GPU drivers.
  /// [dataDiskSizeGb] Input only. The size of the data disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). You can choose the size of the data disk based on how big your notebooks and data are. If not specified, this defaults to 100.
  /// [dataDiskType] Input only. The type of the data disk attached to this instance, defaults to standard persistent disk (`PD_STANDARD`).
  /// [diskEncryption] Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// [installGpuDriver] Whether the end user authorizes Google Cloud to install GPU driver on this instance. If this field is empty or set to false, the GPU driver won't be installed. Only applicable to instances with GPUs.
  /// [instanceId] Required. User-defined unique ID of this instance.
  /// [instanceOwners] Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  /// [kmsKey] Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about [using your own encryption keys](/kms/docs/quickstart).
  /// [labels] Labels to apply to this instance. These can be later modified by the setLabels method.
  /// [location] Optional.
  /// [machineType] The [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types) of this instance.
  /// [metadata] Custom metadata to apply to this instance. For example, to specify a Cloud Storage bucket for automatic backup, you can use the `gcs-data-bucket` metadata tag. Format: `"--metadata=gcs-data-bucket=``BUCKET''"`.
  /// [network] The name of the VPC that this instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  /// [nicType] Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  /// [noProxyAccess] If true, the notebook instance will not register with the proxy.
  /// [noPublicIp] If true, no external IP will be assigned to this instance.
  /// [noRemoveDataDisk] Input only. If true, the data disk will not be auto deleted when deleting the instance.
  /// [postStartupScript] Path to a Bash script that automatically runs after a notebook instance fully boots up. The path must be a URL or Cloud Storage path (`gs://path-to-file/file-name`).
  /// [project] Optional.
  /// [reservationAffinity] Optional. The optional reservation affinity. Setting this field will apply the specified [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) to this notebook instance.
  /// [serviceAccount] The service account on this instance, giving access to other Google Cloud services. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  /// [serviceAccountScopes] Optional. The URIs of service account scopes to be included in Compute Engine instances. If not specified, the following [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam) are defined: - https://www.googleapis.com/auth/cloud-platform - https://www.googleapis.com/auth/userinfo.email If not using default scopes, you need at least: https://www.googleapis.com/auth/compute
  /// [shieldedInstanceConfig] Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  /// [subnet] The name of the subnet that this instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  /// [tags] Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  /// [upgradeHistory] The upgrade history of this instance.
  /// [vmImage] Use a Compute Engine VM image to start the notebook instance.
  InstanceArgs({
    this.acceleratorConfig,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.canIpForward,
    this.containerImage,
    this.customGpuDriverPath,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.diskEncryption,
    this.installGpuDriver,
    required this.instanceId,
    this.instanceOwners,
    this.kmsKey,
    this.labels,
    this.location,
    required this.machineType,
    this.metadata,
    this.network,
    this.nicType,
    this.noProxyAccess,
    this.noPublicIp,
    this.noRemoveDataDisk,
    this.postStartupScript,
    this.project,
    this.reservationAffinity,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.subnet,
    this.tags,
    this.upgradeHistory,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AcceleratorConfig,
            Map<String, dynamic>
          >(acceleratorConfig, (value) => value.toMap()),
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType':
          ?pulumi.Input.mapOptionalInputValue<InstanceBootDiskType, String>(
            bootDiskType,
            (value) => value.wireValue,
          ),
      'canIpForward': ?canIpForward,
      'containerImage':
          ?pulumi.Input.mapOptionalInputValue<
            ContainerImage,
            Map<String, dynamic>
          >(containerImage, (value) => value.toMap()),
      'customGpuDriverPath': ?customGpuDriverPath,
      'dataDiskSizeGb': ?dataDiskSizeGb,
      'dataDiskType':
          ?pulumi.Input.mapOptionalInputValue<InstanceDataDiskType, String>(
            dataDiskType,
            (value) => value.wireValue,
          ),
      'diskEncryption':
          ?pulumi.Input.mapOptionalInputValue<InstanceDiskEncryption, String>(
            diskEncryption,
            (value) => value.wireValue,
          ),
      'installGpuDriver': ?installGpuDriver,
      'instanceId': instanceId,
      'instanceOwners': ?instanceOwners,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'machineType': machineType,
      'metadata': ?metadata,
      'network': ?network,
      'nicType': ?pulumi.Input.mapOptionalInputValue<InstanceNicType, String>(
        nicType,
        (value) => value.wireValue,
      ),
      'noProxyAccess': ?noProxyAccess,
      'noPublicIp': ?noPublicIp,
      'noRemoveDataDisk': ?noRemoveDataDisk,
      'postStartupScript': ?postStartupScript,
      'project': ?project,
      'reservationAffinity':
          ?pulumi.Input.mapOptionalInputValue<
            ReservationAffinity,
            Map<String, dynamic>
          >(reservationAffinity, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'serviceAccountScopes': ?serviceAccountScopes,
      'shieldedInstanceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ShieldedInstanceConfig,
            Map<String, dynamic>
          >(shieldedInstanceConfig, (value) => value.toMap()),
      'subnet': ?subnet,
      'tags': ?tags,
      'upgradeHistory':
          ?pulumi.Input.mapOptionalInputValue<
            List<UpgradeHistoryEntry>,
            List<Map<String, dynamic>>
          >(
            upgradeHistory,
            (value) =>
                pulumi.Input.encodeList<
                  UpgradeHistoryEntry,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'vmImage':
          ?pulumi.Input.mapOptionalInputValue<VmImage, Map<String, dynamic>>(
            vmImage,
            (value) => value.toMap(),
          ),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      acceleratorConfig: (() {
        final guardedValue = map['acceleratorConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AcceleratorConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      bootDiskSizeGb: (() {
        final guardedValue = map['bootDiskSizeGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bootDiskType: (() {
        final guardedValue = map['bootDiskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceBootDiskType.fromValue(guardedValue as String),
        );
      })(),
      canIpForward: (() {
        final guardedValue = map['canIpForward'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      containerImage: (() {
        final guardedValue = map['containerImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ContainerImage.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      customGpuDriverPath: (() {
        final guardedValue = map['customGpuDriverPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataDiskSizeGb: (() {
        final guardedValue = map['dataDiskSizeGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataDiskType: (() {
        final guardedValue = map['dataDiskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceDataDiskType.fromValue(guardedValue as String),
        );
      })(),
      diskEncryption: (() {
        final guardedValue = map['diskEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceDiskEncryption.fromValue(guardedValue as String),
        );
      })(),
      installGpuDriver: (() {
        final guardedValue = map['installGpuDriver'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceOwners: (() {
        final guardedValue = map['instanceOwners'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      kmsKey: (() {
        final guardedValue = map['kmsKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nicType: (() {
        final guardedValue = map['nicType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceNicType.fromValue(guardedValue as String),
        );
      })(),
      noProxyAccess: (() {
        final guardedValue = map['noProxyAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      noPublicIp: (() {
        final guardedValue = map['noPublicIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      noRemoveDataDisk: (() {
        final guardedValue = map['noRemoveDataDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      postStartupScript: (() {
        final guardedValue = map['postStartupScript'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reservationAffinity: (() {
        final guardedValue = map['reservationAffinity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReservationAffinity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccountScopes: (() {
        final guardedValue = map['serviceAccountScopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      shieldedInstanceConfig: (() {
        final guardedValue = map['shieldedInstanceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ShieldedInstanceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subnet: (() {
        final guardedValue = map['subnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      upgradeHistory: (() {
        final guardedValue = map['upgradeHistory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UpgradeHistoryEntry>(
            guardedValue,
            (value) => UpgradeHistoryEntry.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      vmImage: (() {
        final guardedValue = map['vmImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VmImage.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
