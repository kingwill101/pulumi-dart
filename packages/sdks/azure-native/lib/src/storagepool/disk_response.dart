// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Managed Disk to attach to the Disk Pool.
class DiskResponse {
  /// Unique Azure Resource ID of the Managed Disk.
  final pulumi.Input<String> id;

  /// Creates a new [DiskResponse].
  /// [id] Unique Azure Resource ID of the Managed Disk.
  const DiskResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory DiskResponse.fromMap(Map<String, dynamic> map) {
    return DiskResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
