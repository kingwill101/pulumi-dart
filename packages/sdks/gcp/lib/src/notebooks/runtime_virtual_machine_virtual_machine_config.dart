// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_virtual_machine_virtual_machine_config_accelerator_config.dart';
import 'runtime_virtual_machine_virtual_machine_config_container_image.dart';
import 'runtime_virtual_machine_virtual_machine_config_data_disk.dart';
import 'runtime_virtual_machine_virtual_machine_config_encryption_config.dart';
import 'runtime_virtual_machine_virtual_machine_config_shielded_instance_config.dart';

class RuntimeVirtualMachineVirtualMachineConfig {
  /// The Compute Engine accelerator configuration for this runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig>? acceleratorConfig;
  /// Use a list of container images to start the notebook instance.
  /// Structure is documented below.
  final pulumi.Input<List<RuntimeVirtualMachineVirtualMachineConfigContainerImage>>? containerImages;
  /// Data disk option configuration settings.
  /// Structure is documented below.
  final pulumi.Input<RuntimeVirtualMachineVirtualMachineConfigDataDisk> dataDisk;
  /// Encryption settings for virtual machine data disk.
  /// Structure is documented below.
  final pulumi.Input<RuntimeVirtualMachineVirtualMachineConfigEncryptionConfig>? encryptionConfig;
  /// (Output)
  /// The Compute Engine guest attributes. (see [Project and instance
  /// guest attributes](https://cloud.google.com/compute/docs/
  /// storing-retrieving-metadata#guest_attributes)).
  final pulumi.Input<Map<String, String>>? guestAttributes;
  /// If true, runtime will only have internal IP addresses. By default,
  /// runtimes are not restricted to internal IP addresses, and will
  /// have ephemeral external IP addresses assigned to each vm. This
  /// `internalIpOnly` restriction can only be enabled for subnetwork
  /// enabled networks, and all dependencies must be configured to be
  /// accessible without external IP addresses.
  final pulumi.Input<bool>? internalIpOnly;
  /// The labels to associate with this runtime. Label **keys** must
  /// contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
  /// empty, but, if present, must contain 1 to 63 characters, and must
  /// conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
  /// more than 32 labels can be associated with a cluster.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Compute Engine machine type used for runtimes.
  final pulumi.Input<String> machineType;
  /// The Compute Engine metadata entries to add to virtual machine.
  /// (see [Project and instance metadata](https://cloud.google.com
  /// /compute/docs/storing-retrieving-metadata#project_and_instance
  /// _metadata)).
  final pulumi.Input<Map<String, String>>? metadata;
  /// The Compute Engine network to be used for machine communications.
  /// Cannot be specified with subnetwork. If neither `network` nor
  /// `subnet` is specified, the "default" network of the project is
  /// used, if it exists. A full URL or partial URI. Examples:
  /// * `https://www.googleapis.com/compute/v1/projects/[projectId]/
  /// regions/global/default`
  /// * `projects/[projectId]/regions/global/default`
  /// Runtimes are managed resources inside Google Infrastructure.
  /// Runtimes support the following network configurations:
  /// * Google Managed Network (Network & subnet are empty)
  /// * Consumer Project VPC (network & subnet are required). Requires
  /// configuring Private Service Access.
  /// * Shared VPC (network & subnet are required). Requires
  /// configuring Private Service Access.
  final pulumi.Input<String>? network;
  /// The type of vNIC to be used on this interface. This may be gVNIC
  /// or VirtioNet.
  /// Possible values are: `UNSPECIFIED_NIC_TYPE`, `VIRTIO_NET`, `GVNIC`.
  final pulumi.Input<String>? nicType;
  /// Reserved IP Range name is used for VPC Peering. The
  /// subnetwork allocation will use the range *name* if it's assigned.
  final pulumi.Input<String>? reservedIpRange;
  /// Shielded VM Instance configuration settings.
  /// Structure is documented below.
  final pulumi.Input<RuntimeVirtualMachineVirtualMachineConfigShieldedInstanceConfig>? shieldedInstanceConfig;
  /// The Compute Engine subnetwork to be used for machine
  /// communications. Cannot be specified with network. A full URL or
  /// partial URI are valid. Examples:
  /// * `https://www.googleapis.com/compute/v1/projects/[projectId]/
  /// regions/us-east1/subnetworks/sub0`
  /// * `projects/[projectId]/regions/us-east1/subnetworks/sub0`
  final pulumi.Input<String>? subnet;
  /// The Compute Engine tags to add to runtime (see [Tagging instances]
  /// (https://cloud.google.com/compute/docs/
  /// label-or-tag-resources#tags)).
  final pulumi.Input<List<String>>? tags;
  /// (Output)
  /// The zone where the virtual machine is located.
  final pulumi.Input<String>? zone;

  /// Creates a new [RuntimeVirtualMachineVirtualMachineConfig].
  /// [acceleratorConfig] The Compute Engine accelerator configuration for this runtime.
  /// [containerImages] Use a list of container images to start the notebook instance.
  /// [dataDisk] Data disk option configuration settings.
  /// [encryptionConfig] Encryption settings for virtual machine data disk.
  /// [guestAttributes] (Output)
  /// [internalIpOnly] If true, runtime will only have internal IP addresses. By default,
  /// [labels] The labels to associate with this runtime. Label **keys** must
  /// [machineType] The Compute Engine machine type used for runtimes.
  /// [metadata] The Compute Engine metadata entries to add to virtual machine.
  /// [network] The Compute Engine network to be used for machine communications.
  /// [nicType] The type of vNIC to be used on this interface. This may be gVNIC
  /// [reservedIpRange] Reserved IP Range name is used for VPC Peering. The
  /// [shieldedInstanceConfig] Shielded VM Instance configuration settings.
  /// [subnet] The Compute Engine subnetwork to be used for machine
  /// [tags] The Compute Engine tags to add to runtime (see [Tagging instances]
  /// [zone] (Output)
  const RuntimeVirtualMachineVirtualMachineConfig({
    this.acceleratorConfig,
    this.containerImages,
    required this.dataDisk,
    this.encryptionConfig,
    this.guestAttributes,
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
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig, Map<String, dynamic>>(acceleratorConfig, (value) => value.toMap()),
      'containerImages': ?pulumi.Input.mapOptionalInputValue<List<RuntimeVirtualMachineVirtualMachineConfigContainerImage>, List<Map<String, dynamic>>>(containerImages, (value) => pulumi.Input.encodeList<RuntimeVirtualMachineVirtualMachineConfigContainerImage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataDisk': pulumi.Input.mapInputValue<RuntimeVirtualMachineVirtualMachineConfigDataDisk, Map<String, dynamic>>(dataDisk, (value) => value.toMap()),
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeVirtualMachineVirtualMachineConfigEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'guestAttributes': ?guestAttributes,
      'internalIpOnly': ?internalIpOnly,
      'labels': ?labels,
      'machineType': machineType,
      'metadata': ?metadata,
      'network': ?network,
      'nicType': ?nicType,
      'reservedIpRange': ?reservedIpRange,
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeVirtualMachineVirtualMachineConfigShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'subnet': ?subnet,
      'tags': ?tags,
      'zone': ?zone,
    };
  }

  factory RuntimeVirtualMachineVirtualMachineConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeVirtualMachineVirtualMachineConfig(
      acceleratorConfig: (() { final guardedValue = map['acceleratorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeVirtualMachineVirtualMachineConfigAcceleratorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerImages: (() { final guardedValue = map['containerImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuntimeVirtualMachineVirtualMachineConfigContainerImage>(guardedValue, (value) => RuntimeVirtualMachineVirtualMachineConfigContainerImage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataDisk: pulumi.Input.fromValue(RuntimeVirtualMachineVirtualMachineConfigDataDisk.fromMap((map['dataDisk']! as Map).cast<String, dynamic>())),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeVirtualMachineVirtualMachineConfigEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      guestAttributes: (() { final guardedValue = map['guestAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      internalIpOnly: (() { final guardedValue = map['internalIpOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedIpRange: (() { final guardedValue = map['reservedIpRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeVirtualMachineVirtualMachineConfigShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
