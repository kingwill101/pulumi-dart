// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskSourceNetworkSnapshot {
  /// Configures the name attribute for the snapshot used in network storage operations.
  final pulumi.Input<String> name;

  /// Creates a new [DomainDevicesDiskSourceNetworkSnapshot].
  /// [name] Configures the name attribute for the snapshot used in network storage operations.
  const DomainDevicesDiskSourceNetworkSnapshot({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesDiskSourceNetworkSnapshot.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskSourceNetworkSnapshot(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

