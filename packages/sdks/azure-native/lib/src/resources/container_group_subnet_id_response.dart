// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container group subnet information.
class ContainerGroupSubnetIdResponse {
  /// Resource ID of subnet.
  final pulumi.Input<String> id;
  /// Friendly name for the subnet.
  final pulumi.Input<String>? name;

  /// Creates a new [ContainerGroupSubnetIdResponse].
  /// [id] Resource ID of subnet.
  /// [name] Friendly name for the subnet.
  ContainerGroupSubnetIdResponse({
    required this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': ?name,
    };
  }

  factory ContainerGroupSubnetIdResponse.fromMap(Map<String, dynamic> map) {
    return ContainerGroupSubnetIdResponse(
      id: (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

