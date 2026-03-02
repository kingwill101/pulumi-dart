// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image.dart';
import 'encryption_config.dart';
import 'local_disk.dart';
import 'runtime_accelerator_config.dart';
import 'runtime_shielded_instance_config.dart';
import 'virtual_machine_config_nic_type.dart';

/// The config settings for virtual machine.
class VirtualMachineConfig {
  /// Optional. The Compute Engine accelerator configuration for this runtime.
  final pulumi.Input<RuntimeAcceleratorConfig>? acceleratorConfig;
  /// Optional. Boot image metadata used for runtime upgradeability.
  final pulumi.Input<Map<String, dynamic>>? bootImage;
  /// Optional. Use a list of container images to use as Kernels in the notebook instance.
  final pulumi.Input<List<ContainerImage>>? containerImages;
  /// Data disk option configuration settings.
  final pulumi.Input<LocalDisk> dataDisk;
  /// Optional. Encryption settings for virtual machine data disk.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;
  /// Optional. If true, runtime will only have internal IP addresses. By default, runtimes are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each vm. This `internal_ip_only` restriction can only be enabled for subnetwork enabled networks, and all dependencies must be configured to be accessible without external IP addresses.
  final pulumi.Input<bool>? internalIpOnly;
  /// Optional. The labels to associate with this runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Compute Engine machine type used for runtimes. Short name is valid. Examples: * `n1-standard-2` * `e2-standard-8`
  final pulumi.Input<String> machineType;
  /// Optional. The Compute Engine metadata entries to add to virtual machine. (see [Project and instance metadata](https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  final pulumi.Input<Map<String, String>>? metadata;
  /// Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork. If neither `network` nor `subnet` is specified, the "default" network of the project is used, if it exists. A full URL or partial URI. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/global/networks/default` * `projects/[project_id]/global/networks/default` Runtimes are managed resources inside Google Infrastructure. Runtimes support the following network configurations: * Google Managed Network (Network & subnet are empty) * Consumer Project VPC (network & subnet are required). Requires configuring Private Service Access. * Shared VPC (network & subnet are required). Requires configuring Private Service Access.
  final pulumi.Input<String>? network;
  /// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final pulumi.Input<VirtualMachineConfigNicType>? nicType;
  /// Optional. Reserved IP Range name is used for VPC Peering. The subnetwork allocation will use the range *name* if it's assigned. Example: managed-notebooks-range-c PEERING_RANGE_NAME_3=managed-notebooks-range-c gcloud compute addresses create $PEERING_RANGE_NAME_3 \ --global \ --prefix-length=24 \ --description="Google Cloud Managed Notebooks Range 24 c" \ --network=$NETWORK \ --addresses=192.168.0.0 \ --purpose=VPC_PEERING Field value will be: `managed-notebooks-range-c`
  final pulumi.Input<String>? reservedIpRange;
  /// Optional. Shielded VM Instance configuration settings.
  final pulumi.Input<RuntimeShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network. A full URL or partial URI are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0` * `projects/[project_id]/regions/us-east1/subnetworks/sub0`
  final pulumi.Input<String>? subnet;
  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [VirtualMachineConfig].
  /// [acceleratorConfig] Optional. The Compute Engine accelerator configuration for this runtime.
  /// [bootImage] Optional. Boot image metadata used for runtime upgradeability.
  /// [containerImages] Optional. Use a list of container images to use as Kernels in the notebook instance.
  /// [dataDisk] Data disk option configuration settings.
  /// [encryptionConfig] Optional. Encryption settings for virtual machine data disk.
  /// [internalIpOnly] Optional. If true, runtime will only have internal IP addresses. By default, runtimes are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each vm. This `internal_ip_only` restriction can only be enabled for subnetwork enabled networks, and all dependencies must be configured to be accessible without external IP addresses.
  /// [labels] Optional. The labels to associate with this runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  /// [machineType] The Compute Engine machine type used for runtimes. Short name is valid. Examples: * `n1-standard-2` * `e2-standard-8`
  /// [metadata] Optional. The Compute Engine metadata entries to add to virtual machine. (see [Project and instance metadata](https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  /// [network] Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork. If neither `network` nor `subnet` is specified, the "default" network of the project is used, if it exists. A full URL or partial URI. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/global/networks/default` * `projects/[project_id]/global/networks/default` Runtimes are managed resources inside Google Infrastructure. Runtimes support the following network configurations: * Google Managed Network (Network & subnet are empty) * Consumer Project VPC (network & subnet are required). Requires configuring Private Service Access. * Shared VPC (network & subnet are required). Requires configuring Private Service Access.
  /// [nicType] Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  /// [reservedIpRange] Optional. Reserved IP Range name is used for VPC Peering. The subnetwork allocation will use the range *name* if it's assigned. Example: managed-notebooks-range-c PEERING_RANGE_NAME_3=managed-notebooks-range-c gcloud compute addresses create $PEERING_RANGE_NAME_3 \ --global \ --prefix-length=24 \ --description="Google Cloud Managed Notebooks Range 24 c" \ --network=$NETWORK \ --addresses=192.168.0.0 \ --purpose=VPC_PEERING Field value will be: `managed-notebooks-range-c`
  /// [shieldedInstanceConfig] Optional. Shielded VM Instance configuration settings.
  /// [subnet] Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network. A full URL or partial URI are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0` * `projects/[project_id]/regions/us-east1/subnetworks/sub0`
  /// [tags] Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  VirtualMachineConfig({
    this.acceleratorConfig,
    this.bootImage,
    this.containerImages,
    required this.dataDisk,
    this.encryptionConfig,
    this.internalIpOnly,
    this.labels,
    required this.machineType,
    this.metadata,
    this.network,
    this.nicType,
    this.reservedIpRange,
    this.shieldedInstanceConfig,
    this.subnet,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeAcceleratorConfig, Map<String, dynamic>>(acceleratorConfig, (value) => value.toMap()),
      'bootImage': ?bootImage,
      'containerImages': ?pulumi.Input.mapOptionalInputValue<List<ContainerImage>, List<Map<String, dynamic>>>(containerImages, (value) => pulumi.Input.encodeList<ContainerImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataDisk': pulumi.Input.mapInputValue<LocalDisk, Map<String, dynamic>>(dataDisk, (value) => value.toMap()),
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'internalIpOnly': ?internalIpOnly,
      'labels': ?labels,
      'machineType': machineType,
      'metadata': ?metadata,
      'network': ?network,
      'nicType': ?pulumi.Input.mapOptionalInputValue<VirtualMachineConfigNicType, String>(nicType, (value) => value.value),
      'reservedIpRange': ?reservedIpRange,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'subnet': ?subnet,
      'tags': ?tags,
    };
  }

  factory VirtualMachineConfig.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfig(
      acceleratorConfig: map['acceleratorConfig'] == null ? null : (RuntimeAcceleratorConfig.fromMap((map['acceleratorConfig']! as Map).cast<String, dynamic>())).input(),
      bootImage: map['bootImage'] == null ? null : ((map['bootImage']! as Map).cast<String, dynamic>()).input(),
      containerImages: map['containerImages'] == null ? null : (pulumi.Input.decodeList<ContainerImage>(map['containerImages']!, (value) => ContainerImage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataDisk: (LocalDisk.fromMap((map['dataDisk'] as Map).cast<String, dynamic>())).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (EncryptionConfig.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())).input(),
      internalIpOnly: map['internalIpOnly'] == null ? null : (map['internalIpOnly']! as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      machineType: (map['machineType'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      nicType: map['nicType'] == null ? null : (VirtualMachineConfigNicType.fromValue(map['nicType']! as String)).input(),
      reservedIpRange: map['reservedIpRange'] == null ? null : (map['reservedIpRange']! as String).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (RuntimeShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig']! as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (map['subnet']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
    );
  }
}

