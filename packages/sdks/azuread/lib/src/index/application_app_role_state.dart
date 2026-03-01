// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationAppRole resources.
class ApplicationAppRoleState {
  /// A set of values to specify whether this app role definition can be assigned to users and groups by setting to `User`, or to other applications by setting to `Application`, or to both.
  final pulumi.Input<List<String>>? allowedMemberTypes;
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// Description of the app role that appears when the role is being assigned, and if the role functions as an application permissions, during the consent experiences.
  final pulumi.Input<String>? description;
  /// Display name for the app role that appears during app role assignment and in consent experiences.
  final pulumi.Input<String>? displayName;
  /// The unique identifier of the app role. Must be a valid UUID. Changing this forces a new resource to be created.
  ///
  /// > **Tip** Use the `random_uuid` resource to generate UUIDs and save them to state for app roles within your Terraform configuration
  final pulumi.Input<String>? roleId;
  /// The value that is used for the `roles` claim in ID tokens and OAuth 2.0 access tokens that are authenticating an assigned service or user principal.
  ///
  /// > **Roles and Permission Scopes** In Azure Active Directory, application roles and permission scopes exported by an application share the same namespace and cannot contain duplicate values.
  final pulumi.Input<String>? value;

  /// Creates a new [ApplicationAppRoleState].
  /// [allowedMemberTypes] A set of values to specify whether this app role definition can be assigned to users and groups by setting to `User`, or to other applications by setting to `Application`, or to both.
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [description] Description of the app role that appears when the role is being assigned, and if the role functions as an application permissions, during the consent experiences.
  /// [displayName] Display name for the app role that appears during app role assignment and in consent experiences.
  /// [roleId] The unique identifier of the app role. Must be a valid UUID. Changing this forces a new resource to be created.
  /// [value] The value that is used for the `roles` claim in ID tokens and OAuth 2.0 access tokens that are authenticating an assigned service or user principal.
  ApplicationAppRoleState({
    pulumi.Output<List<String>>? allowedMemberTypes,
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? roleId,
    pulumi.Output<String>? value,
  }) :
      allowedMemberTypes = pulumi.Input.asOptionalInput<List<String>>(allowedMemberTypes),
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      roleId = pulumi.Input.asOptionalInput<String>(roleId),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMemberTypes': ?allowedMemberTypes,
      'applicationId': ?applicationId,
      'description': ?description,
      'displayName': ?displayName,
      'roleId': ?roleId,
      'value': ?value,
    };
  }

  factory ApplicationAppRoleState.fromMap(Map<String, dynamic> map) {
    return ApplicationAppRoleState(
      allowedMemberTypes: map['allowedMemberTypes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedMemberTypes'] as List).cast<String>()),
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      roleId: map['roleId'] == null ? null : pulumi.Output.create<String>(map['roleId'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

