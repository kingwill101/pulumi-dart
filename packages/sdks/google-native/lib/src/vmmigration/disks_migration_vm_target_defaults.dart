// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boot_disk_defaults.dart';
import 'compute_scheduling.dart';
import 'encryption.dart';
import 'network_interface.dart';

/// Details for creation of a VM that migrated data disks will be attached to.
class DisksMigrationVmTargetDefaults {
  /// Optional. Additional licenses to assign to the VM.
  final pulumi.Input<List<String>>? additionalLicenses;
  /// Optional. Details of the boot disk of the VM.
  final pulumi.Input<BootDiskDefaults>? bootDiskDefaults;
  /// Optional. Compute instance scheduling information (if empty default is used).
  final pulumi.Input<ComputeScheduling>? computeScheduling;
  /// Optional. The encryption to apply to the VM.
  final pulumi.Input<Encryption>? encryption;
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
  final pulumi.Input<List<NetworkInterface>>? networkInterfaces;
  /// Optional. A list of network tags to associate with the VM.
  final pulumi.Input<List<String>>? networkTags;
  /// Optional. Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  final pulumi.Input<bool>? secureBoot;
  /// Optional. The service account to associate the VM with.
  final pulumi.Input<String>? serviceAccount;
  /// The name of the VM to create.
  final pulumi.Input<String> vmName;

  /// Creates a new [DisksMigrationVmTargetDefaults].
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
  const DisksMigrationVmTargetDefaults({
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
      'bootDiskDefaults': ?pulumi.Input.mapOptionalInputValue<BootDiskDefaults, Map<String, dynamic>>(bootDiskDefaults, (value) => value.toMap()),
      'computeScheduling': ?pulumi.Input.mapOptionalInputValue<ComputeScheduling, Map<String, dynamic>>(computeScheduling, (value) => value.toMap()),
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'hostname': ?hostname,
      'labels': ?labels,
      'machineType': machineType,
      'machineTypeSeries': ?machineTypeSeries,
      'metadata': ?metadata,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkTags': ?networkTags,
      'secureBoot': ?secureBoot,
      'serviceAccount': ?serviceAccount,
      'vmName': vmName,
    };
  }

  factory DisksMigrationVmTargetDefaults.fromMap(Map<String, dynamic> map) {
    return DisksMigrationVmTargetDefaults(
      additionalLicenses: (() { final guardedValue = map['additionalLicenses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bootDiskDefaults: (() { final guardedValue = map['bootDiskDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BootDiskDefaults.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      computeScheduling: (() { final guardedValue = map['computeScheduling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeScheduling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Encryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      machineTypeSeries: (() { final guardedValue = map['machineTypeSeries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterface>(guardedValue, (value) => NetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkTags: (() { final guardedValue = map['networkTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      secureBoot: (() { final guardedValue = map['secureBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmName: pulumi.Input.fromValue(map['vmName'] as String),
    );
  }
}

