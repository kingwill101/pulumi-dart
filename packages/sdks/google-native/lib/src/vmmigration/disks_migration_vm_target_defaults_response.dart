// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boot_disk_defaults_response.dart';
import 'compute_scheduling_response.dart';
import 'encryption_response.dart';
import 'network_interface_response.dart';

/// Details for creation of a VM that migrated data disks will be attached to.
class DisksMigrationVmTargetDefaultsResponse {
  /// Optional. Additional licenses to assign to the VM.
  final pulumi.Input<List<String>> additionalLicenses;
  /// Optional. Details of the boot disk of the VM.
  final pulumi.Input<BootDiskDefaultsResponse> bootDiskDefaults;
  /// Optional. Compute instance scheduling information (if empty default is used).
  final pulumi.Input<ComputeSchedulingResponse> computeScheduling;
  /// Optional. The encryption to apply to the VM.
  final pulumi.Input<EncryptionResponse> encryption;
  /// Optional. The hostname to assign to the VM.
  final pulumi.Input<String> hostname;
  /// Optional. A map of labels to associate with the VM.
  final pulumi.Input<Map<String, String>> labels;
  /// The machine type to create the VM with.
  final pulumi.Input<String> machineType;
  /// Optional. The machine type series to create the VM with. For presentation only.
  final pulumi.Input<String> machineTypeSeries;
  /// Optional. The metadata key/value pairs to assign to the VM.
  final pulumi.Input<Map<String, String>> metadata;
  /// Optional. NICs to attach to the VM.
  final pulumi.Input<List<NetworkInterfaceResponse>> networkInterfaces;
  /// Optional. A list of network tags to associate with the VM.
  final pulumi.Input<List<String>> networkTags;
  /// Optional. Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  final pulumi.Input<bool> secureBoot;
  /// Optional. The service account to associate the VM with.
  final pulumi.Input<String> serviceAccount;
  /// The name of the VM to create.
  final pulumi.Input<String> vmName;

  /// Creates a new [DisksMigrationVmTargetDefaultsResponse].
  /// [additionalLicenses] Optional. Additional licenses to assign to the VM.
  /// [bootDiskDefaults] Optional. Details of the boot disk of the VM.
  /// [computeScheduling] Optional. Compute instance scheduling information (if empty default is used).
  /// [encryption] Optional. The encryption to apply to the VM.
  /// [hostname] Optional. The hostname to assign to the VM.
  /// [labels] Optional. A map of labels to associate with the VM.
  /// [machineType] The machine type to create the VM with.
  /// [machineTypeSeries] Optional. The machine type series to create the VM with. For presentation only.
  /// [metadata] Optional. The metadata key/value pairs to assign to the VM.
  /// [networkInterfaces] Optional. NICs to attach to the VM.
  /// [networkTags] Optional. A list of network tags to associate with the VM.
  /// [secureBoot] Optional. Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  /// [serviceAccount] Optional. The service account to associate the VM with.
  /// [vmName] The name of the VM to create.
  DisksMigrationVmTargetDefaultsResponse({
    required this.additionalLicenses,
    required this.bootDiskDefaults,
    required this.computeScheduling,
    required this.encryption,
    required this.hostname,
    required this.labels,
    required this.machineType,
    required this.machineTypeSeries,
    required this.metadata,
    required this.networkInterfaces,
    required this.networkTags,
    required this.secureBoot,
    required this.serviceAccount,
    required this.vmName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLicenses': additionalLicenses,
      'bootDiskDefaults': pulumi.Input.mapInputValue<BootDiskDefaultsResponse, Map<String, dynamic>>(bootDiskDefaults, (value) => value.toMap()),
      'computeScheduling': pulumi.Input.mapInputValue<ComputeSchedulingResponse, Map<String, dynamic>>(computeScheduling, (value) => value.toMap()),
      'encryption': pulumi.Input.mapInputValue<EncryptionResponse, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'hostname': hostname,
      'labels': labels,
      'machineType': machineType,
      'machineTypeSeries': machineTypeSeries,
      'metadata': metadata,
      'networkInterfaces': pulumi.Input.mapInputValue<List<NetworkInterfaceResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkTags': networkTags,
      'secureBoot': secureBoot,
      'serviceAccount': serviceAccount,
      'vmName': vmName,
    };
  }

  factory DisksMigrationVmTargetDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return DisksMigrationVmTargetDefaultsResponse(
      additionalLicenses: ((map['additionalLicenses'] as List).cast<String>()).input(),
      bootDiskDefaults: (BootDiskDefaultsResponse.fromMap((map['bootDiskDefaults'] as Map).cast<String, dynamic>())).input(),
      computeScheduling: (ComputeSchedulingResponse.fromMap((map['computeScheduling'] as Map).cast<String, dynamic>())).input(),
      encryption: (EncryptionResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      hostname: (map['hostname'] as String).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      machineType: (map['machineType'] as String).input(),
      machineTypeSeries: (map['machineTypeSeries'] as String).input(),
      metadata: ((map['metadata'] as Map).cast<String, String>()).input(),
      networkInterfaces: (pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkTags: ((map['networkTags'] as List).cast<String>()).input(),
      secureBoot: (map['secureBoot'] as bool).input(),
      serviceAccount: (map['serviceAccount'] as String).input(),
      vmName: (map['vmName'] as String).input(),
    );
  }
}

