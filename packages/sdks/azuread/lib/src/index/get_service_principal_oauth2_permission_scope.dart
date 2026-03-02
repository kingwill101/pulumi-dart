// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServicePrincipalOauth2PermissionScope {
  /// Delegated permission description that appears in all tenant-wide admin consent experiences, intended to be read by an administrator granting the permission on behalf of all users.
  final pulumi.Input<String> adminConsentDescription;
  /// Display name for the delegated permission, intended to be read by an administrator granting the permission on behalf of all users.
  final pulumi.Input<String> adminConsentDisplayName;
  /// Determines if the permission scope is enabled.
  final pulumi.Input<bool> enabled;
  /// The unique identifier of the delegated permission. Must be a valid UUID.
  final pulumi.Input<String> id;
  /// Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions. Possible values are `User` or `Admin`.
  final pulumi.Input<String> type;
  /// Delegated permission description that appears in the end user consent experience, intended to be read by a user consenting on their own behalf.
  final pulumi.Input<String> userConsentDescription;
  /// Display name for the delegated permission that appears in the end user consent experience.
  final pulumi.Input<String> userConsentDisplayName;
  /// The value that is used for the `scp` claim in OAuth 2.0 access tokens.
  final pulumi.Input<String> value;

  /// Creates a new [GetServicePrincipalOauth2PermissionScope].
  /// [adminConsentDescription] Delegated permission description that appears in all tenant-wide admin consent experiences, intended to be read by an administrator granting the permission on behalf of all users.
  /// [adminConsentDisplayName] Display name for the delegated permission, intended to be read by an administrator granting the permission on behalf of all users.
  /// [enabled] Determines if the permission scope is enabled.
  /// [id] The unique identifier of the delegated permission. Must be a valid UUID.
  /// [type] Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions. Possible values are `User` or `Admin`.
  /// [userConsentDescription] Delegated permission description that appears in the end user consent experience, intended to be read by a user consenting on their own behalf.
  /// [userConsentDisplayName] Display name for the delegated permission that appears in the end user consent experience.
  /// [value] The value that is used for the `scp` claim in OAuth 2.0 access tokens.
  GetServicePrincipalOauth2PermissionScope({
    required this.adminConsentDescription,
    required this.adminConsentDisplayName,
    required this.enabled,
    required this.id,
    required this.type,
    required this.userConsentDescription,
    required this.userConsentDisplayName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminConsentDescription': adminConsentDescription,
      'adminConsentDisplayName': adminConsentDisplayName,
      'enabled': enabled,
      'id': id,
      'type': type,
      'userConsentDescription': userConsentDescription,
      'userConsentDisplayName': userConsentDisplayName,
      'value': value,
    };
  }

  factory GetServicePrincipalOauth2PermissionScope.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalOauth2PermissionScope(
      adminConsentDescription: (map['adminConsentDescription'] as String).input(),
      adminConsentDisplayName: (map['adminConsentDisplayName'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      id: (map['id'] as String).input(),
      type: (map['type'] as String).input(),
      userConsentDescription: (map['userConsentDescription'] as String).input(),
      userConsentDisplayName: (map['userConsentDisplayName'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

