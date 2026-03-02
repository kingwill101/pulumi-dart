// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container group subnet information.
class ContainerGroupSubnetId {
  /// Resource ID of subnet.
  final pulumi.Input<String> id;
  /// Friendly name for the subnet.
  final pulumi.Input<String>? name;

  /// Creates a new [ContainerGroupSubnetId].
  /// [id] Resource ID of subnet.
  /// [name] Friendly name for the subnet.
  ContainerGroupSubnetId({
    required this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': ?name,
    };
  }

  factory ContainerGroupSubnetId.fromMap(Map<String, dynamic> map) {
    return ContainerGroupSubnetId(
      id: (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

