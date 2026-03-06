// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties supplied for Subnet
class Subnet {
  /// Resource ID of Virtual Network Subnet
  final pulumi.Input<String> id;

  /// Creates a new [Subnet].
  /// [id] Resource ID of Virtual Network Subnet
  const Subnet({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory Subnet.fromMap(Map<String, dynamic> map) {
    return Subnet(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

