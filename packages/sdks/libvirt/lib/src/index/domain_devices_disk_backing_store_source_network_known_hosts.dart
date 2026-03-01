// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskBackingStoreSourceNetworkKnownHosts {
  /// Specifies the path to the file containing known hosts for the network storage.
  final String path;

  /// Creates a new [DomainDevicesDiskBackingStoreSourceNetworkKnownHosts].
  /// [path] Specifies the path to the file containing known hosts for the network storage.
  DomainDevicesDiskBackingStoreSourceNetworkKnownHosts({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory DomainDevicesDiskBackingStoreSourceNetworkKnownHosts.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskBackingStoreSourceNetworkKnownHosts(
      path: map['path'] as String,
    );
  }
}

