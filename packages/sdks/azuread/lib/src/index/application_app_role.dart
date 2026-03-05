// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationAppRole {
  /// Specifies whether this app role definition can be assigned to users and groups by setting to `User`, or to other applications (that are accessing this application in a standalone scenario) by setting to `Application`, or to both.
  final pulumi.Input<List<String>> allowedMemberTypes;
  /// Description of the app role that appears when the role is being assigned and, if the role functions as an application permissions, during the consent experiences.
  final pulumi.Input<String> description;
  /// Display name for the app role that appears during app role assignment and in consent experiences.
  final pulumi.Input<String> displayName;
  /// Determines if the app role is enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The unique identifier of the app role. Must be a valid UUID.
  ///
  /// &gt; **Tip: Generating a UUID for the `id` field** To generate a value for the `id` field in cases where the actual UUID is not important, you can use the `random_uuid` resource. See the application example in the provider repository.
  final pulumi.Input<String> id;
  /// The value that is used for the `roles` claim in ID tokens and OAuth 2.0 access tokens that are authenticating an assigned service or user principal.
  ///
  /// &gt; **Roles and Permission Scopes** In Azure Active Directory, application roles (`app_role`) and permission scopes (`oauth2_permission_scope`) exported by an application share the same namespace and cannot contain duplicate `value`s. Terraform will attempt to detect this during a plan or apply operation.
  final pulumi.Input<String>? value;

  /// Creates a new [ApplicationAppRole].
  /// [allowedMemberTypes] Specifies whether this app role definition can be assigned to users and groups by setting to `User`, or to other applications (that are accessing this application in a standalone scenario) by setting to `Application`, or to both.
  /// [description] Description of the app role that appears when the role is being assigned and, if the role functions as an application permissions, during the consent experiences.
  /// [displayName] Display name for the app role that appears during app role assignment and in consent experiences.
  /// [enabled] Determines if the app role is enabled. Defaults to `true`.
  /// [id] The unique identifier of the app role. Must be a valid UUID.
  /// [value] The value that is used for the `roles` claim in ID tokens and OAuth 2.0 access tokens that are authenticating an assigned service or user principal.
  ApplicationAppRole({
    required this.allowedMemberTypes,
    required this.description,
    required this.displayName,
    this.enabled,
    required this.id,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMemberTypes': allowedMemberTypes,
      'description': description,
      'displayName': displayName,
      'enabled': ?enabled,
      'id': id,
      'value': ?value,
    };
  }

  factory ApplicationAppRole.fromMap(Map<String, dynamic> map) {
    return ApplicationAppRole(
      allowedMemberTypes: pulumi.Input.fromValue((map['allowedMemberTypes'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

