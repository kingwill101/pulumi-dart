// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskBackingStoreSourceNetworkSnapshot {
  /// Configures the name attribute for the snapshot used in network storage operations.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceNetworkSnapshot].
  /// [name] Configures the name attribute for the snapshot used in network storage operations.
  const DomainDevicesDiskBackingStoreSourceNetworkSnapshot({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceNetworkSnapshot.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceNetworkSnapshot(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

