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
    this.allowedMemberTypes,
    this.applicationId,
    this.description,
    this.displayName,
    this.roleId,
    this.value,
  });

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
      allowedMemberTypes: map['allowedMemberTypes'] == null ? null : ((map['allowedMemberTypes']! as List).cast<String>()).input(),
      applicationId: map['applicationId'] == null ? null : (map['applicationId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      roleId: map['roleId'] == null ? null : (map['roleId']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

