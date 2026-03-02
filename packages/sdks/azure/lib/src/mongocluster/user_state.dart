// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_role.dart';

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// The identity provider type for the Mongo Cluster User. The only possible value is `MicrosoftEntraID`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? identityProviderType;
  /// The ID of the Mongo Cluster where the User should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mongoClusterId;
  /// The Object ID of the Entra ID User or Service Principal. Changing this forces a new resource to be created.
  final pulumi.Input<String>? objectId;
  /// The principal type for the Mongo Cluster User. Possible values are `user` and `servicePrincipal`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalType;
  /// One or more `role` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<UserRole>>? roles;

  /// Creates a new [UserState].
  /// [identityProviderType] The identity provider type for the Mongo Cluster User. The only possible value is `MicrosoftEntraID`. Changing this forces a new resource to be created.
  /// [mongoClusterId] The ID of the Mongo Cluster where the User should exist. Changing this forces a new resource to be created.
  /// [objectId] The Object ID of the Entra ID User or Service Principal. Changing this forces a new resource to be created.
  /// [principalType] The principal type for the Mongo Cluster User. Possible values are `user` and `servicePrincipal`. Changing this forces a new resource to be created.
  /// [roles] One or more `role` blocks as defined below. Changing this forces a new resource to be created.
  UserState({
    this.identityProviderType,
    this.mongoClusterId,
    this.objectId,
    this.principalType,
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityProviderType': ?identityProviderType,
      'mongoClusterId': ?mongoClusterId,
      'objectId': ?objectId,
      'principalType': ?principalType,
      'roles': ?pulumi.Input.mapOptionalInputValue<List<UserRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<UserRole, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      identityProviderType: map['identityProviderType'] == null ? null : (map['identityProviderType']! as String).input(),
      mongoClusterId: map['mongoClusterId'] == null ? null : (map['mongoClusterId']! as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId']! as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType']! as String).input(),
      roles: map['roles'] == null ? null : (pulumi.Input.decodeList<UserRole>(map['roles']!, (value) => UserRole.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

