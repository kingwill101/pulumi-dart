// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_disk_details_response.dart';
import 'vm_capabilities_response.dart';

/// Represent the source AWS VM details.
class AwsSourceVmDetailsResponse {
  /// The total size of the disks being migrated in bytes.
  final String committedStorageBytes;
  /// The disks attached to the source VM.
  final List<AwsDiskDetailsResponse> disks;
  /// The firmware type of the source VM.
  final String firmware;
  /// Information about VM capabilities needed for some Compute Engine features.
  final VmCapabilitiesResponse vmCapabilitiesInfo;

  /// Creates a new [AwsSourceVmDetailsResponse].
  /// [committedStorageBytes] The total size of the disks being migrated in bytes.
  /// [disks] The disks attached to the source VM.
  /// [firmware] The firmware type of the source VM.
  /// [vmCapabilitiesInfo] Information about VM capabilities needed for some Compute Engine features.
  AwsSourceVmDetailsResponse({
    required this.committedStorageBytes,
    required this.disks,
    required this.firmware,
    required this.vmCapabilitiesInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'committedStorageBytes': committedStorageBytes,
      'disks': pulumi.Input.encodeList<AwsDiskDetailsResponse, Map<String, dynamic>>(disks, (value) => value.toMap()),
      'firmware': firmware,
      'vmCapabilitiesInfo': vmCapabilitiesInfo.toMap(),
    };
  }

  factory AwsSourceVmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AwsSourceVmDetailsResponse(
      committedStorageBytes: map['committedStorageBytes'] as String,
      disks: pulumi.Input.decodeList<AwsDiskDetailsResponse>(map['disks'], (value) => AwsDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      firmware: map['firmware'] as String,
      vmCapabilitiesInfo: VmCapabilitiesResponse.fromMap((map['vmCapabilitiesInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

