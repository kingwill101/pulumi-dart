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
  /// [enough vCPUs and memory to support the `machineType` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  /// Currently supports only one accelerator configuration.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceGceSetupAcceleratorConfig>?>? acceleratorConfigs;
  /// The definition of a boot disk.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupBootDisk?>? bootDisk;
  /// (Output)
  /// Output only. The unique numeric identifier of the underlying Compute Engine VM instance.
  final pulumi.Input<String?>? computeInstanceId;
  /// Confidential instance configuration.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupConfidentialInstanceConfig?>? confidentialInstanceConfig;
  /// Use a container image to start the workbench instance.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupContainerImage?>? containerImage;
  /// Data disks attached to the VM instance. Currently supports only one data disk.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupDataDisks?>? dataDisks;
  /// Optional. If true, no external IP will be assigned to this VM instance.
  final pulumi.Input<bool?>? disablePublicIp;
  /// Optional. Flag to enable ip forwarding or not, default false/off.
  /// https://cloud.google.com/vpc/docs/using-routes#canipforward
  final pulumi.Input<bool?>? enableIpForwarding;
  /// Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource
  final pulumi.Input<String?>? machineType;
  /// Optional. Custom metadata to apply to this instance.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// Optional. The minimum CPU platform to use for this instance.
  final pulumi.Input<String?>? minCpuPlatform;
  /// The network interfaces for the VM. Supports only one interface.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceGceSetupNetworkInterface>?>? networkInterfaces;
  /// Reservations that this instance can consume from.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupReservationAffinity?>? reservationAffinity;
  /// The service account that serves as an identity for the VM instance. Currently supports only one service account.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceGceSetupServiceAccount>?>? serviceAccounts;
  /// A set of Shielded Instance options. See [Images using supported Shielded
  /// VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  /// Not all combinations are valid.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupShieldedInstanceConfig?>? shieldedInstanceConfig;
  /// Optional. The Compute Engine tags to add to instance (see [Tagging
  /// instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final pulumi.Input<List<String>?>? tags;
  /// Definition of a custom Compute Engine virtual machine image for starting
  /// a workbench instance with the environment installed directly on the VM.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetupVmImage?>? vmImage;

  /// Creates a new [InstanceGceSetup].
  /// [acceleratorConfigs] The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has
  /// [bootDisk] The definition of a boot disk.
  /// [computeInstanceId] (Output)
  /// [confidentialInstanceConfig] Confidential instance configuration.
  /// [containerImage] Use a container image to start the workbench instance.
  /// [dataDisks] Data disks attached to the VM instance. Currently supports only one data disk.
  /// [disablePublicIp] Optional. If true, no external IP will be assigned to this VM instance.
  /// [enableIpForwarding] Optional. Flag to enable ip forwarding or not, default false/off.
  /// [machineType] Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource
  /// [metadata] Optional. Custom metadata to apply to this instance.
  /// [minCpuPlatform] Optional. The minimum CPU platform to use for this instance.
  /// [networkInterfaces] The network interfaces for the VM. Supports only one interface.
  /// [reservationAffinity] Reservations that this instance can consume from.
  /// [serviceAccounts] The service account that serves as an identity for the VM instance. Currently supports only one service account.
  /// [shieldedInstanceConfig] A set of Shielded Instance options. See [Images using supported Shielded
  /// [tags] Optional. The Compute Engine tags to add to instance (see [Tagging
  /// [vmImage] Definition of a custom Compute Engine virtual machine image for starting
  const InstanceGceSetup({
    this.acceleratorConfigs,
    this.bootDisk,
    this.computeInstanceId,
    this.confidentialInstanceConfig,
    this.containerImage,
    this.dataDisks,
    this.disablePublicIp,
    this.enableIpForwarding,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
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
      'computeInstanceId': ?computeInstanceId,
      'confidentialInstanceConfig': ?pulumi.Input.mapOptionalInputValue<InstanceGceSetupConfidentialInstanceConfig, Map<String, dynamic>>(confidentialInstanceConfig, (value) => value.toMap()),
      'containerImage': ?pulumi.Input.mapOptionalInputValue<InstanceGceSetupContainerImage, Map<String, dynamic>>(containerImage, (value) => value.toMap()),
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<InstanceGceSetupDataDisks, Map<String, dynamic>>(dataDisks, (value) => value.toMap()),
      'disablePublicIp': ?disablePublicIp,
      'enableIpForwarding': ?enableIpForwarding,
      'machineType': ?machineType,
      'metadata': ?metadata,
      'minCpuPlatform': ?minCpuPlatform,
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
      acceleratorConfigs: (() { final guardedValue = map['acceleratorConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGceSetupAcceleratorConfig>(guardedValue, (value) => InstanceGceSetupAcceleratorConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bootDisk: (() { final guardedValue = map['bootDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGceSetupBootDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      computeInstanceId: (() { final guardedValue = map['computeInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      confidentialInstanceConfig: (() { final guardedValue = map['confidentialInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGceSetupConfidentialInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerImage: (() { final guardedValue = map['containerImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGceSetupContainerImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGceSetupDataDisks.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disablePublicIp: (() { final guardedValue = map['disablePublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableIpForwarding: (() { final guardedValue = map['enableIpForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      minCpuPlatform: (() { final guardedValue = map['minCpuPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGceSetupNetworkInterface>(guardedValue, (value) => InstanceGceSetupNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      reservationAffinity: (() { final guardedValue = map['reservationAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGceSetupReservationAffinity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccounts: (() { final guardedValue = map['serviceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGceSetupServiceAccount>(guardedValue, (value) => InstanceGceSetupServiceAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGceSetupShieldedInstanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vmImage: (() { final guardedValue = map['vmImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGceSetupVmImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
