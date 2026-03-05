// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_authorization_response.dart';

/// Managed by authorization.
class ResourceProviderAuthorizationManagedByAuthorizationResponse {
  final pulumi.Input<List<AdditionalAuthorizationResponse>>? additionalAuthorizations;
  /// Indicates whether the managed by resource role definition ID should be inherited.
  final pulumi.Input<bool>? allowManagedByInheritance;
  /// The managed by resource role definition ID for the application.
  final pulumi.Input<String>? managedByResourceRoleDefinitionId;

  /// Creates a new [ResourceProviderAuthorizationManagedByAuthorizationResponse].
  /// [additionalAuthorizations] Optional.
  /// [allowManagedByInheritance] Indicates whether the managed by resource role definition ID should be inherited.
  /// [managedByResourceRoleDefinitionId] The managed by resource role definition ID for the application.
  ResourceProviderAuthorizationManagedByAuthorizationResponse({
    this.additionalAuthorizations,
    this.allowManagedByInheritance,
    this.managedByResourceRoleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<AdditionalAuthorizationResponse>, List<Map<String, dynamic>>>(additionalAuthorizations, (value) => pulumi.Input.encodeList<AdditionalAuthorizationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allowManagedByInheritance': ?allowManagedByInheritance,
      'managedByResourceRoleDefinitionId': ?managedByResourceRoleDefinitionId,
    };
  }

  factory ResourceProviderAuthorizationManagedByAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderAuthorizationManagedByAuthorizationResponse(
      additionalAuthorizations: (() { final guardedValue = map['additionalAuthorizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AdditionalAuthorizationResponse>(guardedValue, (value) => AdditionalAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      allowManagedByInheritance: (() { final guardedValue = map['allowManagedByInheritance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      managedByResourceRoleDefinitionId: (() { final guardedValue = map['managedByResourceRoleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

