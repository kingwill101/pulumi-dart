// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Managed Disk to attach to the Disk Pool.
class Disk {
  /// Unique Azure Resource ID of the Managed Disk.
  final pulumi.Input<String> id;

  /// Creates a new [Disk].
  /// [id] Unique Azure Resource ID of the Managed Disk.
  const Disk({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory Disk.fromMap(Map<String, dynamic> map) {
    return Disk(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
