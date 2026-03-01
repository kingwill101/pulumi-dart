// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationPermissionScope resources.
class ApplicationPermissionScopeState {
  /// Delegated permission description that appears in all tenant-wide admin consent experiences, intended to be read by an administrator granting the permission on behalf of all users.
  final pulumi.Input<String>? adminConsentDescription;
  /// Display name for the delegated permission, intended to be read by an administrator granting the permission on behalf of all users.
  final pulumi.Input<String>? adminConsentDisplayName;
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// The unique identifier of the permission scope. Must be a valid UUID. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scopeId;
  /// Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions.
  final pulumi.Input<String>? type;
  /// Delegated permission description that appears in the end user consent experience, intended to be read by a user consenting on their own behalf.
  final pulumi.Input<String>? userConsentDescription;
  /// Display name for the delegated permission that appears in the end user consent experience.
  ///
  /// > **Tip** Use the `random_uuid` resource to generate UUIDs and save them to state for permission scopes within your Terraform configuration
  final pulumi.Input<String>? userConsentDisplayName;
  /// The value that is used for the `scp` claim in OAuth access tokens.
  ///
  /// > **Roles and Permission Scopes** In Azure Active Directory, application roles and permission scopes exported by an application share the same namespace and cannot contain duplicate values.
  final pulumi.Input<String>? value;

  /// Creates a new [ApplicationPermissionScopeState].
  /// [adminConsentDescription] Delegated permission description that appears in all tenant-wide admin consent experiences, intended to be read by an administrator granting the permission on behalf of all users.
  /// [adminConsentDisplayName] Display name for the delegated permission, intended to be read by an administrator granting the permission on behalf of all users.
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [scopeId] The unique identifier of the permission scope. Must be a valid UUID. Changing this forces a new resource to be created.
  /// [type] Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions.
  /// [userConsentDescription] Delegated permission description that appears in the end user consent experience, intended to be read by a user consenting on their own behalf.
  /// [userConsentDisplayName] Display name for the delegated permission that appears in the end user consent experience.
  /// [value] The value that is used for the `scp` claim in OAuth access tokens.
  ApplicationPermissionScopeState({
    pulumi.Output<String>? adminConsentDescription,
    pulumi.Output<String>? adminConsentDisplayName,
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? scopeId,
    pulumi.Output<String>? type,
    pulumi.Output<String>? userConsentDescription,
    pulumi.Output<String>? userConsentDisplayName,
    pulumi.Output<String>? value,
  }) :
      adminConsentDescription = pulumi.Input.asOptionalInput<String>(adminConsentDescription),
      adminConsentDisplayName = pulumi.Input.asOptionalInput<String>(adminConsentDisplayName),
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      scopeId = pulumi.Input.asOptionalInput<String>(scopeId),
      type = pulumi.Input.asOptionalInput<String>(type),
      userConsentDescription = pulumi.Input.asOptionalInput<String>(userConsentDescription),
      userConsentDisplayName = pulumi.Input.asOptionalInput<String>(userConsentDisplayName),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminConsentDescription': ?adminConsentDescription,
      'adminConsentDisplayName': ?adminConsentDisplayName,
      'applicationId': ?applicationId,
      'scopeId': ?scopeId,
      'type': ?type,
      'userConsentDescription': ?userConsentDescription,
      'userConsentDisplayName': ?userConsentDisplayName,
      'value': ?value,
    };
  }

  factory ApplicationPermissionScopeState.fromMap(Map<String, dynamic> map) {
    return ApplicationPermissionScopeState(
      adminConsentDescription: map['adminConsentDescription'] == null ? null : pulumi.Output.create<String>(map['adminConsentDescription'] as String),
      adminConsentDisplayName: map['adminConsentDisplayName'] == null ? null : pulumi.Output.create<String>(map['adminConsentDisplayName'] as String),
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      scopeId: map['scopeId'] == null ? null : pulumi.Output.create<String>(map['scopeId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      userConsentDescription: map['userConsentDescription'] == null ? null : pulumi.Output.create<String>(map['userConsentDescription'] as String),
      userConsentDisplayName: map['userConsentDisplayName'] == null ? null : pulumi.Output.create<String>(map['userConsentDisplayName'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

