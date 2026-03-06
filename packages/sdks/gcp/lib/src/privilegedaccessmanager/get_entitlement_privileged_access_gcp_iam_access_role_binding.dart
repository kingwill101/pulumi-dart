// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding {
  /// The expression field of the IAM condition to be associated with the role. If specified, a user with an active grant for this entitlement would be able to access the resource only if this condition evaluates to true for their request.
  /// https://cloud.google.com/iam/docs/conditions-overview#attributes.
  final pulumi.Input<String> conditionExpression;
  /// Output Only. The ID corresponding to this role binding in the policy binding. This will be unique within an entitlement across time. Gets re-generated each time the entitlement is updated.
  final pulumi.Input<String> id;
  /// IAM role to be granted. https://cloud.google.com/iam/docs/roles-overview.
  final pulumi.Input<String> role;

  /// Creates a new [GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding].
  /// [conditionExpression] The expression field of the IAM condition to be associated with the role. If specified, a user with an active grant for this entitlement would be able to access the resource only if this condition evaluates to true for their request.
  /// [id] Output Only. The ID corresponding to this role binding in the policy binding. This will be unique within an entitlement across time. Gets re-generated each time the entitlement is updated.
  /// [role] IAM role to be granted. https://cloud.google.com/iam/docs/roles-overview.
  const GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding({
    required this.conditionExpression,
    required this.id,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionExpression': conditionExpression,
      'id': id,
      'role': role,
    };
  }

  factory GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding.fromMap(Map<String, dynamic> map) {
    return GetEntitlementPrivilegedAccessGcpIamAccessRoleBinding(
      conditionExpression: pulumi.Input.fromValue(map['conditionExpression'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

