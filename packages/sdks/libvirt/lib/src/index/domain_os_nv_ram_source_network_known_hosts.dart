// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceNetworkKnownHosts {
  /// Specifies the path to the file containing known hosts for the network storage.
  final pulumi.Input<String> path;

  /// Creates a new [DomainOsNvRamSourceNetworkKnownHosts].
  /// [path] Specifies the path to the file containing known hosts for the network storage.
  DomainOsNvRamSourceNetworkKnownHosts({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory DomainOsNvRamSourceNetworkKnownHosts.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceNetworkKnownHosts(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

