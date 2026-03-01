// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorBackingStoreSourceNetworkSnapshot {
  /// Configures the name attribute for the snapshot used in network storage operations.
  final String name;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceNetworkSnapshot].
  /// [name] Configures the name attribute for the snapshot used in network storage operations.
  DomainDevicesDiskMirrorBackingStoreSourceNetworkSnapshot({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceNetworkSnapshot.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceNetworkSnapshot(
      name: map['name'] as String,
    );
  }
}

