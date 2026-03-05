// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication info when authType is user account
class UserAccountAuthInfo {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final pulumi.Input<String>? authMode;
  /// The authentication type.
  /// Expected value is 'userAccount'.
  final pulumi.Input<String> authType;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final pulumi.Input<String>? deleteOrUpdateBehavior;
  /// Principal Id for user account.
  final pulumi.Input<String>? principalId;
  /// Optional, this value specifies the Azure roles to be assigned. Automatically
  final pulumi.Input<List<String>>? roles;
  /// Username created in the database which is mapped to a user in AAD.
  final pulumi.Input<String>? userName;

  /// Creates a new [UserAccountAuthInfo].
  /// [authMode] Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  /// [authType] The authentication type.
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [principalId] Principal Id for user account.
  /// [roles] Optional, this value specifies the Azure roles to be assigned. Automatically
  /// [userName] Username created in the database which is mapped to a user in AAD.
  UserAccountAuthInfo({
    this.authMode,
    required this.authType,
    this.deleteOrUpdateBehavior,
    this.principalId,
    this.roles,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': ?authMode,
      'authType': authType,
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
      'principalId': ?principalId,
      'roles': ?roles,
      'userName': ?userName,
    };
  }

  factory UserAccountAuthInfo.fromMap(Map<String, dynamic> map) {
    return UserAccountAuthInfo(
      authMode: (() { final guardedValue = map['authMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      deleteOrUpdateBehavior: (() { final guardedValue = map['deleteOrUpdateBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

