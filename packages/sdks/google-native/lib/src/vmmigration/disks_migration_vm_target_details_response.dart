// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for the VM created VM as part of disks migration.
class DisksMigrationVmTargetDetailsResponse {
  /// The URI of the Compute Engine VM.
  final pulumi.Input<String> vmUri;

  /// Creates a new [DisksMigrationVmTargetDetailsResponse].
  /// [vmUri] The URI of the Compute Engine VM.
  const DisksMigrationVmTargetDetailsResponse({
    required this.vmUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmUri': vmUri,
    };
  }

  factory DisksMigrationVmTargetDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DisksMigrationVmTargetDetailsResponse(
      vmUri: pulumi.Input.fromValue(map['vmUri'] as String),
    );
  }
}

