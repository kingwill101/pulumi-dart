// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationProviderAuthorizationResponse {
  /// The managed by role definition ID for the application.
  final pulumi.Input<String>? managedByRoleDefinitionId;
  /// The role definition ID for the application.
  final pulumi.Input<String>? roleDefinitionId;

  /// Creates a new [ApplicationProviderAuthorizationResponse].
  /// [managedByRoleDefinitionId] The managed by role definition ID for the application.
  /// [roleDefinitionId] The role definition ID for the application.
  const ApplicationProviderAuthorizationResponse({
    this.managedByRoleDefinitionId,
    this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedByRoleDefinitionId': ?managedByRoleDefinitionId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory ApplicationProviderAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationProviderAuthorizationResponse(
      managedByRoleDefinitionId: (() { final guardedValue = map['managedByRoleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
