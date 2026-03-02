// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Association Subnet.
class AssociationSubnetResponse {
  /// Association ID.
  final pulumi.Input<String> id;

  /// Creates a new [AssociationSubnetResponse].
  /// [id] Association ID.
  AssociationSubnetResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AssociationSubnetResponse.fromMap(Map<String, dynamic> map) {
    return AssociationSubnetResponse(
      id: (map['id'] as String).input(),
    );
  }
}

