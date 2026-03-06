// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subnet of container group
class SubnetResponse {
  /// Specifies ARM resource id of the subnet.
  final pulumi.Input<String> id;

  /// Creates a new [SubnetResponse].
  /// [id] Specifies ARM resource id of the subnet.
  const SubnetResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory SubnetResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

