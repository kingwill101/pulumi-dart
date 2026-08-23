// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_notebooks_v2.dart';
import 'boot_disk.dart';
import 'container_image_notebooks_v2.dart';
import 'data_disk.dart';
import 'gpudriver_config.dart';
import 'network_interface.dart';
import 'service_account.dart';
import 'shielded_instance_config_notebooks_v2.dart';
import 'vm_image_notebooks_v2.dart';

/// The definition of how to configure a VM instance outside of Resources and Identity.
class GceSetup {
  /// Optional. The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list). Currently supports only one accelerator configuration.
  final pulumi.Input<List<AcceleratorConfigNotebooksV2>>? acceleratorConfigs;
  /// Optional. The boot disk for the VM.
  final pulumi.Input<BootDisk>? bootDisk;
  /// Optional. Use a container image to start the notebook instance.
  final pulumi.Input<ContainerImageNotebooksV2>? containerImage;
  /// Optional. Data disks attached to the VM instance. Currently supports only one data disk.
  final pulumi.Input<List<DataDisk>>? dataDisks;
  /// Optional. If true, no external IP will be assigned to this VM instance.
  final pulumi.Input<bool>? disablePublicIp;
  /// Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  final pulumi.Input<bool>? enableIpForwarding;
  /// Optional. Configuration for GPU drivers.
  final pulumi.Input<GPUDriverConfig>? gpuDriverConfig;
  /// Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource
  final pulumi.Input<String>? machineType;
  /// Optional. Custom metadata to apply to this instance.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Optional. The network interfaces for the VM. Supports only one interface.
  final pulumi.Input<List<NetworkInterface>>? networkInterfaces;
  /// Optional. The service account that serves as an identity for the VM instance. Currently supports only one service account.
  final pulumi.Input<List<ServiceAccount>>? serviceAccounts;
  /// Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  final pulumi.Input<ShieldedInstanceConfigNotebooksV2>? shieldedInstanceConfig;
  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final pulumi.Input<List<String>>? tags;
  /// Optional. Use a Compute Engine VM image to start the notebook instance.
  final pulumi.Input<VmImageNotebooksV2>? vmImage;

  /// Creates a new [GceSetup].
  /// [acceleratorConfigs] Optional. The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list). Currently supports only one accelerator configuration.
  /// [bootDisk] Optional. The boot disk for the VM.
  /// [containerImage] Optional. Use a container image to start the notebook instance.
  /// [dataDisks] Optional. Data disks attached to the VM instance. Currently supports only one data disk.
  /// [disablePublicIp] Optional. If true, no external IP will be assigned to this VM instance.
  /// [enableIpForwarding] Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  /// [gpuDriverConfig] Optional. Configuration for GPU drivers.
  /// [machineType] Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource
  /// [metadata] Optional. Custom metadata to apply to this instance.
  /// [networkInterfaces] Optional. The network interfaces for the VM. Supports only one interface.
  /// [serviceAccounts] Optional. The service account that serves as an identity for the VM instance. Currently supports only one service account.
  /// [shieldedInstanceConfig] Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  /// [tags] Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  /// [vmImage] Optional. Use a Compute Engine VM image to start the notebook instance.
  const GceSetup({
    this.acceleratorConfigs,
    this.bootDisk,
    this.containerImage,
    this.dataDisks,
    this.disablePublicIp,
    this.enableIpForwarding,
    this.gpuDriverConfig,
    this.machineType,
    this.metadata,
    this.networkInterfaces,
    this.serviceAccounts,
    this.shieldedInstanceConfig,
    this.tags,
    this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfigs': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorConfigNotebooksV2>, List<Map<String, dynamic>>>(acceleratorConfigs, (value) => pulumi.Input.encodeList<AcceleratorConfigNotebooksV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDisk': ?pulumi.Input.mapOptionalInputValue<BootDisk, Map<String, dynamic>>(bootDisk, (value) => value.toMap()),
      'containerImage': ?pulumi.Input.mapOptionalInputValue<ContainerImageNotebooksV2, Map<String, dynamic>>(containerImage, (value) => value.toMap()),
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<DataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<DataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disablePublicIp': ?disablePublicIp,
      'enableIpForwarding': ?enableIpForwarding,
      'gpuDriverConfig': ?pulumi.Input.mapOptionalInputValue<GPUDriverConfig, Map<String, dynamic>>(gpuDriverConfig, (value) => value.toMap()),
      'machineType': ?machineType,
      'metadata': ?metadata,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccounts': ?pulumi.Input.mapOptionalInputValue<List<ServiceAccount>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<ServiceAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shieldedInstanceConfig': ?pulumi.Input.mapOptionalInputValue<ShieldedInstanceConfigNotebooksV2, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': ?tags,
      'vmImage': ?pulumi.Input.mapOptionalInputValue<VmImageNotebooksV2, Map<String, dynamic>>(vmImage, (value) => value.toMap()),
    };
  }

  factory GceSetup.fromMap(Map<String, dynamic> map) {
    return GceSetup(
      acceleratorConfigs: (() { final guardedValue = map['acceleratorConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AcceleratorConfigNotebooksV2>(guardedValue, (value) => AcceleratorConfigNotebooksV2.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bootDisk: (() { final guardedValue = map['bootDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BootDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerImage: (() { final guardedValue = map['containerImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerImageNotebooksV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataDisk>(guardedValue, (value) => DataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disablePublicIp: (() { final guardedValue = map['disablePublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableIpForwarding: (() { final guardedValue = map['enableIpForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gpuDriverConfig: (() { final guardedValue = map['gpuDriverConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GPUDriverConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterface>(guardedValue, (value) => NetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAccounts: (() { final guardedValue = map['serviceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceAccount>(guardedValue, (value) => ServiceAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      shieldedInstanceConfig: (() { final guardedValue = map['shieldedInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShieldedInstanceConfigNotebooksV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vmImage: (() { final guardedValue = map['vmImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmImageNotebooksV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
