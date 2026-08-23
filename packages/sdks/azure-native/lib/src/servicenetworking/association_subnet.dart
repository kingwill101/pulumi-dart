// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Association Subnet.
class AssociationSubnet {
  /// Association ID.
  final pulumi.Input<String> id;

  /// Creates a new [AssociationSubnet].
  /// [id] Association ID.
  const AssociationSubnet({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AssociationSubnet.fromMap(Map<String, dynamic> map) {
    return AssociationSubnet(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
