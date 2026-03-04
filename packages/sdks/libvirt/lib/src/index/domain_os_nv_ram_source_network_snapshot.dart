// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceNetworkSnapshot {
  /// Configures the name attribute for the snapshot used in network storage operations.
  final pulumi.Input<String> name;

  /// Creates a new [DomainOsNvRamSourceNetworkSnapshot].
  /// [name] Configures the name attribute for the snapshot used in network storage operations.
  DomainOsNvRamSourceNetworkSnapshot({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory DomainOsNvRamSourceNetworkSnapshot.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceNetworkSnapshot(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
