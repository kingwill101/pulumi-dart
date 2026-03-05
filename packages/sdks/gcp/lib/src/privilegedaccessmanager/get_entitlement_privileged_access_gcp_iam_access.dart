// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlement_privileged_access_gcp_iam_access_role_binding.dart';

class GetEntitlementPrivilegedAccessGcpIamAccess {
  /// Name of the resource.
  final pulumi.Input<String> resource;
  /// The type of this resource.
  final pulumi.Input<String> resourceType;
  /// Role bindings to be created on successful grant.
  final pulumi.Input<List<GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding>> roleBindings;

  /// Creates a new [GetEntitlementPrivilegedAccessGcpIamAccess].
  /// [resource] Name of the resource.
  /// [resourceType] The type of this resource.
  /// [roleBindings] Role bindings to be created on successful grant.
  GetEntitlementPrivilegedAccessGcpIamAccess({
    required this.resource,
    required this.resourceType,
    required this.roleBindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': resource,
      'resourceType': resourceType,
      'roleBindings': pulumi.Input.mapInputValue<List<GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding>, List<Map<String, dynamic>>>(roleBindings, (value) => pulumi.Input.encodeList<GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetEntitlementPrivilegedAccessGcpIamAccess.fromMap(Map<String, dynamic> map) {
    return GetEntitlementPrivilegedAccessGcpIamAccess(
      resource: pulumi.Input.fromValue(map['resource'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      roleBindings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding>(map['roleBindings']!, (value) => GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

