// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_disk_details_response.dart';
import 'vm_capabilities_response.dart';

/// Represent the source Azure VM details.
class AzureSourceVmDetailsResponse {
  /// The total size of the disks being migrated in bytes.
  final pulumi.Input<String> committedStorageBytes;
  /// The disks attached to the source VM.
  final pulumi.Input<List<AzureDiskDetailsResponse>> disks;
  /// The firmware type of the source VM.
  final pulumi.Input<String> firmware;
  /// Information about VM capabilities needed for some Compute Engine features.
  final pulumi.Input<VmCapabilitiesResponse> vmCapabilitiesInfo;

  /// Creates a new [AzureSourceVmDetailsResponse].
  /// [committedStorageBytes] The total size of the disks being migrated in bytes.
  /// [disks] The disks attached to the source VM.
  /// [firmware] The firmware type of the source VM.
  /// [vmCapabilitiesInfo] Information about VM capabilities needed for some Compute Engine features.
  AzureSourceVmDetailsResponse({
    required this.committedStorageBytes,
    required this.disks,
    required this.firmware,
    required this.vmCapabilitiesInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'committedStorageBytes': committedStorageBytes,
      'disks': pulumi.Input.mapInputValue<List<AzureDiskDetailsResponse>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<AzureDiskDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firmware': firmware,
      'vmCapabilitiesInfo': pulumi.Input.mapInputValue<VmCapabilitiesResponse, Map<String, dynamic>>(vmCapabilitiesInfo, (value) => value.toMap()),
    };
  }

  factory AzureSourceVmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureSourceVmDetailsResponse(
      committedStorageBytes: (map['committedStorageBytes'] as String).input(),
      disks: (pulumi.Input.decodeList<AzureDiskDetailsResponse>(map['disks'], (value) => AzureDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      firmware: (map['firmware'] as String).input(),
      vmCapabilitiesInfo: (VmCapabilitiesResponse.fromMap((map['vmCapabilitiesInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

