// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_notebooks_v2.dart';
import 'boot_disk_response.dart';
import 'container_image_response_notebooks_v2.dart';
import 'data_disk_response.dart';
import 'gpudriver_config_response.dart';
import 'network_interface_response.dart';
import 'service_account_response.dart';
import 'shielded_instance_config_response_notebooks_v2.dart';
import 'vm_image_response_notebooks_v2.dart';

/// The definition of how to configure a VM instance outside of Resources and Identity.
class GceSetupResponse {
  /// Optional. The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has [enough vCPUs and memory to support the `machine_type` you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list). Currently supports only one accelerator configuration.
  final pulumi.Input<List<AcceleratorConfigResponseNotebooksV2>> acceleratorConfigs;
  /// Optional. The boot disk for the VM.
  final pulumi.Input<BootDiskResponse> bootDisk;
  /// Optional. Use a container image to start the notebook instance.
  final pulumi.Input<ContainerImageResponseNotebooksV2> containerImage;
  /// Optional. Data disks attached to the VM instance. Currently supports only one data disk.
  final pulumi.Input<List<DataDiskResponse>> dataDisks;
  /// Optional. If true, no external IP will be assigned to this VM instance.
  final pulumi.Input<bool> disablePublicIp;
  /// Optional. Flag to enable ip forwarding or not, default false/off. https://cloud.google.com/vpc/docs/using-routes#canipforward
  final pulumi.Input<bool> enableIpForwarding;
  /// Optional. Configuration for GPU drivers.
  final pulumi.Input<GPUDriverConfigResponse> gpuDriverConfig;
  /// Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource
  final pulumi.Input<String> machineType;
  /// Optional. Custom metadata to apply to this instance.
  final pulumi.Input<Map<String, String>> metadata;
  /// Optional. The network interfaces for the VM. Supports only one interface.
  final pulumi.Input<List<NetworkInterfaceResponse>> networkInterfaces;
  /// Optional. The service account that serves as an identity for the VM instance. Currently supports only one service account.
  final pulumi.Input<List<ServiceAccountResponse>> serviceAccounts;
  /// Optional. Shielded VM configuration. [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  final pulumi.Input<ShieldedInstanceConfigResponseNotebooksV2> shieldedInstanceConfig;
  /// Optional. The Compute Engine tags to add to runtime (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  final pulumi.Input<List<String>> tags;
  /// Optional. Use a Compute Engine VM image to start the notebook instance.
  final pulumi.Input<VmImageResponseNotebooksV2> vmImage;

  /// Creates a new [GceSetupResponse].
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
  GceSetupResponse({
    required this.acceleratorConfigs,
    required this.bootDisk,
    required this.containerImage,
    required this.dataDisks,
    required this.disablePublicIp,
    required this.enableIpForwarding,
    required this.gpuDriverConfig,
    required this.machineType,
    required this.metadata,
    required this.networkInterfaces,
    required this.serviceAccounts,
    required this.shieldedInstanceConfig,
    required this.tags,
    required this.vmImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfigs': pulumi.Input.mapInputValue<List<AcceleratorConfigResponseNotebooksV2>, List<Map<String, dynamic>>>(acceleratorConfigs, (value) => pulumi.Input.encodeList<AcceleratorConfigResponseNotebooksV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDisk': pulumi.Input.mapInputValue<BootDiskResponse, Map<String, dynamic>>(bootDisk, (value) => value.toMap()),
      'containerImage': pulumi.Input.mapInputValue<ContainerImageResponseNotebooksV2, Map<String, dynamic>>(containerImage, (value) => value.toMap()),
      'dataDisks': pulumi.Input.mapInputValue<List<DataDiskResponse>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<DataDiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disablePublicIp': disablePublicIp,
      'enableIpForwarding': enableIpForwarding,
      'gpuDriverConfig': pulumi.Input.mapInputValue<GPUDriverConfigResponse, Map<String, dynamic>>(gpuDriverConfig, (value) => value.toMap()),
      'machineType': machineType,
      'metadata': metadata,
      'networkInterfaces': pulumi.Input.mapInputValue<List<NetworkInterfaceResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccounts': pulumi.Input.mapInputValue<List<ServiceAccountResponse>, List<Map<String, dynamic>>>(serviceAccounts, (value) => pulumi.Input.encodeList<ServiceAccountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shieldedInstanceConfig': pulumi.Input.mapInputValue<ShieldedInstanceConfigResponseNotebooksV2, Map<String, dynamic>>(shieldedInstanceConfig, (value) => value.toMap()),
      'tags': tags,
      'vmImage': pulumi.Input.mapInputValue<VmImageResponseNotebooksV2, Map<String, dynamic>>(vmImage, (value) => value.toMap()),
    };
  }

  factory GceSetupResponse.fromMap(Map<String, dynamic> map) {
    return GceSetupResponse(
      acceleratorConfigs: (pulumi.Input.decodeList<AcceleratorConfigResponseNotebooksV2>(map['acceleratorConfigs'], (value) => AcceleratorConfigResponseNotebooksV2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bootDisk: (BootDiskResponse.fromMap((map['bootDisk'] as Map).cast<String, dynamic>())).input(),
      containerImage: (ContainerImageResponseNotebooksV2.fromMap((map['containerImage'] as Map).cast<String, dynamic>())).input(),
      dataDisks: (pulumi.Input.decodeList<DataDiskResponse>(map['dataDisks'], (value) => DataDiskResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      disablePublicIp: (map['disablePublicIp'] as bool).input(),
      enableIpForwarding: (map['enableIpForwarding'] as bool).input(),
      gpuDriverConfig: (GPUDriverConfigResponse.fromMap((map['gpuDriverConfig'] as Map).cast<String, dynamic>())).input(),
      machineType: (map['machineType'] as String).input(),
      metadata: ((map['metadata'] as Map).cast<String, String>()).input(),
      networkInterfaces: (pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceAccounts: (pulumi.Input.decodeList<ServiceAccountResponse>(map['serviceAccounts'], (value) => ServiceAccountResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      shieldedInstanceConfig: (ShieldedInstanceConfigResponseNotebooksV2.fromMap((map['shieldedInstanceConfig'] as Map).cast<String, dynamic>())).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      vmImage: (VmImageResponseNotebooksV2.fromMap((map['vmImage'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

