// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'applied_license_response_vmmigration_v1alpha1.dart';
import 'compute_scheduling_response_vmmigration_v1alpha1.dart';
import 'encryption_response_vmmigration_v1alpha1.dart';
import 'network_interface_response_vmmigration_v1alpha1.dart';

/// ComputeEngineTargetDetails is a collection of details for creating a VM in a target Compute Engine project.
class ComputeEngineTargetDetailsResponseVmmigrationV1alpha1 {
  /// Additional licenses to assign to the VM.
  final List<String> additionalLicenses;
  /// The OS license returned from the adaptation module report.
  final AppliedLicenseResponseVmmigrationV1alpha1 appliedLicense;
  /// The VM Boot Option, as set in the source VM.
  final String bootOption;
  /// Compute instance scheduling information (if empty default is used).
  final ComputeSchedulingResponseVmmigrationV1alpha1 computeScheduling;
  /// The disk type to use in the VM.
  final String diskType;
  /// Optional. The encryption to apply to the VM disks.
  final EncryptionResponseVmmigrationV1alpha1 encryption;
  /// The hostname to assign to the VM.
  final String hostname;
  /// A map of labels to associate with the VM.
  final Map<String, String> labels;
  /// The license type to use in OS adaptation.
  final String licenseType;
  /// The machine type to create the VM with.
  final String machineType;
  /// The machine type series to create the VM with.
  final String machineTypeSeries;
  /// The metadata key/value pairs to assign to the VM.
  final Map<String, String> metadata;
  /// List of NICs connected to this VM.
  final List<NetworkInterfaceResponseVmmigrationV1alpha1> networkInterfaces;
  /// A list of network tags to associate with the VM.
  final List<String> networkTags;
  /// The Google Cloud target project ID or project name.
  final String project;
  /// Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  final bool secureBoot;
  /// The service account to associate the VM with.
  final String serviceAccount;
  /// The name of the VM to create.
  final String vmName;
  /// The zone in which to create the VM.
  final String zone;

  /// Creates a new [ComputeEngineTargetDetailsResponseVmmigrationV1alpha1].
  /// [additionalLicenses] Additional licenses to assign to the VM.
  /// [appliedLicense] The OS license returned from the adaptation module report.
  /// [bootOption] The VM Boot Option, as set in the source VM.
  /// [computeScheduling] Compute instance scheduling information (if empty default is used).
  /// [diskType] The disk type to use in the VM.
  /// [encryption] Optional. The encryption to apply to the VM disks.
  /// [hostname] The hostname to assign to the VM.
  /// [labels] A map of labels to associate with the VM.
  /// [licenseType] The license type to use in OS adaptation.
  /// [machineType] The machine type to create the VM with.
  /// [machineTypeSeries] The machine type series to create the VM with.
  /// [metadata] The metadata key/value pairs to assign to the VM.
  /// [networkInterfaces] List of NICs connected to this VM.
  /// [networkTags] A list of network tags to associate with the VM.
  /// [project] The Google Cloud target project ID or project name.
  /// [secureBoot] Defines whether the instance has Secure Boot enabled. This can be set to true only if the VM boot option is EFI.
  /// [serviceAccount] The service account to associate the VM with.
  /// [vmName] The name of the VM to create.
  /// [zone] The zone in which to create the VM.
  ComputeEngineTargetDetailsResponseVmmigrationV1alpha1({
    required this.additionalLicenses,
    required this.appliedLicense,
    required this.bootOption,
    required this.computeScheduling,
    required this.diskType,
    required this.encryption,
    required this.hostname,
    required this.labels,
    required this.licenseType,
    required this.machineType,
    required this.machineTypeSeries,
    required this.metadata,
    required this.networkInterfaces,
    required this.networkTags,
    required this.project,
    required this.secureBoot,
    required this.serviceAccount,
    required this.vmName,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLicenses': additionalLicenses,
      'appliedLicense': appliedLicense.toMap(),
      'bootOption': bootOption,
      'computeScheduling': computeScheduling.toMap(),
      'diskType': diskType,
      'encryption': encryption.toMap(),
      'hostname': hostname,
      'labels': labels,
      'licenseType': licenseType,
      'machineType': machineType,
      'machineTypeSeries': machineTypeSeries,
      'metadata': metadata,
      'networkInterfaces': pulumi.Input.encodeList<NetworkInterfaceResponseVmmigrationV1alpha1, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'networkTags': networkTags,
      'project': project,
      'secureBoot': secureBoot,
      'serviceAccount': serviceAccount,
      'vmName': vmName,
      'zone': zone,
    };
  }

  factory ComputeEngineTargetDetailsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComputeEngineTargetDetailsResponseVmmigrationV1alpha1(
      additionalLicenses: (map['additionalLicenses'] as List).cast<String>(),
      appliedLicense: AppliedLicenseResponseVmmigrationV1alpha1.fromMap((map['appliedLicense'] as Map).cast<String, dynamic>()),
      bootOption: map['bootOption'] as String,
      computeScheduling: ComputeSchedulingResponseVmmigrationV1alpha1.fromMap((map['computeScheduling'] as Map).cast<String, dynamic>()),
      diskType: map['diskType'] as String,
      encryption: EncryptionResponseVmmigrationV1alpha1.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      hostname: map['hostname'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      licenseType: map['licenseType'] as String,
      machineType: map['machineType'] as String,
      machineTypeSeries: map['machineTypeSeries'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      networkInterfaces: pulumi.Input.decodeList<NetworkInterfaceResponseVmmigrationV1alpha1>(map['networkInterfaces'], (value) => NetworkInterfaceResponseVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
      networkTags: (map['networkTags'] as List).cast<String>(),
      project: map['project'] as String,
      secureBoot: map['secureBoot'] as bool,
      serviceAccount: map['serviceAccount'] as String,
      vmName: map['vmName'] as String,
      zone: map['zone'] as String,
    );
  }
}

