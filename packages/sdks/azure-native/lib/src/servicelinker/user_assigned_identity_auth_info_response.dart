// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication info when authType is userAssignedIdentity
class UserAssignedIdentityAuthInfoResponse {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final pulumi.Input<String>? authMode;
  /// The authentication type.
  /// Expected value is 'userAssignedIdentity'.
  final pulumi.Input<String> authType;
  /// Client Id for userAssignedIdentity.
  final pulumi.Input<String>? clientId;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final pulumi.Input<String>? deleteOrUpdateBehavior;
  /// Optional, this value specifies the Azure role to be assigned
  final pulumi.Input<List<String>>? roles;
  /// Subscription id for userAssignedIdentity.
  final pulumi.Input<String>? subscriptionId;
  /// Username created in the database which is mapped to a user in AAD.
  final pulumi.Input<String>? userName;

  /// Creates a new [UserAssignedIdentityAuthInfoResponse].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [clientId] Client Id for userAssignedIdentity.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [roles] Optional, this value specifies the Azure role to be assigned
  /// [subscriptionId] Subscription id for userAssignedIdentity.
  /// [userName] Username created in the database which is mapped to a user in AAD.
  const UserAssignedIdentityAuthInfoResponse({
    this.authMode,
    required this.authType,
    this.clientId,
    this.deleteOrUpdateBehavior,
    this.roles,
    this.subscriptionId,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': ?authMode,
      'authType': authType,
      'clientId': ?clientId,
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
      'roles': ?roles,
      'subscriptionId': ?subscriptionId,
      'userName': ?userName,
    };
  }

  factory UserAssignedIdentityAuthInfoResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityAuthInfoResponse(
      authMode: (() { final guardedValue = map['authMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteOrUpdateBehavior: (() { final guardedValue = map['deleteOrUpdateBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
