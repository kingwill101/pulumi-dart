// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_accelerator_config.dart';
import 'instance_container_image.dart';
import 'instance_reservation_affinity.dart';
import 'instance_shielded_instance_config.dart';
import 'instance_vm_image.dart';

/// {@template pulumi_notebooks_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_notebooks_instance_instance_args_doc}
class InstanceArgs {
  /// The hardware accelerator used on this instance. If you use accelerators,
  /// make sure that your configuration has enough vCPUs and memory to support the
  /// machineType you have selected.
  /// Structure is documented below.
  final pulumi.Input<InstanceAcceleratorConfig?>? acceleratorConfig;
  /// The size of the boot disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
  /// If not specified, this defaults to 100.
  final pulumi.Input<int?>? bootDiskSizeGb;
  /// Possible disk types for notebook instances.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  final pulumi.Input<String?>? bootDiskType;
  /// Use a container image to start the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceContainerImage?>? containerImage;
  /// Instance creation time
  final pulumi.Input<String?>? createTime;
  /// Specify a custom Cloud Storage path where the GPU driver is stored.
  /// If not specified, we'll automatically choose from official GPU drivers.
  final pulumi.Input<String?>? customGpuDriverPath;
  /// The size of the data disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB).
  /// You can choose the size of the data disk based on how big your notebooks and data are.
  /// If not specified, this defaults to 100.
  final pulumi.Input<int?>? dataDiskSizeGb;
  /// Possible disk types for notebook instances.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  final pulumi.Input<String?>? dataDiskType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Desired state of the Notebook Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  final pulumi.Input<String?>? desiredState;
  /// Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// Possible values are: `DISK_ENCRYPTION_UNSPECIFIED`, `GMEK`, `CMEK`.
  final pulumi.Input<String?>? diskEncryption;
  /// Whether the end user authorizes Google Cloud to install GPU driver
  /// on this instance. If this field is empty or set to false, the GPU driver
  /// won't be installed. Only applicable to instances with GPUs.
  final pulumi.Input<bool?>? installGpuDriver;
  /// The list of owners of this instance after creation.
  /// Format: alias@example.com.
  /// Currently supports one owner only.
  /// If not specified, all of the service account users of
  /// your VM instance's service account can use the instance.
  final pulumi.Input<List<String>?>? instanceOwners;
  /// The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
  /// Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}
  final pulumi.Input<String?>? kmsKey;
  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// A reference to the zone where the machine resides.
  final pulumi.Input<String> location;
  /// A reference to a machine type which defines VM kind.
  final pulumi.Input<String> machineType;
  /// Custom metadata to apply to this instance.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// The name specified for the Notebook instance.
  final pulumi.Input<String?>? name;
  /// The name of the VPC that this instance is in.
  /// Format: projects/{project_id}/global/networks/{network_id}
  final pulumi.Input<String?>? network;
  /// The type of vNIC driver.
  /// Possible values are: `UNSPECIFIED_NIC_TYPE`, `VIRTIO_NET`, `GVNIC`.
  final pulumi.Input<String?>? nicType;
  /// The notebook instance will not register with the proxy..
  final pulumi.Input<bool?>? noProxyAccess;
  /// No public IP will be assigned to this instance.
  final pulumi.Input<bool?>? noPublicIp;
  /// If true, the data disk will not be auto deleted when deleting the instance.
  final pulumi.Input<bool?>? noRemoveDataDisk;
  /// Path to a Bash script that automatically runs after a
  /// notebook instance fully boots up. The path must be a URL
  /// or Cloud Storage path (gs://path-to-file/file-name).
  final pulumi.Input<String?>? postStartupScript;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Reservation Affinity for consuming Zonal reservation.
  /// Structure is documented below.
  final pulumi.Input<InstanceReservationAffinity?>? reservationAffinity;
  /// The service account on this instance, giving access to other
  /// Google Cloud services. You can use any service account within
  /// the same project, but you must have the service account user
  /// permission to use the instance. If not specified,
  /// the Compute Engine default service account is used.
  final pulumi.Input<String?>? serviceAccount;
  /// Optional. The URIs of service account scopes to be included in Compute Engine instances.
  /// If not specified, the following scopes are defined:
  /// - https://www.googleapis.com/auth/cloud-platform
  /// - https://www.googleapis.com/auth/userinfo.email
  final pulumi.Input<List<String>?>? serviceAccountScopes;
  /// A set of Shielded Instance options. Check [Images using supported Shielded VM features]
  /// Not all combinations are valid
  /// Structure is documented below.
  final pulumi.Input<InstanceShieldedInstanceConfig?>? shieldedInstanceConfig;
  /// The name of the subnet that this instance is in.
  /// Format: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}
  final pulumi.Input<String?>? subnet;
  /// The Compute Engine tags to add to instance.
  final pulumi.Input<List<String>?>? tags;
  /// Instance update time.
  final pulumi.Input<String?>? updateTime;
  /// Use a Compute Engine VM image to start the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceVmImage?>? vmImage;

  /// Creates a new [InstanceArgs].
  /// [acceleratorConfig] The hardware accelerator used on this instance. If you use accelerators,
  /// [bootDiskSizeGb] The size of the boot disk in GB attached to this instance,
  /// [bootDiskType] Possible disk types for notebook instances.
  /// [containerImage] Use a container image to start the notebook instance.
  /// [createTime] Instance creation time
  /// [customGpuDriverPath] Specify a custom Cloud Storage path where the GPU driver is stored.
  /// [dataDiskSizeGb] The size of the data disk in GB attached to this instance,
  /// [dataDiskType] Possible disk types for notebook instances.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [desiredState] Desired state of the Notebook Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  /// [diskEncryption] Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// [installGpuDriver] Whether the end user authorizes Google Cloud to install GPU driver
  /// [instanceOwners] The list of owners of this instance after creation.
  /// [kmsKey] The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
  /// [labels] Labels to apply to this instance. These can be later modified by the setLabels method.
  /// [location] A reference to the zone where the machine resides.
  /// [machineType] A reference to a machine type which defines VM kind.
  /// [metadata] Custom metadata to apply to this instance.
  /// [name] The name specified for the Notebook instance.
  /// [network] The name of the VPC that this instance is in.
  /// [nicType] The type of vNIC driver.
  /// [noProxyAccess] The notebook instance will not register with the proxy..
  /// [noPublicIp] No public IP will be assigned to this instance.
  /// [noRemoveDataDisk] If true, the data disk will not be auto deleted when deleting the instance.
  /// [postStartupScript] Path to a Bash script that automatically runs after a
  /// [project] The ID of the project in which the resource belongs.
  /// [reservationAffinity] Reservation Affinity for consuming Zonal reservation.
  /// [serviceAccount] The service account on this instance, giving access to other
  /// [serviceAccountScopes] Optional. The URIs of service account scopes to be included in Compute Engine instances.
  /// [shieldedInstanceConfig] A set of Shielded Instance options. Check [Images using supported Shielded VM features]
  /// [subnet] The name of the subnet that this instance is in.
  /// [tags] The Compute Engine tags to add to instance.
  /// [updateTime] Instance update time.
  /// [vmImage] Use a Compute Engine VM image to start the notebook instance.
  const InstanceArgs({
    this.acceleratorConfig,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.containerImage,
    this.createTime,
    this.customGpuDriverPath,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.deletionPolicy,
    this.desiredState,
    this.diskEncryption,
    this.installGpuDriver,
    this.instanceOwners,
    this.kmsKey,
    this.labels,
    required this.location,
    required this.machineType,
    this.metadata,
    this.name,
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
    this.updateTime,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': ?pulumi.Input.mapOptionalInputValue<InstanceAcceleratorConfig, Map<String, dynamic>>(acceleratorConfig, (value) => value.toMap()),
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType': ?bootDiskType,
      'containerImage': ?pulumi.Input.mapOptionalInputValue<InstanceContainerImage, Map<String, dynamic>>(containerImage, (value) => value.toMap()),
      'createTime': ?createTime,
      'customGpuDriverPath': ?customGpuDriverPath,
      'dataDiskSizeGb': ?dataDiskSizeGb,
      'dataDiskType': ?dataDiskType,
      'deletionPolicy': ?deletionPolicy,
      'desiredState': ?desiredState,
      'diskEncryption': ?diskEncryption,
      'installGpuDriver': ?installGpuDriver,
      'instanceOwners': ?instanceOwners,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': location,
      'machineType': machineType,
      'metadata': ?metadata,
      'name': ?name,
      'network': ?network,
      'nicType': ?nicType,
      'noProxyAccess': ?noProxyAccess,
      'noPublicIp': ?noPublicIp,
      'noRemoveDataDisk': ?noRemoveDataDisk,
      'postStartupScript': ?postStartupScript,
      'project': ?project,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<InstanceReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'serviceAccountScopes': ?serviceAccountScopes,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'subnet': ?subnet,
      'tags': ?tags,
      'updateTime': ?updateTime,
      'vmImage': ?pulumi.Input.mapOptionalInputValue<InstanceVmImage, Map<String, dynamic>>(vmImage, (value) => value.toMap()),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      acceleratorConfig: (() { final guardedValue = map['acceleratorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAcceleratorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootDiskSizeGb: (() { final guardedValue = map['bootDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      bootDiskType: (() { final guardedValue = map['bootDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerImage: (() { final guardedValue = map['containerImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceContainerImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customGpuDriverPath: (() { final guardedValue = map['customGpuDriverPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDiskSizeGb: (() { final guardedValue = map['dataDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      dataDiskType: (() { final guardedValue = map['dataDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryption: (() { final guardedValue = map['diskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      installGpuDriver: (() { final guardedValue = map['installGpuDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceOwners: (() { final guardedValue = map['instanceOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noProxyAccess: (() { final guardedValue = map['noProxyAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      noPublicIp: (() { final guardedValue = map['noPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      noRemoveDataDisk: (() { final guardedValue = map['noRemoveDataDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      postStartupScript: (() { final guardedValue = map['postStartupScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountScopes: (() { final guardedValue = map['serviceAccountScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmImage: (() { final guardedValue = map['vmImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceVmImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
