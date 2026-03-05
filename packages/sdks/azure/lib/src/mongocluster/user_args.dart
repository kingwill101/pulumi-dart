// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_role.dart';

/// {@template pulumi_mongocluster_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_mongocluster_user_user_args_doc}
class UserArgs {
  /// The identity provider type for the Mongo Cluster User. The only possible value is `MicrosoftEntraID`. Changing this forces a new resource to be created.
  final pulumi.Input<String> identityProviderType;
  /// The ID of the Mongo Cluster where the User should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> mongoClusterId;
  /// The Object ID of the Entra ID User or Service Principal. Changing this forces a new resource to be created.
  final pulumi.Input<String> objectId;
  /// The principal type for the Mongo Cluster User. Possible values are `user` and `servicePrincipal`. Changing this forces a new resource to be created.
  final pulumi.Input<String> principalType;
  /// One or more `role` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<UserRole>> roles;

  /// Creates a new [UserArgs].
  /// [identityProviderType] The identity provider type for the Mongo Cluster User. The only possible value is `MicrosoftEntraID`. Changing this forces a new resource to be created.
  /// [mongoClusterId] The ID of the Mongo Cluster where the User should exist. Changing this forces a new resource to be created.
  /// [objectId] The Object ID of the Entra ID User or Service Principal. Changing this forces a new resource to be created.
  /// [principalType] The principal type for the Mongo Cluster User. Possible values are `user` and `servicePrincipal`. Changing this forces a new resource to be created.
  /// [roles] One or more `role` blocks as defined below. Changing this forces a new resource to be created.
  UserArgs({
    required this.identityProviderType,
    required this.mongoClusterId,
    required this.objectId,
    required this.principalType,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProviderType': identityProviderType,
      'mongoClusterId': mongoClusterId,
      'objectId': objectId,
      'principalType': principalType,
      'roles': pulumi.Input.mapInputValue<List<UserRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<UserRole, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      identityProviderType: pulumi.Input.fromValue(map['identityProviderType'] as String),
      mongoClusterId: pulumi.Input.fromValue(map['mongoClusterId'] as String),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
      roles: pulumi.Input.fromValue(pulumi.Input.decodeList<UserRole>(map['roles']!, (value) => UserRole.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

