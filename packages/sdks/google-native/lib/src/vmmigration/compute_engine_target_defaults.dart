// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_engine_target_defaults_disk_type.dart';
import 'compute_engine_target_defaults_license_type.dart';
import 'compute_scheduling.dart';
import 'encryption.dart';
import 'network_interface.dart';

/// ComputeEngineTargetDefaults is a collection of details for creating a VM in a target Compute Engine project.
class ComputeEngineTargetDefaults {
  /// Additional licenses to assign to the VM.
  final pulumi.Input<List<String>>? additionalLicenses;
  /// Compute instance scheduling information (if empty default is used).
  final pulumi.Input<ComputeScheduling>? computeScheduling;
  /// The disk type to use in the VM.
  final pulumi.Input<ComputeEngineTargetDefaultsDiskType>? diskType;
  /// Optional. Immutable. The encryption to apply to the VM disks.
  final pulumi.Input<Encryption>? encryption;
  /// The hostname to assign to the VM.
  final pulumi.Input<String>? hostname;
  /// A map of labels to associate with the VM.
  final pulumi.Input<Map<String, String>>? labels;
  /// The license type to use in OS adaptation.
  final pulumi.Input<ComputeEngineTargetDefaultsLicenseType>? licenseType;
  /// The machine type to create the VM with.
  final pulumi.Input<String>? machineType;
  /// The machine type series to create the VM with.
  final pulumi.Input<String>? machineTypeSeries;
  /// The metadata key/value pairs to assign to the VM.
  final pulumi.Input<Map<String, String>>? metadata;
  /// List of NICs connected to this VM.
  final pulumi.Input<List<NetworkInterface>>? networkInterfaces;
  /// A list of network tags to associate with the VM.
  final pulumi.Input<List<String>>? networkTags;
  /// Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  final pulumi.Input<bool>? secureBoot;
  /// The service account to associate the VM with.
  final pulumi.Input<String>? serviceAccount;
  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create this VM.
  final pulumi.Input<String>? targetProject;
  /// The name of the VM to create.
  final pulumi.Input<String>? vmName;
  /// The zone in which to create the VM.
  final pulumi.Input<String>? zone;

  /// Creates a new [ComputeEngineTargetDefaults].
  /// [additionalLicenses] Additional licenses to assign to the VM.
  /// [computeScheduling] Compute instance scheduling information (if empty default is used).
  /// [diskType] The disk type to use in the VM.
  /// [encryption] Optional. Immutable. The encryption to apply to the VM disks.
  /// [hostname] The hostname to assign to the VM.
  /// [labels] A map of labels to associate with the VM.
  /// [licenseType] The license type to use in OS adaptation.
  /// [machineType] The machine type to create the VM with.
  /// [machineTypeSeries] The machine type series to create the VM with.
  /// [metadata] The metadata key/value pairs to assign to the VM.
  /// [networkInterfaces] List of NICs connected to this VM.
  /// [networkTags] A list of network tags to associate with the VM.
  /// [secureBoot] Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  /// [serviceAccount] The service account to associate the VM with.
  /// [targetProject] The full path of the resource of type TargetProject which represents the Compute Engine project in which to create this VM.
  /// [vmName] The name of the VM to create.
  /// [zone] The zone in which to create the VM.
  ComputeEngineTargetDefaults({
    this.additionalLicenses,
    this.computeScheduling,
    this.diskType,
    this.encryption,
    this.hostname,
    this.labels,
    this.licenseType,
    this.machineType,
    this.machineTypeSeries,
    this.metadata,
    this.networkInterfaces,
    this.networkTags,
    this.secureBoot,
    this.serviceAccount,
    this.targetProject,
    this.vmName,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLicenses': ?additionalLicenses,
      'computeScheduling': ?pulumi.Input.mapOptionalInputValue<ComputeScheduling, Map<String, dynamic>>(computeScheduling, (value) => value.toMap()),
      'diskType': ?pulumi.Input.mapOptionalInputValue<ComputeEngineTargetDefaultsDiskType, String>(diskType, (value) => value.value),
      'encryption': ?pulumi.Input.mapOptionalInputValue<Encryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'hostname': ?hostname,
      'labels': ?labels,
      'licenseType': ?pulumi.Input.mapOptionalInputValue<ComputeEngineTargetDefaultsLicenseType, String>(licenseType, (value) => value.value),
      'machineType': ?machineType,
      'machineTypeSeries': ?machineTypeSeries,
      'metadata': ?metadata,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkTags': ?networkTags,
      'secureBoot': ?secureBoot,
      'serviceAccount': ?serviceAccount,
      'targetProject': ?targetProject,
      'vmName': ?vmName,
      'zone': ?zone,
    };
  }

  factory ComputeEngineTargetDefaults.fromMap(Map<String, dynamic> map) {
    return ComputeEngineTargetDefaults(
      additionalLicenses: map['additionalLicenses'] == null ? null : ((map['additionalLicenses']! as List).cast<String>()).input(),
      computeScheduling: map['computeScheduling'] == null ? null : (ComputeScheduling.fromMap((map['computeScheduling']! as Map).cast<String, dynamic>())).input(),
      diskType: map['diskType'] == null ? null : (ComputeEngineTargetDefaultsDiskType.fromValue(map['diskType']! as String)).input(),
      encryption: map['encryption'] == null ? null : (Encryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      licenseType: map['licenseType'] == null ? null : (ComputeEngineTargetDefaultsLicenseType.fromValue(map['licenseType']! as String)).input(),
      machineType: map['machineType'] == null ? null : (map['machineType']! as String).input(),
      machineTypeSeries: map['machineTypeSeries'] == null ? null : (map['machineTypeSeries']! as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata']! as Map).cast<String, String>()).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<NetworkInterface>(map['networkInterfaces']!, (value) => NetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkTags: map['networkTags'] == null ? null : ((map['networkTags']! as List).cast<String>()).input(),
      secureBoot: map['secureBoot'] == null ? null : (map['secureBoot']! as bool).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      targetProject: map['targetProject'] == null ? null : (map['targetProject']! as String).input(),
      vmName: map['vmName'] == null ? null : (map['vmName']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

