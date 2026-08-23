// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationApiOauth2PermissionScope {
  /// Delegated permission description that appears in all tenant-wide admin consent experiences, intended to be read by an administrator granting the permission on behalf of all users.
  final pulumi.Input<String> adminConsentDescription;
  /// Display name for the delegated permission, intended to be read by an administrator granting the permission on behalf of all users.
  final pulumi.Input<String> adminConsentDisplayName;
  /// Determines if the app role is enabled.
  final pulumi.Input<bool> enabled;
  /// The unique identifier for an app role or OAuth2 permission scope published by the resource application.
  final pulumi.Input<String> id;
  /// Specifies whether the `id` property references an app role or an OAuth2 permission scope. Possible values are `Role` or `Scope`.
  final pulumi.Input<String> type;
  /// Delegated permission description that appears in the end user consent experience, intended to be read by a user consenting on their own behalf.
  final pulumi.Input<String> userConsentDescription;
  /// Display name for the delegated permission that appears in the end user consent experience.
  final pulumi.Input<String> userConsentDisplayName;
  /// The value that is used for the `roles` claim in ID tokens and OAuth 2.0 access tokens that are authenticating an assigned service or user principal.
  final pulumi.Input<String> value;

  /// Creates a new [GetApplicationApiOauth2PermissionScope].
  /// [adminConsentDescription] Delegated permission description that appears in all tenant-wide admin consent experiences, intended to be read by an administrator granting the permission on behalf of all users.
  /// [adminConsentDisplayName] Display name for the delegated permission, intended to be read by an administrator granting the permission on behalf of all users.
  /// [enabled] Determines if the app role is enabled.
  /// [id] The unique identifier for an app role or OAuth2 permission scope published by the resource application.
  /// [type] Specifies whether the `id` property references an app role or an OAuth2 permission scope. Possible values are `Role` or `Scope`.
  /// [userConsentDescription] Delegated permission description that appears in the end user consent experience, intended to be read by a user consenting on their own behalf.
  /// [userConsentDisplayName] Display name for the delegated permission that appears in the end user consent experience.
  /// [value] The value that is used for the `roles` claim in ID tokens and OAuth 2.0 access tokens that are authenticating an assigned service or user principal.
  const GetApplicationApiOauth2PermissionScope({
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

  factory GetApplicationApiOauth2PermissionScope.fromMap(Map<String, dynamic> map) {
    return GetApplicationApiOauth2PermissionScope(
      adminConsentDescription: pulumi.Input.fromValue(map['adminConsentDescription'] as String),
      adminConsentDisplayName: pulumi.Input.fromValue(map['adminConsentDisplayName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      userConsentDescription: pulumi.Input.fromValue(map['userConsentDescription'] as String),
      userConsentDisplayName: pulumi.Input.fromValue(map['userConsentDisplayName'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
