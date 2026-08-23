// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_permission_scope_application_permission_scope_args_doc}
/// The set of arguments for ApplicationPermissionScope.
/// {@endtemplate}
/// {@macro pulumi_index_application_permission_scope_application_permission_scope_args_doc}
class ApplicationPermissionScopeArgs {
  /// Delegated permission description that appears in all tenant-wide admin consent experiences, intended to be read by an administrator granting the permission on behalf of all users.
  final pulumi.Input<String> adminConsentDescription;
  /// Display name for the delegated permission, intended to be read by an administrator granting the permission on behalf of all users.
  final pulumi.Input<String> adminConsentDisplayName;
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationId;
  /// The unique identifier of the permission scope. Must be a valid UUID. Changing this forces a new resource to be created.
  final pulumi.Input<String> scopeId;
  /// Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions.
  final pulumi.Input<String>? type;
  /// Delegated permission description that appears in the end user consent experience, intended to be read by a user consenting on their own behalf.
  final pulumi.Input<String>? userConsentDescription;
  /// Display name for the delegated permission that appears in the end user consent experience.
  ///
  /// &gt; **Tip** Use the `randomUuid` resource to generate UUIDs and save them to state for permission scopes within your Terraform configuration
  final pulumi.Input<String>? userConsentDisplayName;
  /// The value that is used for the `scp` claim in OAuth access tokens.
  ///
  /// &gt; **Roles and Permission Scopes** In Azure Active Directory, application roles and permission scopes exported by an application share the same namespace and cannot contain duplicate values.
  final pulumi.Input<String> value;

  /// Creates a new [ApplicationPermissionScopeArgs].
  /// [adminConsentDescription] Delegated permission description that appears in all tenant-wide admin consent experiences, intended to be read by an administrator granting the permission on behalf of all users.
  /// [adminConsentDisplayName] Display name for the delegated permission, intended to be read by an administrator granting the permission on behalf of all users.
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [scopeId] The unique identifier of the permission scope. Must be a valid UUID. Changing this forces a new resource to be created.
  /// [type] Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions.
  /// [userConsentDescription] Delegated permission description that appears in the end user consent experience, intended to be read by a user consenting on their own behalf.
  /// [userConsentDisplayName] Display name for the delegated permission that appears in the end user consent experience.
  /// [value] The value that is used for the `scp` claim in OAuth access tokens.
  const ApplicationPermissionScopeArgs({
    required this.adminConsentDescription,
    required this.adminConsentDisplayName,
    required this.applicationId,
    required this.scopeId,
    this.type,
    this.userConsentDescription,
    this.userConsentDisplayName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminConsentDescription': adminConsentDescription,
      'adminConsentDisplayName': adminConsentDisplayName,
      'applicationId': applicationId,
      'scopeId': scopeId,
      'type': ?type,
      'userConsentDescription': ?userConsentDescription,
      'userConsentDisplayName': ?userConsentDisplayName,
      'value': value,
    };
  }

  factory ApplicationPermissionScopeArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationPermissionScopeArgs(
      adminConsentDescription: pulumi.Input.fromValue(map['adminConsentDescription'] as String),
      adminConsentDisplayName: pulumi.Input.fromValue(map['adminConsentDisplayName'] as String),
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userConsentDescription: (() { final guardedValue = map['userConsentDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userConsentDisplayName: (() { final guardedValue = map['userConsentDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
