// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subnet of container group
class Subnet {
  /// Specifies ARM resource id of the subnet.
  final pulumi.Input<String> id;

  /// Creates a new [Subnet].
  /// [id] Specifies ARM resource id of the subnet.
  Subnet({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory Subnet.fromMap(Map<String, dynamic> map) {
    return Subnet(id: pulumi.Input.fromValue(map['id'] as String));
  }
}
