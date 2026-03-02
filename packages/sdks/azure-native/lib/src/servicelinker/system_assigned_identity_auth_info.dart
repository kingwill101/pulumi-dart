// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication info when authType is systemAssignedIdentity
class SystemAssignedIdentityAuthInfo {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final pulumi.Input<String>? authMode;
  /// The authentication type.
  /// Expected value is 'systemAssignedIdentity'.
  final pulumi.Input<String> authType;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final pulumi.Input<String>? deleteOrUpdateBehavior;
  /// Optional, this value specifies the Azure role to be assigned
  final pulumi.Input<List<String>>? roles;
  /// Username created in the database which is mapped to a user in AAD.
  final pulumi.Input<String>? userName;

  /// Creates a new [SystemAssignedIdentityAuthInfo].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [roles] Optional, this value specifies the Azure role to be assigned
  /// [userName] Username created in the database which is mapped to a user in AAD.
  SystemAssignedIdentityAuthInfo({
    this.authMode,
    required this.authType,
    this.deleteOrUpdateBehavior,
    this.roles,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': ?authMode,
      'authType': authType,
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
      'roles': ?roles,
      'userName': ?userName,
    };
  }

  factory SystemAssignedIdentityAuthInfo.fromMap(Map<String, dynamic> map) {
    return SystemAssignedIdentityAuthInfo(
      authMode: map['authMode'] == null ? null : (map['authMode'] as String).input(),
      authType: (map['authType'] as String).input(),
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : (map['deleteOrUpdateBehavior'] as String).input(),
      roles: map['roles'] == null ? null : ((map['roles'] as List).cast<String>()).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}

