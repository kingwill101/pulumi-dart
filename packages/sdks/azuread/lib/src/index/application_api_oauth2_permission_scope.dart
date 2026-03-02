// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApiOauth2PermissionScope {
  /// Delegated permission description that appears in all tenant-wide admin consent experiences, intended to be read by an administrator granting the permission on behalf of all users.
  final pulumi.Input<String>? adminConsentDescription;
  /// Display name for the delegated permission, intended to be read by an administrator granting the permission on behalf of all users.
  final pulumi.Input<String>? adminConsentDisplayName;
  /// Determines if the permission scope is enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The unique identifier of the delegated permission. Must be a valid UUID.
  ///
  /// > **Tip: Generating a UUID for the `id` field** To generate a value for the `id` field in cases where the actual UUID is not important, you can use the `random_uuid` resource. See the application example in the provider repository.
  final pulumi.Input<String> id;
  /// Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions. Defaults to `User`. Possible values are `User` or `Admin`.
  final pulumi.Input<String>? type;
  /// Delegated permission description that appears in the end user consent experience, intended to be read by a user consenting on their own behalf.
  final pulumi.Input<String>? userConsentDescription;
  /// Display name for the delegated permission that appears in the end user consent experience.
  final pulumi.Input<String>? userConsentDisplayName;
  /// The value that is used for the `scp` claim in OAuth 2.0 access tokens.
  ///
  /// > **Default `user_impersonation` Scope** Unlike the Azure Portal, applications created with the Terraform AzureAD provider do not get assigned a default `user_impersonation` scope. You will need to include a block for the `user_impersonation` scope if you need it for your application.
  ///
  /// > **Roles and Permission Scopes** In Azure Active Directory, application roles (`app_role`) and permission scopes (`oauth2_permission_scope`) exported by an application share the same namespace and cannot contain duplicate `value`s. Terraform will attempt to detect this during a plan or apply operation.
  final pulumi.Input<String>? value;

  /// Creates a new [ApplicationApiOauth2PermissionScope].
  /// [adminConsentDescription] Delegated permission description that appears in all tenant-wide admin consent experiences, intended to be read by an administrator granting the permission on behalf of all users.
  /// [adminConsentDisplayName] Display name for the delegated permission, intended to be read by an administrator granting the permission on behalf of all users.
  /// [enabled] Determines if the permission scope is enabled. Defaults to `true`.
  /// [id] The unique identifier of the delegated permission. Must be a valid UUID.
  /// [type] Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions. Defaults to `User`. Possible values are `User` or `Admin`.
  /// [userConsentDescription] Delegated permission description that appears in the end user consent experience, intended to be read by a user consenting on their own behalf.
  /// [userConsentDisplayName] Display name for the delegated permission that appears in the end user consent experience.
  /// [value] The value that is used for the `scp` claim in OAuth 2.0 access tokens.
  ApplicationApiOauth2PermissionScope({
    this.adminConsentDescription,
    this.adminConsentDisplayName,
    this.enabled,
    required this.id,
    this.type,
    this.userConsentDescription,
    this.userConsentDisplayName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminConsentDescription': ?adminConsentDescription,
      'adminConsentDisplayName': ?adminConsentDisplayName,
      'enabled': ?enabled,
      'id': id,
      'type': ?type,
      'userConsentDescription': ?userConsentDescription,
      'userConsentDisplayName': ?userConsentDisplayName,
      'value': ?value,
    };
  }

  factory ApplicationApiOauth2PermissionScope.fromMap(Map<String, dynamic> map) {
    return ApplicationApiOauth2PermissionScope(
      adminConsentDescription: map['adminConsentDescription'] == null ? null : (map['adminConsentDescription']! as String).input(),
      adminConsentDisplayName: map['adminConsentDisplayName'] == null ? null : (map['adminConsentDisplayName']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      id: (map['id'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userConsentDescription: map['userConsentDescription'] == null ? null : (map['userConsentDescription']! as String).input(),
      userConsentDisplayName: map['userConsentDisplayName'] == null ? null : (map['userConsentDisplayName']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

