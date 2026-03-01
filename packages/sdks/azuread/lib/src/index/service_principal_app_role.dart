// ignore_for_file: unused_element, unnecessary_cast


class ServicePrincipalAppRole {
  /// Specifies whether this app role definition can be assigned to users and groups, or to other applications (that are accessing this application in a standalone scenario). Possible values are: `User` and `Application`, or both.
  final List<String>? allowedMemberTypes;
  /// A description of the service principal provided for internal end-users.
  final String? description;
  /// Display name for the app role that appears during app role assignment and in consent experiences.
  final String? displayName;
  /// Specifies whether the permission scope is enabled.
  final bool? enabled;
  /// The unique identifier of the delegated permission.
  final String? id;
  /// The value that is used for the `scp` claim in OAuth 2.0 access tokens.
  final String? value;

  /// Creates a new [ServicePrincipalAppRole].
  /// [allowedMemberTypes] Specifies whether this app role definition can be assigned to users and groups, or to other applications (that are accessing this application in a standalone scenario). Possible values are: `User` and `Application`, or both.
  /// [description] A description of the service principal provided for internal end-users.
  /// [displayName] Display name for the app role that appears during app role assignment and in consent experiences.
  /// [enabled] Specifies whether the permission scope is enabled.
  /// [id] The unique identifier of the delegated permission.
  /// [value] The value that is used for the `scp` claim in OAuth 2.0 access tokens.
  ServicePrincipalAppRole({
    this.allowedMemberTypes,
    this.description,
    this.displayName,
    this.enabled,
    this.id,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedMemberTypes': ?allowedMemberTypes,
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'id': ?id,
      'value': ?value,
    };
  }

  factory ServicePrincipalAppRole.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalAppRole(
      allowedMemberTypes: map['allowedMemberTypes'] == null ? null : (map['allowedMemberTypes'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

