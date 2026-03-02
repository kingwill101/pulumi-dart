// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_gce_setup_accelerator_config.dart';
import 'instance_gce_setup_boot_disk.dart';
import 'instance_gce_setup_confidential_instance_config.dart';
import 'instance_gce_setup_container_image.dart';
import 'instance_gce_setup_data_disks.dart';
import 'instance_gce_setup_network_interface.dart';
import 'instance_gce_setup_reservation_affinity.dart';
import 'instance_gce_setup_service_account.dart';
import 'instance_gce_setup_shielded_instance_config.dart';
import 'instance_gce_setup_vm_image.dart';

class InstanceGceSetup {
  /// The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has
  /// [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  /// Currently supports only one accelerator configuration.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceGceSetupAcceleratorConfig>>? acceleratorConfigs;
  /// The definition of a boot disk.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupBootDisk>? bootDisk;
  /// Confidential instance configuration.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupConfidentialInstanceConfig>? confidentialInstanceConfig;
  /// Use a container image to start the workbench instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupContainerImage>? containerImage;
  /// Data disks attached to the VM instance. Currently supports only one data disk.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupDataDisks>? dataDisks;
  /// Optional. If true, no external IP will be assigned to this VM instance.
  final pulumi.Input<bool>? disablePublicIp;
  /// Optional. Flag to enable ip forwarding or not, default false/off.
  /// https://cloud.google.com/vpc/docs/using-routes#canipforward
  final pulumi.Input<bool>? enableIpForwarding;
  /// Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource
  final pulumi.Input<String>? machineType;
  /// Optional. Custom metadata to apply to this instance.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The network interfaces for the VM. Supports only one interface.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceGceSetupNetworkInterface>>? networkInterfaces;
  /// Reservations that this instance can consume from.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupReservationAffinity>? reservationAffinity;
  /// The service account that serves as an identity for the VM instance. Currently supports only one service account.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceGceSetupServiceAccount>>? serviceAccounts;
  /// A set of Shielded Instance options. See [Images using supported Shielded
  /// VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  /// Not all combinations are valid.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupShieldedInstanceConfig>? shieldedInstanceConfig;
  /// Optional. The Compute Engine tags to add to instance (see [Tagging
  /// instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final pulumi.Input<List<String>>? tags;
  /// Definition of a custom Compute Engine virtual machine image for starting
  /// a workbench instance with the environment installed directly on the VM.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupVmImage>? vmImage;

  /// Creates a new [InstanceGceSetup].
  /// [acceleratorConfigs] The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has
  /// [bootDisk] The definition of a boot disk.
  /// [confidentialInstanceConfig] Confidential instance configuration.
  /// [containerImage] Use a container image to start the workbench instance.
  /// [dataDisks] Data disks attached to the VM instance. Currently supports only one data disk.
  /// [disablePublicIp] Optional. If true, no external IP will be assigned to this VM instance.
  /// [enableIpForwarding] Optional. Flag to enable ip forwarding or not, default false/off.
  /// [machineType] Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource
  /// [metadata] Optional. Custom metadata to apply to this instance.
  /// [networkInterfaces] The network interfaces for the VM. Supports only one interface.
  /// [reservationAffinity] Reservations that this instance can consume from.
  /// [serviceAccounts] The service account that serves as an identity for the VM instance. Currently supports only one service account.
  /// [shieldedInstanceConfig] A set of Shielded Instance options. See [Images using supported Shielded
  /// [tags] Optional. The Compute Engine tags to add to instance (see [Tagging
  /// [vmImage] Definition of a custom Compute Engine virtual machine image for starting
  InstanceGceSetup({
    this.acceleratorConfigs,
    this.bootDisk,
    this.confidentialInstanceConfig,
    this.containerImage,
    this.dataDisks,
    this.disablePublicIp,
    this.enableIpForwarding,
    this.machineType,
    this.metadata,
    this.networkInterfaces,
    this.reservationAffinity,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.tags,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstanceGceSetupAcceleratorConfig>, List<Map<String, dynamic>>>(acceleratorConfigs, (value) => pulumi.Input.encodeList<InstanceGceSetupAcceleratorConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDisk': ?pulumi.Input.mapOptionalInputValue<InstanceGceSetupBootDisk, Map<String, dynamic>>(bootDisk, (value) => value.toMap()),
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGceSetupConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'containerImage': ?pulumi.Input.mapOptionalInputValue<InstanceGceSetupContainerImage, Map<String, dynamic>>(containerImage, (value) => value.toMap()),
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<InstanceGceSetupDataDisks, Map<String, dynamic>>(dataDisks, (value) => value.toMap()),
      'disablePublicIp': ?disablePublicIp,
      'enableIpForwarding': ?enableIpForwarding,
      'machineType': ?machineType,
      'metadata': ?metadata,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<InstanceGceSetupNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<InstanceGceSetupNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reservationAffinity': ?pulumi.Input.mapOptionalInputValue<InstanceGceSetupReservationAffinity, Map<String, dynamic>>(reservationAffinity, (value) => value.toMap()),
      'serviceAccounts': ?pulumi.Input.mapOptionalInputValue<List<InstanceGceSetupServiceAccount>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<InstanceGceSetupServiceAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGceSetupShieldedInstanceConfig, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?tags,
      'vmImage': ?pulumi.Input.mapOptionalInputValue<InstanceGceSetupVmImage, Map<String, dynamic>>(vmImage, (value) => value.toMap()),
    };
  }

  factory InstanceGceSetup.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetup(
      acceleratorConfigs: map['acceleratorConfigs'] == null ? null : (pulumi.Input.decodeList<InstanceGceSetupAcceleratorConfig>(map['acceleratorConfigs'], (value) => InstanceGceSetupAcceleratorConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bootDisk: map['bootDisk'] == null ? null : (InstanceGceSetupBootDisk.fromMap((map['bootDisk'] as Map).cast<String, dynamic>())).input(),
      confidentialInstanceConfig: map['confidentialInstanceConfig'] == null ? null : (InstanceGceSetupConfidentialInstanceConfig.fromMap((map['confidentialInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      containerImage: map['containerImage'] == null ? null : (InstanceGceSetupContainerImage.fromMap((map['containerImage'] as Map).cast<String, dynamic>())).input(),
      dataDisks: map['dataDisks'] == null ? null : (InstanceGceSetupDataDisks.fromMap((map['dataDisks'] as Map).cast<String, dynamic>())).input(),
      disablePublicIp: map['disablePublicIp'] == null ? null : (map['disablePublicIp'] as bool).input(),
      enableIpForwarding: map['enableIpForwarding'] == null ? null : (map['enableIpForwarding'] as bool).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<InstanceGceSetupNetworkInterface>(map['networkInterfaces'], (value) => InstanceGceSetupNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      reservationAffinity: map['reservationAffinity'] == null ? null : (InstanceGceSetupReservationAffinity.fromMap((map['reservationAffinity'] as Map).cast<String, dynamic>())).input(),
      serviceAccounts: map['serviceAccounts'] == null ? null : (pulumi.Input.decodeList<InstanceGceSetupServiceAccount>(map['serviceAccounts'], (value) => InstanceGceSetupServiceAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      shieldedInstanceConfig: map['shieldedInstanceConfig'] == null ? null : (InstanceGceSetupShieldedInstanceConfig.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      vmImage: map['vmImage'] == null ? null : (InstanceGceSetupVmImage.fromMap((map['vmImage'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

