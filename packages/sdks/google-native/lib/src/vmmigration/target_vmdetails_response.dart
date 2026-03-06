// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'applied_license_response_vmmigration_v1alpha1.dart';
import 'compute_scheduling_response_vmmigration_v1alpha1.dart';
import 'network_interface_response_vmmigration_v1alpha1.dart';

/// TargetVMDetails is a collection of details for creating a VM in a target Compute Engine project.
class TargetVMDetailsResponse {
  /// The OS license returned from the adaptation module report.
  final pulumi.Input<AppliedLicenseResponseVmmigrationV1alpha1> appliedLicense;
  /// The VM Boot Option, as set in the source VM.
  final pulumi.Input<String> bootOption;
  /// Compute instance scheduling information (if empty default is used).
  final pulumi.Input<ComputeSchedulingResponseVmmigrationV1alpha1> computeScheduling;
  /// The disk type to use in the VM.
  final pulumi.Input<String> diskType;
  /// The external IP to define in the VM.
  final pulumi.Input<String> externalIp;
  /// The internal IP to define in the VM. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  final pulumi.Input<String> internalIp;
  /// A map of labels to associate with the VM.
  final pulumi.Input<Map<String, String>> labels;
  /// The license type to use in OS adaptation.
  final pulumi.Input<String> licenseType;
  /// The machine type to create the VM with.
  final pulumi.Input<String> machineType;
  /// The machine type series to create the VM with.
  final pulumi.Input<String> machineTypeSeries;
  /// The metadata key/value pairs to assign to the VM.
  final pulumi.Input<Map<String, String>> metadata;
  /// The name of the VM to create.
  final pulumi.Input<String> name;
  /// The network to connect the VM to.
  final pulumi.Input<String> network;
  /// List of NICs connected to this VM.
  final pulumi.Input<List<NetworkInterfaceResponseVmmigrationV1alpha1>> networkInterfaces;
  /// A list of network tags to associate with the VM.
  final pulumi.Input<List<String>> networkTags;
  /// The project in which to create the VM.
  final pulumi.Input<String> project;
  /// Defines whether the instance has Secure Boot enabled. This can be set to true only if the vm boot option is EFI.
  final pulumi.Input<bool> secureBoot;
  /// The service account to associate the VM with.
  final pulumi.Input<String> serviceAccount;
  /// The subnetwork to connect the VM to.
  final pulumi.Input<String> subnetwork;
  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create this VM.
  final pulumi.Input<String> targetProject;
  /// The zone in which to create the VM.
  final pulumi.Input<String> zone;

  /// Creates a new [TargetVMDetailsResponse].
  /// [appliedLicense] The OS license returned from the adaptation module report.
  /// [bootOption] The VM Boot Option, as set in the source VM.
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
  /// [project] The project in which to create the VM.
  /// [secureBoot] Defines whether the instance has Secure Boot enabled. This can be set to true only if the vm boot option is EFI.
  /// [serviceAccount] The service account to associate the VM with.
  /// [subnetwork] The subnetwork to connect the VM to.
  /// [targetProject] The full path of the resource of type TargetProject which represents the Compute Engine project in which to create this VM.
  /// [zone] The zone in which to create the VM.
  const TargetVMDetailsResponse({
    required this.appliedLicense,
    required this.bootOption,
    required this.computeScheduling,
    required this.diskType,
    required this.externalIp,
    required this.internalIp,
    required this.labels,
    required this.licenseType,
    required this.machineType,
    required this.machineTypeSeries,
    required this.metadata,
    required this.name,
    required this.network,
    required this.networkInterfaces,
    required this.networkTags,
    required this.project,
    required this.secureBoot,
    required this.serviceAccount,
    required this.subnetwork,
    required this.targetProject,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedLicense': pulumi.Input.mapInputValue<AppliedLicenseResponseVmmigrationV1alpha1, Map<String, dynamic>>(appliedLicense, (value) => value.toMap()),
      'bootOption': bootOption,
      'computeScheduling': pulumi.Input.mapInputValue<ComputeSchedulingResponseVmmigrationV1alpha1, Map<String, dynamic>>(computeScheduling, (value) => value.toMap()),
      'diskType': diskType,
      'externalIp': externalIp,
      'internalIp': internalIp,
      'labels': labels,
      'licenseType': licenseType,
      'machineType': machineType,
      'machineTypeSeries': machineTypeSeries,
      'metadata': metadata,
      'name': name,
      'network': network,
      'networkInterfaces': pulumi.Input.mapInputValue<List<NetworkInterfaceResponseVmmigrationV1alpha1>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceResponseVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkTags': networkTags,
      'project': project,
      'secureBoot': secureBoot,
      'serviceAccount': serviceAccount,
      'subnetwork': subnetwork,
      'targetProject': targetProject,
      'zone': zone,
    };
  }

  factory TargetVMDetailsResponse.fromMap(Map<String, dynamic> map) {
    return TargetVMDetailsResponse(
      appliedLicense: pulumi.Input.fromValue(AppliedLicenseResponseVmmigrationV1alpha1.fromMap((map['appliedLicense']! as Map).cast<String, dynamic>())),
      bootOption: pulumi.Input.fromValue(map['bootOption'] as String),
      computeScheduling: pulumi.Input.fromValue(ComputeSchedulingResponseVmmigrationV1alpha1.fromMap((map['computeScheduling']! as Map).cast<String, dynamic>())),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      externalIp: pulumi.Input.fromValue(map['externalIp'] as String),
      internalIp: pulumi.Input.fromValue(map['internalIp'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      licenseType: pulumi.Input.fromValue(map['licenseType'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      machineTypeSeries: pulumi.Input.fromValue(map['machineTypeSeries'] as String),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      networkInterfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceResponseVmmigrationV1alpha1>(map['networkInterfaces']!, (value) => NetworkInterfaceResponseVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      networkTags: pulumi.Input.fromValue((map['networkTags'] as List).cast<String>()),
      project: pulumi.Input.fromValue(map['project'] as String),
      secureBoot: pulumi.Input.fromValue(map['secureBoot'] as bool),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      subnetwork: pulumi.Input.fromValue(map['subnetwork'] as String),
      targetProject: pulumi.Input.fromValue(map['targetProject'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

