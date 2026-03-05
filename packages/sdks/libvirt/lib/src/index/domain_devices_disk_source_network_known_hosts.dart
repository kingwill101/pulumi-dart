// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceNetworkKnownHosts {
  /// Specifies the path to the file containing known hosts for the network storage.
  final pulumi.Input<String> path;

  /// Creates a new [DomainDevicesDiskSourceNetworkKnownHosts].
  /// [path] Specifies the path to the file containing known hosts for the network storage.
  DomainDevicesDiskSourceNetworkKnownHosts({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory DomainDevicesDiskSourceNetworkKnownHosts.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceNetworkKnownHosts(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

