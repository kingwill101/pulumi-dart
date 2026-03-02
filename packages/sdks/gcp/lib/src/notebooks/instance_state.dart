// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_accelerator_config.dart';
import 'instance_container_image.dart';
import 'instance_reservation_affinity.dart';
import 'instance_shielded_instance_config.dart';
import 'instance_vm_image.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The hardware accelerator used on this instance. If you use accelerators,
  /// make sure that your configuration has enough vCPUs and memory to support the
  /// machineType you have selected.
  /// Structure is documented below.
  final pulumi.Input<InstanceAcceleratorConfig>? acceleratorConfig;
  /// The size of the boot disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
  /// If not specified, this defaults to 100.
  final pulumi.Input<int>? bootDiskSizeGb;
  /// Possible disk types for notebook instances.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  final pulumi.Input<String>? bootDiskType;
  /// Use a container image to start the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceContainerImage>? containerImage;
  /// Instance creation time
  final pulumi.Input<String>? createTime;
  /// Specify a custom Cloud Storage path where the GPU driver is stored.
  /// If not specified, we'll automatically choose from official GPU drivers.
  final pulumi.Input<String>? customGpuDriverPath;
  /// The size of the data disk in GB attached to this instance,
  /// up to a maximum of 64000 GB (64 TB).
  /// You can choose the size of the data disk based on how big your notebooks and data are.
  /// If not specified, this defaults to 100.
  final pulumi.Input<int>? dataDiskSizeGb;
  /// Possible disk types for notebook instances.
  /// Possible values are: `DISK_TYPE_UNSPECIFIED`, `PD_STANDARD`, `PD_SSD`, `PD_BALANCED`, `PD_EXTREME`.
  final pulumi.Input<String>? dataDiskType;
  /// Desired state of the Notebook Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  final pulumi.Input<String>? desiredState;
  /// Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// Possible values are: `DISK_ENCRYPTION_UNSPECIFIED`, `GMEK`, `CMEK`.
  final pulumi.Input<String>? diskEncryption;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Whether the end user authorizes Google Cloud to install GPU driver
  /// on this instance. If this field is empty or set to false, the GPU driver
  /// won't be installed. Only applicable to instances with GPUs.
  final pulumi.Input<bool>? installGpuDriver;
  /// The list of owners of this instance after creation.
  /// Format: alias@example.com.
  /// Currently supports one owner only.
  /// If not specified, all of the service account users of
  /// your VM instance's service account can use the instance.
  final pulumi.Input<List<String>>? instanceOwners;
  /// The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
  /// Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}
  final pulumi.Input<String>? kmsKey;
  /// Labels to apply to this instance. These can be later modified by the setLabels method.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// A reference to the zone where the machine resides.
  final pulumi.Input<String>? location;
  /// A reference to a machine type which defines VM kind.
  final pulumi.Input<String>? machineType;
  /// Custom metadata to apply to this instance.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name specified for the Notebook instance.
  final pulumi.Input<String>? name;
  /// The name of the VPC that this instance is in.
  /// Format: projects/{project_id}/global/networks/{network_id}
  final pulumi.Input<String>? network;
  /// The type of vNIC driver.
  /// Possible values are: `UNSPECIFIED_NIC_TYPE`, `VIRTIO_NET`, `GVNIC`.
  final pulumi.Input<String>? nicType;
  /// The notebook instance will not register with the proxy..
  final pulumi.Input<bool>? noProxyAccess;
  /// No public IP will be assigned to this instance.
  final pulumi.Input<bool>? noPublicIp;
  /// If true, the data disk will not be auto deleted when deleting the instance.
  final pulumi.Input<bool>? noRemoveDataDisk;
  /// Path to a Bash script that automatically runs after a
  /// notebook instance fully boots up. The path must be a URL
  /// or Cloud Storage path (gs://path-to-file/file-name).
  final pulumi.Input<String>? postStartupScript;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The proxy endpoint that is used to access the Jupyter notebook.
  /// Only returned when the resource is in a `PROVISIONED` state. If
  /// needed you can utilize `pulumi up -refresh-only` to await
  /// the population of this value.
  final pulumi.Input<String>? proxyUri;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Reservation Affinity for consuming Zonal reservation.
  /// Structure is documented below.
  final pulumi.Input<InstanceReservationAffinity>? reservationAffinity;
  /// The service account on this instance, giving access to other
  /// Google Cloud services. You can use any service account within
  /// the same project, but you must have the service account user
  /// permission to use the instance. If not specified,
  /// the Compute Engine default service account is used.
  final pulumi.Input<String>? serviceAccount;
  /// Optional. The URIs of service account scopes to be included in Compute Engine instances.
  /// If not specified, the following scopes are defined:
  /// - https://www.googleapis.com/auth/cloud-platform
  /// - https://www.googleapis.com/auth/userinfo.email
  final pulumi.Input<List<String>>? serviceAccountScopes;
  /// A set of Shielded Instance options. Check [Images using supported Shielded VM features]
  /// Not all combinations are valid
  /// Structure is documented below.
  final pulumi.Input<InstanceShieldedInstanceConfig>? shieldedInstanceConfig;
  /// The state of this instance.
  final pulumi.Input<String>? state;
  /// The name of the subnet that this instance is in.
  /// Format: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}
  final pulumi.Input<String>? subnet;
  /// The Compute Engine tags to add to instance.
  final pulumi.Input<List<String>>? tags;
  /// Instance update time.
  final pulumi.Input<String>? updateTime;
  /// Use a Compute Engine VM image to start the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceVmImage>? vmImage;

  /// Creates a new [InstanceState].
  /// [acceleratorConfig] The hardware accelerator used on this instance. If you use accelerators,
  /// [bootDiskSizeGb] The size of the boot disk in GB attached to this instance,
  /// [bootDiskType] Possible disk types for notebook instances.
  /// [containerImage] Use a container image to start the notebook instance.
  /// [createTime] Instance creation time
  /// [customGpuDriverPath] Specify a custom Cloud Storage path where the GPU driver is stored.
  /// [dataDiskSizeGb] The size of the data disk in GB attached to this instance,
  /// [dataDiskType] Possible disk types for notebook instances.
  /// [desiredState] Desired state of the Notebook Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  /// [diskEncryption] Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
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
  /// [proxyUri] The proxy endpoint that is used to access the Jupyter notebook.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reservationAffinity] Reservation Affinity for consuming Zonal reservation.
  /// [serviceAccount] The service account on this instance, giving access to other
  /// [serviceAccountScopes] Optional. The URIs of service account scopes to be included in Compute Engine instances.
  /// [shieldedInstanceConfig] A set of Shielded Instance options. Check [Images using supported Shielded VM features]
  /// [state] The state of this instance.
  /// [subnet] The name of the subnet that this instance is in.
  /// [tags] The Compute Engine tags to add to instance.
  /// [updateTime] Instance update time.
  /// [vmImage] Use a Compute Engine VM image to start the notebook instance.
  InstanceState({
    this.acceleratorConfig,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.containerImage,
    this.createTime,
    this.customGpuDriverPath,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.desiredState,
    this.diskEncryption,
    this.effectiveLabels,
    this.installGpuDriver,
    this.instanceOwners,
    this.kmsKey,
    this.labels,
    this.location,
    this.machineType,
    this.metadata,
    this.name,
    this.network,
    this.nicType,
    this.noProxyAccess,
    this.noPublicIp,
    this.noRemoveDataDisk,
    this.postStartupScript,
    this.project,
    this.proxyUri,
    this.pulumiLabels,
    this.reservationAffinity,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.state,
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
      'desiredState': ?desiredState,
      'diskEncryption': ?diskEncryption,
      'effectiveLabels': ?effectiveLabels,
      'installGpuDriver': ?installGpuDriver,
      'instanceOwners': ?instanceOwners,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'machineType': ?machineType,
      'metadata': ?metadata,
      'name': ?name,
      'network': ?network,
      'nicType': ?nicType,
      'noProxyAccess': ?noProxyAccess,
      'noPublicIp': ?noPublicIp,
      'noRemoveDataDisk': ?noRemoveDataDisk,
      'postStartupScript': ?postStartupScript,
      'project': ?project,
      'proxyUri': ?proxyUri,
      'pulumiLabels': ?pulumiLabels,
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<InstanceReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'serviceAccountScopes': ?serviceAccountScopes,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'state': ?state,
      'subnet': ?subnet,
      'tags': ?tags,
      'updateTime': ?updateTime,
      'vmImage': ?pulumi.Input.mapOptionalInputValue<InstanceVmImage, Map<String, dynamic>>(vmImage, (value) => value.toMap()),
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      acceleratorConfig: map['acceleratorConfig'] == null ? null : (InstanceAcceleratorConfig.fromMap((map['acceleratorConfig'] as Map).cast<String, dynamic>())).input(),
      bootDiskSizeGb: map['bootDiskSizeGb'] == null ? null : (map['bootDiskSizeGb'] as int).input(),
      bootDiskType: map['bootDiskType'] == null ? null : (map['bootDiskType'] as String).input(),
      containerImage: map['containerImage'] == null ? null : (InstanceContainerImage.fromMap((map['containerImage'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      customGpuDriverPath: map['customGpuDriverPath'] == null ? null : (map['customGpuDriverPath'] as String).input(),
      dataDiskSizeGb: map['dataDiskSizeGb'] == null ? null : (map['dataDiskSizeGb'] as int).input(),
      dataDiskType: map['dataDiskType'] == null ? null : (map['dataDiskType'] as String).input(),
      desiredState: map['desiredState'] == null ? null : (map['desiredState'] as String).input(),
      diskEncryption: map['diskEncryption'] == null ? null : (map['diskEncryption'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      installGpuDriver: map['installGpuDriver'] == null ? null : (map['installGpuDriver'] as bool).input(),
      instanceOwners: map['instanceOwners'] == null ? null : ((map['instanceOwners'] as List).cast<String>()).input(),
      kmsKey: map['kmsKey'] == null ? null : (map['kmsKey'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      nicType: map['nicType'] == null ? null : (map['nicType'] as String).input(),
      noProxyAccess: map['noProxyAccess'] == null ? null : (map['noProxyAccess'] as bool).input(),
      noPublicIp: map['noPublicIp'] == null ? null : (map['noPublicIp'] as bool).input(),
      noRemoveDataDisk: map['noRemoveDataDisk'] == null ? null : (map['noRemoveDataDisk'] as bool).input(),
      postStartupScript: map['postStartupScript'] == null ? null : (map['postStartupScript'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      proxyUri: map['proxyUri'] == null ? null : (map['proxyUri'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      reservationAffinity: map['reservationAffinity'] == null ? null : (InstanceReservationAffinity.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>())).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
      serviceAccountScopes: map['serviceAccountScopes'] == null ? null : ((map['serviceAccountScopes'] as List).cast<String>()).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (InstanceShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      subnet: map['subnet'] == null ? null : (map['subnet'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
      vmImage: map['vmImage'] == null ? null : (InstanceVmImage.fromMap((map['vmImage'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

