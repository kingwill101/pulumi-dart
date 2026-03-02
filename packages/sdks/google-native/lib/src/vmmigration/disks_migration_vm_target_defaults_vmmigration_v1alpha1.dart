// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boot_disk_defaults_vmmigration_v1alpha1.dart';
import 'compute_scheduling_vmmigration_v1alpha1.dart';
import 'encryption_vmmigration_v1alpha1.dart';
import 'network_interface_vmmigration_v1alpha1.dart';

/// Details for creation of a VM that migrated data disks will be attached to.
class DisksMigrationVmTargetDefaultsVmmigrationV1alpha1 {
  /// Optional. Additional licenses to assign to the VM.
  final pulumi.Input<List<String>>? additionalLicenses;
  /// Optional. Details of the boot disk of the VM.
  final pulumi.Input<BootDiskDefaultsVmmigrationV1alpha1>? bootDiskDefaults;
  /// Optional. Compute instance scheduling information (if empty default is used).
  final pulumi.Input<ComputeSchedulingVmmigrationV1alpha1>? computeScheduling;
  /// Optional. The encryption to apply to the VM.
  final pulumi.Input<EncryptionVmmigrationV1alpha1>? encryption;
  /// Optional. The hostname to assign to the VM.
  final pulumi.Input<String>? hostname;
  /// Optional. A map of labels to associate with the VM.
  final pulumi.Input<Map<String, String>>? labels;
  /// The machine type to create the VM with.
  final pulumi.Input<String> machineType;
  /// Optional. The machine type series to create the VM with. For presentation only.
  final pulumi.Input<String>? machineTypeSeries;
  /// Optional. The metadata key/value pairs to assign to the VM.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Optional. NICs to attach to the VM.
  final pulumi.Input<List<NetworkInterfaceVmmigrationV1alpha1>>? networkInterfaces;
  /// Optional. A list of network tags to associate with the VM.
  final pulumi.Input<List<String>>? networkTags;
  /// Optional. Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  final pulumi.Input<bool>? secureBoot;
  /// Optional. The service account to associate the VM with.
  final pulumi.Input<String>? serviceAccount;
  /// The name of the VM to create.
  final pulumi.Input<String> vmName;

  /// Creates a new [DisksMigrationVmTargetDefaultsVmmigrationV1alpha1].
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
  DisksMigrationVmTargetDefaultsVmmigrationV1alpha1({
    this.additionalLicenses,
    this.bootDiskDefaults,
    this.computeScheduling,
    this.encryption,
    this.hostname,
    this.labels,
    required this.machineType,
    this.machineTypeSeries,
    this.metadata,
    this.networkInterfaces,
    this.networkTags,
    this.secureBoot,
    this.serviceAccount,
    required this.vmName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLicenses': ?additionalLicenses,
      'bootDiskDefaults': ?pulumi.Input.mapOptionalInputValue<BootDiskDefaultsVmmigrationV1alpha1, Map<String, dynamic>>(bootDiskDefaults, (value) => value.toMap()),
      'computeScheduling': ?pulumi.Input.mapOptionalInputValue<ComputeSchedulingVmmigrationV1alpha1, Map<String, dynamic>>(computeScheduling, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionVmmigrationV1alpha1, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'hostname': ?hostname,
      'labels': ?labels,
      'machineType': machineType,
      'machineTypeSeries': ?machineTypeSeries,
      'metadata': ?metadata,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceVmmigrationV1alpha1>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkTags': ?networkTags,
      'secureBoot': ?secureBoot,
      'serviceAccount': ?serviceAccount,
      'vmName': vmName,
    };
  }

  factory DisksMigrationVmTargetDefaultsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return DisksMigrationVmTargetDefaultsVmmigrationV1alpha1(
      additionalLicenses: map['additionalLicenses'] == null ? null : ((map['additionalLicenses']! as List).cast<String>()).input(),
      bootDiskDefaults: map['bootDiskDefaults'] == null ? null : (BootDiskDefaultsVmmigrationV1alpha1.fromMap((map['bootDiskDefaults']! as Map).cast<String, dynamic>())).input(),
      computeScheduling: map['computeScheduling'] == null ? null : (ComputeSchedulingVmmigrationV1alpha1.fromMap((map['computeScheduling']! as Map).cast<String, dynamic>())).input(),
      encryption: map['encryption'] == null ? null : (EncryptionVmmigrationV1alpha1.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      machineType: (map['machineType'] as String).input(),
      machineTypeSeries: map['machineTypeSeries'] == null ? null : (map['machineTypeSeries']! as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<NetworkInterfaceVmmigrationV1alpha1>(map['networkInterfaces']!, (value) => NetworkInterfaceVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkTags: map['networkTags'] == null ? null : ((map['networkTags']! as List).cast<String>()).input(),
      secureBoot: map['secureBoot'] == null ? null : (map['secureBoot']! as bool).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      vmName: (map['vmName'] as String).input(),
    );
  }
}

