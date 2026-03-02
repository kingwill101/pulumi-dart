// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_scheduling_vmmigration_v1alpha1.dart';
import 'network_interface_vmmigration_v1alpha1.dart';
import 'target_vmdetails_disk_type.dart';
import 'target_vmdetails_license_type.dart';

/// TargetVMDetails is a collection of details for creating a VM in a target Compute Engine project.
class TargetVMDetails {
  /// Compute instance scheduling information (if empty default is used).
  final pulumi.Input<ComputeSchedulingVmmigrationV1alpha1>? computeScheduling;
  /// The disk type to use in the VM.
  final pulumi.Input<TargetVMDetailsDiskType>? diskType;
  /// The external IP to define in the VM.
  final pulumi.Input<String>? externalIp;
  /// The internal IP to define in the VM. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  final pulumi.Input<String>? internalIp;
  /// A map of labels to associate with the VM.
  final pulumi.Input<Map<String, String>>? labels;
  /// The license type to use in OS adaptation.
  final pulumi.Input<TargetVMDetailsLicenseType>? licenseType;
  /// The machine type to create the VM with.
  final pulumi.Input<String>? machineType;
  /// The machine type series to create the VM with.
  final pulumi.Input<String>? machineTypeSeries;
  /// The metadata key/value pairs to assign to the VM.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the VM to create.
  final pulumi.Input<String>? name;
  /// The network to connect the VM to.
  final pulumi.Input<String>? network;
  /// List of NICs connected to this VM.
  final pulumi.Input<List<NetworkInterfaceVmmigrationV1alpha1>>? networkInterfaces;
  /// A list of network tags to associate with the VM.
  final pulumi.Input<List<String>>? networkTags;
  /// Defines whether the instance has Secure Boot enabled. This can be set to true only if the vm boot option is EFI.
  final pulumi.Input<bool>? secureBoot;
  /// The service account to associate the VM with.
  final pulumi.Input<String>? serviceAccount;
  /// The subnetwork to connect the VM to.
  final pulumi.Input<String>? subnetwork;
  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create this VM.
  final pulumi.Input<String>? targetProject;
  /// The zone in which to create the VM.
  final pulumi.Input<String>? zone;

  /// Creates a new [TargetVMDetails].
  /// [computeScheduling] Compute instance scheduling information (if empty default is used).
  /// [diskType] The disk type to use in the VM.
  /// [externalIp] The external IP to define in the VM.
  /// [internalIp] The internal IP to define in the VM. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  /// [labels] A map of labels to associate with the VM.
  /// [licenseType] The license type to use in OS adaptation.
  /// [machineType] The machine type to create the VM with.
  /// [machineTypeSeries] The machine type series to create the VM with.
  /// [metadata] The metadata key/value pairs to assign to the VM.
  /// [name] The name of the VM to create.
  /// [network] The network to connect the VM to.
  /// [networkInterfaces] List of NICs connected to this VM.
  /// [networkTags] A list of network tags to associate with the VM.
  /// [secureBoot] Defines whether the instance has Secure Boot enabled. This can be set to true only if the vm boot option is EFI.
  /// [serviceAccount] The service account to associate the VM with.
  /// [subnetwork] The subnetwork to connect the VM to.
  /// [targetProject] The full path of the resource of type TargetProject which represents the Compute Engine project in which to create this VM.
  /// [zone] The zone in which to create the VM.
  TargetVMDetails({
    this.computeScheduling,
    this.diskType,
    this.externalIp,
    this.internalIp,
    this.labels,
    this.licenseType,
    this.machineType,
    this.machineTypeSeries,
    this.metadata,
    this.name,
    this.network,
    this.networkInterfaces,
    this.networkTags,
    this.secureBoot,
    this.serviceAccount,
    this.subnetwork,
    this.targetProject,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeScheduling': ?pulumi.Input.mapOptionalInputValue<ComputeSchedulingVmmigrationV1alpha1, Map<String, dynamic>>(computeScheduling, (value) => value.toMap()),
      'diskType': ?pulumi.Input.mapOptionalInputValue<TargetVMDetailsDiskType, String>(diskType, (value) => value.value),
      'externalIp': ?externalIp,
      'internalIp': ?internalIp,
      'labels': ?labels,
      'licenseType': ?pulumi.Input.mapOptionalInputValue<TargetVMDetailsLicenseType, String>(licenseType, (value) => value.value),
      'machineType': ?machineType,
      'machineTypeSeries': ?machineTypeSeries,
      'metadata': ?metadata,
      'name': ?name,
      'network': ?network,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceVmmigrationV1alpha1>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkTags': ?networkTags,
      'secureBoot': ?secureBoot,
      'serviceAccount': ?serviceAccount,
      'subnetwork': ?subnetwork,
      'targetProject': ?targetProject,
      'zone': ?zone,
    };
  }

  factory TargetVMDetails.fromMap(Map<String, dynamic> map) {
    return TargetVMDetails(
      computeScheduling: map['computeScheduling'] == null ? null : (ComputeSchedulingVmmigrationV1alpha1.fromMap((map['computeScheduling'] as Map).cast<String, dynamic>())).input(),
      diskType: map['diskType'] == null ? null : (TargetVMDetailsDiskType.fromValue(map['diskType'] as String)).input(),
      externalIp: map['externalIp'] == null ? null : (map['externalIp'] as String).input(),
      internalIp: map['internalIp'] == null ? null : (map['internalIp'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      licenseType: map['licenseType'] == null ? null : (TargetVMDetailsLicenseType.fromValue(map['licenseType'] as String)).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      machineTypeSeries: map['machineTypeSeries'] == null ? null : (map['machineTypeSeries'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<NetworkInterfaceVmmigrationV1alpha1>(map['networkInterfaces'], (value) => NetworkInterfaceVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      networkTags: map['networkTags'] == null ? null : ((map['networkTags'] as List).cast<String>()).input(),
      secureBoot: map['secureBoot'] == null ? null : (map['secureBoot'] as bool).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount'] as String).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork'] as String).input(),
      targetProject: map['targetProject'] == null ? null : (map['targetProject'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

