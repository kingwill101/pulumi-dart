// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_capabilities_response.dart';
import 'vmware_disk_details_response.dart';

/// Represent the source Vmware VM details.
class VmwareSourceVmDetailsResponse {
  /// The total size of the disks being migrated in bytes.
  final pulumi.Input<String> committedStorageBytes;
  /// The disks attached to the source VM.
  final pulumi.Input<List<VmwareDiskDetailsResponse>> disks;
  /// The firmware type of the source VM.
  final pulumi.Input<String> firmware;
  /// Information about VM capabilities needed for some Compute Engine features.
  final pulumi.Input<VmCapabilitiesResponse> vmCapabilitiesInfo;

  /// Creates a new [VmwareSourceVmDetailsResponse].
  /// [committedStorageBytes] The total size of the disks being migrated in bytes.
  /// [disks] The disks attached to the source VM.
  /// [firmware] The firmware type of the source VM.
  /// [vmCapabilitiesInfo] Information about VM capabilities needed for some Compute Engine features.
  VmwareSourceVmDetailsResponse({
    required this.committedStorageBytes,
    required this.disks,
    required this.firmware,
    required this.vmCapabilitiesInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'committedStorageBytes': committedStorageBytes,
      'disks': pulumi.Input.mapInputValue<List<VmwareDiskDetailsResponse>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<VmwareDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firmware': firmware,
      'vmCapabilitiesInfo': pulumi.Input.mapInputValue<VmCapabilitiesResponse, Map<String, dynamic>>(vmCapabilitiesInfo, (value) => value.toMap()),
    };
  }

  factory VmwareSourceVmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VmwareSourceVmDetailsResponse(
      committedStorageBytes: (map['committedStorageBytes'] as String).input(),
      disks: (pulumi.Input.decodeList<VmwareDiskDetailsResponse>(map['disks'], (value) => VmwareDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      firmware: (map['firmware'] as String).input(),
      vmCapabilitiesInfo: (VmCapabilitiesResponse.fromMap((map['vmCapabilitiesInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

