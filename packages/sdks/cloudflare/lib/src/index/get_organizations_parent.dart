// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationsParent {
  /// Filter the list of organizations to the ones that are a sub-organization
  /// of the specified organization.
  final pulumi.Input<String> id;

  /// Creates a new [GetOrganizationsParent].
  /// [id] Filter the list of organizations to the ones that are a sub-organization
  const GetOrganizationsParent({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetOrganizationsParent.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsParent(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
