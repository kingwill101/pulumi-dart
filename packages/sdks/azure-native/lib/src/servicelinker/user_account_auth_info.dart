// ignore_for_file: unused_element, unnecessary_cast


/// The authentication info when authType is user account
class UserAccountAuthInfo {
  /// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
  final String? authMode;
  /// The authentication type.
  /// Expected value is 'userAccount'.
  final String authType;
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final String? deleteOrUpdateBehavior;
  /// Principal Id for user account.
  final String? principalId;
  /// Optional, this value specifies the Azure roles to be assigned. Automatically
  final List<String>? roles;
  /// Username created in the database which is mapped to a user in AAD.
  final String? userName;

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
      authMode: map['authMode'] == null ? null : map['authMode'] as String,
      authType: map['authType'] as String,
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : map['deleteOrUpdateBehavior'] as String,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      roles: map['roles'] == null ? null : (map['roles'] as List).cast<String>(),
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

