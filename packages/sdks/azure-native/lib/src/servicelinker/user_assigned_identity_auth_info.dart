// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication info when authType is userAssignedIdentity
class UserAssignedIdentityAuthInfo {
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

  /// Creates a new [UserAssignedIdentityAuthInfo].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [clientId] Client Id for userAssignedIdentity.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [roles] Optional, this value specifies the Azure role to be assigned
  /// [subscriptionId] Subscription id for userAssignedIdentity.
  /// [userName] Username created in the database which is mapped to a user in AAD.
  UserAssignedIdentityAuthInfo({
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

  factory UserAssignedIdentityAuthInfo.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityAuthInfo(
      authMode: map['authMode'] == null ? null : (map['authMode']! as String).input(),
      authType: (map['authType'] as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : (map['deleteOrUpdateBehavior']! as String).input(),
      roles: map['roles'] == null ? null : ((map['roles']! as List).cast<String>()).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

