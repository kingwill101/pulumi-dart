// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServicePrincipalAppRole {
  /// Specifies whether this app role definition can be assigned to users and groups, or to other applications (that are accessing this application in a standalone scenario). Possible values are: `User` and `Application`, or both.
  final pulumi.Input<List<String>>? allowedMemberTypes;
  /// A description of the service principal provided for internal end-users.
  final pulumi.Input<String>? description;
  /// Display name for the app role that appears during app role assignment and in consent experiences.
  final pulumi.Input<String>? displayName;
  /// Specifies whether the permission scope is enabled.
  final pulumi.Input<bool>? enabled;
  /// The unique identifier of the delegated permission.
  final pulumi.Input<String>? id;
  /// The value that is used for the `scp` claim in OAuth 2.0 access tokens.
  final pulumi.Input<String>? value;

  /// Creates a new [ServicePrincipalAppRole].
  /// [allowedMemberTypes] Specifies whether this app role definition can be assigned to users and groups, or to other applications (that are accessing this application in a standalone scenario). Possible values are: `User` and `Application`, or both.
  /// [description] A description of the service principal provided for internal end-users.
  /// [displayName] Display name for the app role that appears during app role assignment and in consent experiences.
  /// [enabled] Specifies whether the permission scope is enabled.
  /// [id] The unique identifier of the delegated permission.
  /// [value] The value that is used for the `scp` claim in OAuth 2.0 access tokens.
  const ServicePrincipalAppRole({
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
      allowedMemberTypes: (() { final guardedValue = map['allowedMemberTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
