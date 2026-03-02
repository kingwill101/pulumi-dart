// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefinitionAuthorization {
  /// The set of role definition ids which define all the permissions that the principal id can assign.
  final pulumi.Input<List<String>>? delegatedRoleDefinitionIds;
  /// The display name of the security group/service principal/user that would be assigned permissions to the projected subscription.
  final pulumi.Input<String>? principalDisplayName;
  /// Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription.
  final pulumi.Input<String> principalId;
  /// The role definition identifier. This role will define the permissions that are granted to the principal. This cannot be an `Owner` role.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [DefinitionAuthorization].
  /// [delegatedRoleDefinitionIds] The set of role definition ids which define all the permissions that the principal id can assign.
  /// [principalDisplayName] The display name of the security group/service principal/user that would be assigned permissions to the projected subscription.
  /// [principalId] Principal ID of the security group/service principal/user that would be assigned permissions to the projected subscription.
  /// [roleDefinitionId] The role definition identifier. This role will define the permissions that are granted to the principal. This cannot be an `Owner` role.
  DefinitionAuthorization({
    this.delegatedRoleDefinitionIds,
    this.principalDisplayName,
    required this.principalId,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delegatedRoleDefinitionIds': ?delegatedRoleDefinitionIds,
      'principalDisplayName': ?principalDisplayName,
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory DefinitionAuthorization.fromMap(Map<String, dynamic> map) {
    return DefinitionAuthorization(
      delegatedRoleDefinitionIds: map['delegatedRoleDefinitionIds'] == null ? null : ((map['delegatedRoleDefinitionIds'] as List).cast<String>()).input(),
      principalDisplayName: map['principalDisplayName'] == null ? null : (map['principalDisplayName'] as String).input(),
      principalId: (map['principalId'] as String).input(),
      roleDefinitionId: (map['roleDefinitionId'] as String).input(),
    );
  }
}

