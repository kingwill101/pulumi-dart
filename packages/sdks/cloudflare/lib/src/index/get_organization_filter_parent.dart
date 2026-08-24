// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOrganizationFilterParent {
  /// Filter the list of organizations to the ones that are a sub-organization
  /// of the specified organization.
  final pulumi.Input<String?>? id;

  /// Creates a new [GetOrganizationFilterParent].
  /// [id] Filter the list of organizations to the ones that are a sub-organization
  const GetOrganizationFilterParent({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory GetOrganizationFilterParent.fromMap(Map<String, dynamic> map) {
    return GetOrganizationFilterParent(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
