// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationParent {
  final pulumi.Input<String> id;

  /// Creates a new [OrganizationParent].
  /// [id] Required.
  const OrganizationParent({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory OrganizationParent.fromMap(Map<String, dynamic> map) {
    return OrganizationParent(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
