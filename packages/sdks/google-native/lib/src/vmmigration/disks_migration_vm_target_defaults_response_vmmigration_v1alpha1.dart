// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boot_disk_defaults_response_vmmigration_v1alpha1.dart';
import 'compute_scheduling_response_vmmigration_v1alpha1.dart';
import 'encryption_response_vmmigration_v1alpha1.dart';
import 'network_interface_response_vmmigration_v1alpha1.dart';

/// Details for creation of a VM that migrated data disks will be attached to.
class DisksMigrationVmTargetDefaultsResponseVmmigrationV1alpha1 {
  /// Optional. Additional licenses to assign to the VM.
  final pulumi.Input<List<String>> additionalLicenses;
  /// Optional. Details of the boot disk of the VM.
  final pulumi.Input<BootDiskDefaultsResponseVmmigrationV1alpha1> bootDiskDefaults;
  /// Optional. Compute instance scheduling information (if empty default is used).
  final pulumi.Input<ComputeSchedulingResponseVmmigrationV1alpha1> computeScheduling;
  /// Optional. The encryption to apply to the VM.
  final pulumi.Input<EncryptionResponseVmmigrationV1alpha1> encryption;
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
  final pulumi.Input<List<NetworkInterfaceResponseVmmigrationV1alpha1>> networkInterfaces;
  /// Optional. A list of network tags to associate with the VM.
  final pulumi.Input<List<String>> networkTags;
  /// Optional. Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  final pulumi.Input<bool> secureBoot;
  /// Optional. The service account to associate the VM with.
  final pulumi.Input<String> serviceAccount;
  /// The name of the VM to create.
  final pulumi.Input<String> vmName;

  /// Creates a new [DisksMigrationVmTargetDefaultsResponseVmmigrationV1alpha1].
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
  const DisksMigrationVmTargetDefaultsResponseVmmigrationV1alpha1({
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
      'bootDiskDefaults': pulumi.Input.mapInputValue<BootDiskDefaultsResponseVmmigrationV1alpha1, Map<String, dynamic>>(bootDiskDefaults, (value) => value.toMap()),
      'computeScheduling': pulumi.Input.mapInputValue<ComputeSchedulingResponseVmmigrationV1alpha1, Map<String, dynamic>>(computeScheduling, (value) => value.toMap()),
      'encryption': pulumi.Input.mapInputValue<EncryptionResponseVmmigrationV1alpha1, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'hostname': hostname,
      'labels': labels,
      'machineType': machineType,
      'machineTypeSeries': machineTypeSeries,
      'metadata': metadata,
      'networkInterfaces': pulumi.Input.mapInputValue<List<NetworkInterfaceResponseVmmigrationV1alpha1>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponseVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkTags': networkTags,
      'secureBoot': secureBoot,
      'serviceAccount': serviceAccount,
      'vmName': vmName,
    };
  }

  factory DisksMigrationVmTargetDefaultsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return DisksMigrationVmTargetDefaultsResponseVmmigrationV1alpha1(
      additionalLicenses: pulumi.Input.fromValue((map['additionalLicenses'] as List).cast<String>()),
      bootDiskDefaults: pulumi.Input.fromValue(BootDiskDefaultsResponseVmmigrationV1alpha1.fromMap((map['bootDiskDefaults']! as Map).cast<String, dynamic>())),
      computeScheduling: pulumi.Input.fromValue(ComputeSchedulingResponseVmmigrationV1alpha1.fromMap((map['computeScheduling']! as Map).cast<String, dynamic>())),
      encryption: pulumi.Input.fromValue(EncryptionResponseVmmigrationV1alpha1.fromMap((map['encryption']! as Map).cast<String, dynamic>())),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      machineTypeSeries: pulumi.Input.fromValue(map['machineTypeSeries'] as String),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      networkInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceResponseVmmigrationV1alpha1>(map['networkInterfaces']!, (value) => NetworkInterfaceResponseVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      networkTags: pulumi.Input.fromValue((map['networkTags'] as List).cast<String>()),
      secureBoot: pulumi.Input.fromValue(map['secureBoot'] as bool),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      vmName: pulumi.Input.fromValue(map['vmName'] as String),
    );
  }
}
