// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesDiskMirrorBackingStoreSourceNetworkKnownHosts {
  /// Specifies the path to the file containing known hosts for the network storage.
  final String path;

  /// Creates a new [DomainDevicesDiskMirrorBackingStoreSourceNetworkKnownHosts].
  /// [path] Specifies the path to the file containing known hosts for the network storage.
  DomainDevicesDiskMirrorBackingStoreSourceNetworkKnownHosts({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory DomainDevicesDiskMirrorBackingStoreSourceNetworkKnownHosts.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorBackingStoreSourceNetworkKnownHosts(
      path: map['path'] as String,
    );
  }
}

