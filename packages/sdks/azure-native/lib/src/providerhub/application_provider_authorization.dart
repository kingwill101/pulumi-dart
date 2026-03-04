// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationProviderAuthorization {
  /// The managed by role definition ID for the application.
  final pulumi.Input<String>? managedByRoleDefinitionId;

  /// The role definition ID for the application.
  final pulumi.Input<String>? roleDefinitionId;

  /// Creates a new [ApplicationProviderAuthorization].
  /// [managedByRoleDefinitionId] The managed by role definition ID for the application.
  /// [roleDefinitionId] The role definition ID for the application.
  ApplicationProviderAuthorization({
    this.managedByRoleDefinitionId,
    this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedByRoleDefinitionId': ?managedByRoleDefinitionId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory ApplicationProviderAuthorization.fromMap(Map<String, dynamic> map) {
    return ApplicationProviderAuthorization(
      managedByRoleDefinitionId: (() {
        final guardedValue = map['managedByRoleDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleDefinitionId: (() {
        final guardedValue = map['roleDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
