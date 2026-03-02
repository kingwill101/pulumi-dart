// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessPackageCatalogRoleAssignment resources.
class AccessPackageCatalogRoleAssignmentState {
  /// The ID of the Catalog this role assignment will be scoped to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? catalogId;
  /// The object ID of the principal for you want to create a role assignment. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalObjectId;
  /// The object ID of the catalog role you want to assign. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleId;

  /// Creates a new [AccessPackageCatalogRoleAssignmentState].
  /// [catalogId] The ID of the Catalog this role assignment will be scoped to. Changing this forces a new resource to be created.
  /// [principalObjectId] The object ID of the principal for you want to create a role assignment. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  /// [roleId] The object ID of the catalog role you want to assign. Changing this forces a new resource to be created.
  AccessPackageCatalogRoleAssignmentState({
    this.catalogId,
    this.principalObjectId,
    this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'principalObjectId': ?principalObjectId,
      'roleId': ?roleId,
    };
  }

  factory AccessPackageCatalogRoleAssignmentState.fromMap(Map<String, dynamic> map) {
    return AccessPackageCatalogRoleAssignmentState(
      catalogId: map['catalogId'] == null ? null : (map['catalogId'] as String).input(),
      principalObjectId: map['principalObjectId'] == null ? null : (map['principalObjectId'] as String).input(),
      roleId: map['roleId'] == null ? null : (map['roleId'] as String).input(),
    );
  }
}

