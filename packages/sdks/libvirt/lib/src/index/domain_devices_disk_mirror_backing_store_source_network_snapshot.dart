// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorBackingStoreSourceNetworkSnapshot {
  /// Configures the name attribute for the snapshot used in network storage operations.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceNetworkSnapshot].
  /// [name] Configures the name attribute for the snapshot used in network storage operations.
  const DomainDevicesDiskMirrorBackingStoreSourceNetworkSnapshot({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceNetworkSnapshot.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceNetworkSnapshot(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
