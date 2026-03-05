// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServicePrincipalAppRole {
  /// Specifies whether this app role definition can be assigned to users and groups, or to other applications (that are accessing this application in daemon service scenarios). Possible values are: `User` and `Application`, or both.
  final pulumi.Input<List<String>> allowedMemberTypes;
  /// Permission help text that appears in the admin app assignment and consent experiences.
  final pulumi.Input<String> description;
  /// The display name of the application associated with this service principal.
  final pulumi.Input<String> displayName;
  /// Determines if the permission scope is enabled.
  final pulumi.Input<bool> enabled;
  /// The unique identifier of the delegated permission. Must be a valid UUID.
  final pulumi.Input<String> id;
  /// The value that is used for the `scp` claim in OAuth 2.0 access tokens.
  final pulumi.Input<String> value;

  /// Creates a new [GetServicePrincipalAppRole].
  /// [allowedMemberTypes] Specifies whether this app role definition can be assigned to users and groups, or to other applications (that are accessing this application in daemon service scenarios). Possible values are: `User` and `Application`, or both.
  /// [description] Permission help text that appears in the admin app assignment and consent experiences.
  /// [displayName] The display name of the application associated with this service principal.
  /// [enabled] Determines if the permission scope is enabled.
  /// [id] The unique identifier of the delegated permission. Must be a valid UUID.
  /// [value] The value that is used for the `scp` claim in OAuth 2.0 access tokens.
  GetServicePrincipalAppRole({
    required this.allowedMemberTypes,
    required this.description,
    required this.displayName,
    required this.enabled,
    required this.id,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMemberTypes': allowedMemberTypes,
      'description': description,
      'displayName': displayName,
      'enabled': enabled,
      'id': id,
      'value': value,
    };
  }

  factory GetServicePrincipalAppRole.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalAppRole(
      allowedMemberTypes: pulumi.Input.fromValue((map['allowedMemberTypes'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

