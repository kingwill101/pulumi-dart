// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_disk_details_response_vmmigration_v1alpha1.dart';
import 'vm_capabilities_response_vmmigration_v1alpha1.dart';

/// Represent the source Azure VM details.
class AzureSourceVmDetailsResponseVmmigrationV1alpha1 {
  /// The total size of the disks being migrated in bytes.
  final pulumi.Input<String> committedStorageBytes;
  /// The disks attached to the source VM.
  final pulumi.Input<List<AzureDiskDetailsResponseVmmigrationV1alpha1>> disks;
  /// The firmware type of the source VM.
  final pulumi.Input<String> firmware;
  /// Information about VM capabilities needed for some Compute Engine features.
  final pulumi.Input<VmCapabilitiesResponseVmmigrationV1alpha1> vmCapabilitiesInfo;

  /// Creates a new [AzureSourceVmDetailsResponseVmmigrationV1alpha1].
  /// [committedStorageBytes] The total size of the disks being migrated in bytes.
  /// [disks] The disks attached to the source VM.
  /// [firmware] The firmware type of the source VM.
  /// [vmCapabilitiesInfo] Information about VM capabilities needed for some Compute Engine features.
  AzureSourceVmDetailsResponseVmmigrationV1alpha1({
    required this.committedStorageBytes,
    required this.disks,
    required this.firmware,
    required this.vmCapabilitiesInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'committedStorageBytes': committedStorageBytes,
      'disks': pulumi.Input.mapInputValue<List<AzureDiskDetailsResponseVmmigrationV1alpha1>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<AzureDiskDetailsResponseVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firmware': firmware,
      'vmCapabilitiesInfo': pulumi.Input.mapInputValue<VmCapabilitiesResponseVmmigrationV1alpha1, Map<String, dynamic>>(vmCapabilitiesInfo, (value) => value.toMap()),
    };
  }

  factory AzureSourceVmDetailsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return AzureSourceVmDetailsResponseVmmigrationV1alpha1(
      committedStorageBytes: (map['committedStorageBytes'] as String).input(),
      disks: (pulumi.Input.decodeList<AzureDiskDetailsResponseVmmigrationV1alpha1>(map['disks'], (value) => AzureDiskDetailsResponseVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      firmware: (map['firmware'] as String).input(),
      vmCapabilitiesInfo: (VmCapabilitiesResponseVmmigrationV1alpha1.fromMap((map['vmCapabilitiesInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

