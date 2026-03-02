// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_image_response.dart';
import 'encryption_config_response.dart';
import 'local_disk_response.dart';
import 'runtime_accelerator_config_response.dart';
import 'runtime_shielded_instance_config_response.dart';

/// The config settings for virtual machine.
class VirtualMachineConfigResponse {
  /// Optional. The Compute Engine accelerator configuration for this runtime.
  final pulumi.Input<RuntimeAcceleratorConfigResponse> acceleratorConfig;
  /// Optional. Boot image metadata used for runtime upgradeability.
  final pulumi.Input<Map<String, dynamic>> bootImage;
  /// Optional. Use a list of container images to use as Kernels in the notebook instance.
  final pulumi.Input<List<ContainerImageResponse>> containerImages;
  /// Data disk option configuration settings.
  final pulumi.Input<LocalDiskResponse> dataDisk;
  /// Optional. Encryption settings for virtual machine data disk.
  final pulumi.Input<EncryptionConfigResponse> encryptionConfig;
  /// The Compute Engine guest attributes. (see [Project and instance guest attributes](https://cloud.google.com/compute/docs/storing-retrieving-metadata#guest_attributes)).
  final pulumi.Input<Map<String, String>> guestAttributes;
  /// Optional. If true, runtime will only have internal IP addresses. By default, runtimes are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each vm. This `internal_ip_only` restriction can only be enabled for subnetwork enabled networks, and all dependencies must be configured to be accessible without external IP addresses.
  final pulumi.Input<bool> internalIpOnly;
  /// Optional. The labels to associate with this runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final pulumi.Input<Map<String, String>> labels;
  /// The Compute Engine machine type used for runtimes. Short name is valid. Examples: * `n1-standard-2` * `e2-standard-8`
  final pulumi.Input<String> machineType;
  /// Optional. The Compute Engine metadata entries to add to virtual machine. (see [Project and instance metadata](https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  final pulumi.Input<Map<String, String>> metadata;
  /// Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork. If neither `network` nor `subnet` is specified, the "default" network of the project is used, if it exists. A full URL or partial URI. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/global/networks/default` * `projects/[project_id]/global/networks/default` Runtimes are managed resources inside Google Infrastructure. Runtimes support the following network configurations: * Google Managed Network (Network & subnet are empty) * Consumer Project VPC (network & subnet are required). Requires configuring Private Service Access. * Shared VPC (network & subnet are required). Requires configuring Private Service Access.
  final pulumi.Input<String> network;
  /// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  final pulumi.Input<String> nicType;
  /// Optional. Reserved IP Range name is used for VPC Peering. The subnetwork allocation will use the range *name* if it's assigned. Example: managed-notebooks-range-c PEERING_RANGE_NAME_3=managed-notebooks-range-c gcloud compute addresses create $PEERING_RANGE_NAME_3 \ --global \ --prefix-length=24 \ --description="Google Cloud Managed Notebooks Range 24 c" \ --network=$NETWORK \ --addresses=192.168.0.0 \ --purpose=VPC_PEERING Field value will be: `managed-notebooks-range-c`
  final pulumi.Input<String> reservedIpRange;
  /// Optional. Shielded VM Instance configuration settings.
  final pulumi.Input<RuntimeShieldedInstanceConfigResponse> shieldedInstanceConfig;
  /// Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network. A full URL or partial URI are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0` * `projects/[project_id]/regions/us-east1/subnetworks/sub0`
  final pulumi.Input<String> subnet;
  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final pulumi.Input<List<String>> tags;
  /// The zone where the virtual machine is located. If using regional request, the notebooks service will pick a location in the corresponding runtime region. On a get request, zone will always be present. Example: * `us-central1-b`
  final pulumi.Input<String> zone;

  /// Creates a new [VirtualMachineConfigResponse].
  /// [acceleratorConfig] Optional. The Compute Engine accelerator configuration for this runtime.
  /// [bootImage] Optional. Boot image metadata used for runtime upgradeability.
  /// [containerImages] Optional. Use a list of container images to use as Kernels in the notebook instance.
  /// [dataDisk] Data disk option configuration settings.
  /// [encryptionConfig] Optional. Encryption settings for virtual machine data disk.
  /// [guestAttributes] The Compute Engine guest attributes. (see [Project and instance guest attributes](https://cloud.google.com/compute/docs/storing-retrieving-metadata#guest_attributes)).
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
  /// [zone] The zone where the virtual machine is located. If using regional request, the notebooks service will pick a location in the corresponding runtime region. On a get request, zone will always be present. Example: * `us-central1-b`
  VirtualMachineConfigResponse({
    required this.acceleratorConfig,
    required this.bootImage,
    required this.containerImages,
    required this.dataDisk,
    required this.encryptionConfig,
    required this.guestAttributes,
    required this.internalIpOnly,
    required this.labels,
    required this.machineType,
    required this.metadata,
    required this.network,
    required this.nicType,
    required this.reservedIpRange,
    required this.shieldedInstanceConfig,
    required this.subnet,
    required this.tags,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': pulumi.Input.mapInputValue<RuntimeAcceleratorConfigResponse, Map<String, dynamic>>(acceleratorConfig, (value) => value.toMap()),
      'bootImage': bootImage,
      'containerImages': pulumi.Input.mapInputValue<List<ContainerImageResponse>, List<Map<String, dynamic>>>(containerImages, (value) => pulumi.Input.encodeList<ContainerImageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataDisk': pulumi.Input.mapInputValue<LocalDiskResponse, Map<String, dynamic>>(dataDisk, (value) => value.toMap()),
      'encryptionConfig': pulumi.Input.mapInputValue<EncryptionConfigResponse, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'guestAttributes': guestAttributes,
      'internalIpOnly': internalIpOnly,
      'labels': labels,
      'machineType': machineType,
      'metadata': metadata,
      'network': network,
      'nicType': nicType,
      'reservedIpRange': reservedIpRange,
      'shieldedInstanceConfig': pulumi.Input.mapInputValue<RuntimeShieldedInstanceConfigResponse, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'subnet': subnet,
      'tags': tags,
      'zone': zone,
    };
  }

  factory VirtualMachineConfigResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineConfigResponse(
      acceleratorConfig: (RuntimeAcceleratorConfigResponse.fromMap((map['acceleratorConfig'] as Map).cast<String, dynamic>())).input(),
      bootImage: ((map['bootImage'] as Map).cast<String, dynamic>()).input(),
      containerImages: (pulumi.Input.decodeList<ContainerImageResponse>(map['containerImages'], (value) => ContainerImageResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataDisk: (LocalDiskResponse.fromMap((map['dataDisk'] as Map).cast<String, dynamic>())).input(),
      encryptionConfig: (EncryptionConfigResponse.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      guestAttributes: ((map['guestAttributes'] as Map).cast<String, String>()).input(),
      internalIpOnly: (map['internalIpOnly'] as bool).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      machineType: (map['machineType'] as String).input(),
      metadata: ((map['metadata'] as Map).cast<String, String>()).input(),
      network: (map['network'] as String).input(),
      nicType: (map['nicType'] as String).input(),
      reservedIpRange: (map['reservedIpRange'] as String).input(),
      shieldedInstanceConfig: (RuntimeShieldedInstanceConfigResponse.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      subnet: (map['subnet'] as String).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

