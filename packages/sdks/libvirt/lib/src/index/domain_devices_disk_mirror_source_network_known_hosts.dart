// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceNetworkKnownHosts {
  /// Specifies the path to the file containing known hosts for the network storage.
  final pulumi.Input<String> path;

  /// Creates a new [DomainDevicesDiskMirrorSourceNetworkKnownHosts].
  /// [path] Specifies the path to the file containing known hosts for the network storage.
  const DomainDevicesDiskMirrorSourceNetworkKnownHosts({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory DomainDevicesDiskMirrorSourceNetworkKnownHosts.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceNetworkKnownHosts(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

