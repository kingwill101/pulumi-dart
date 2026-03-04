// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details for the VM created VM as part of disks migration.
class DisksMigrationVmTargetDetailsResponseVmmigrationV1alpha1 {
  /// The URI of the Compute Engine VM.
  final pulumi.Input<String> vmUri;

  /// Creates a new [DisksMigrationVmTargetDetailsResponseVmmigrationV1alpha1].
  /// [vmUri] The URI of the Compute Engine VM.
  DisksMigrationVmTargetDetailsResponseVmmigrationV1alpha1({
    required this.vmUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vmUri': vmUri};
  }

  factory DisksMigrationVmTargetDetailsResponseVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DisksMigrationVmTargetDetailsResponseVmmigrationV1alpha1(
      vmUri: pulumi.Input.fromValue(map['vmUri'] as String),
    );
  }
}
