// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A node-attached disk resource. Next ID: 8;
class AttachedDiskResponse {
  /// The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
  final pulumi.Input<String> mode;
  /// Specifies the full path to an existing disk. For example: "projects/my-project/zones/us-central1-c/disks/my-disk".
  final pulumi.Input<String> sourceDisk;

  /// Creates a new [AttachedDiskResponse].
  /// [mode] The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
  /// [sourceDisk] Specifies the full path to an existing disk. For example: "projects/my-project/zones/us-central1-c/disks/my-disk".
  const AttachedDiskResponse({
    required this.mode,
    required this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'sourceDisk': sourceDisk,
    };
  }

  factory AttachedDiskResponse.fromMap(Map<String, dynamic> map) {
    return AttachedDiskResponse(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      sourceDisk: pulumi.Input.fromValue(map['sourceDisk'] as String),
    );
  }
}

