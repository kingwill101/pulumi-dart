// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_provider_authorization_managed_by_authorization_response.dart';
import 'third_party_extension_response.dart';

class ResourceProviderAuthorizationResponse {
  /// The allowed third party extensions.
  final pulumi.Input<List<ThirdPartyExtensionResponse>>? allowedThirdPartyExtensions;
  /// The application id.
  final pulumi.Input<String>? applicationId;
  /// The grouping tag.
  final pulumi.Input<String>? groupingTag;
  /// Managed by authorization.
  final pulumi.Input<ResourceProviderAuthorizationManagedByAuthorizationResponse>? managedByAuthorization;
  /// The managed by role definition id.
  final pulumi.Input<String>? managedByRoleDefinitionId;
  /// The role definition id.
  final pulumi.Input<String>? roleDefinitionId;

  /// Creates a new [ResourceProviderAuthorizationResponse].
  /// [allowedThirdPartyExtensions] The allowed third party extensions.
  /// [applicationId] The application id.
  /// [groupingTag] The grouping tag.
  /// [managedByAuthorization] Managed by authorization.
  /// [managedByRoleDefinitionId] The managed by role definition id.
  /// [roleDefinitionId] The role definition id.
  const ResourceProviderAuthorizationResponse({
    this.allowedThirdPartyExtensions,
    this.applicationId,
    this.groupingTag,
    this.managedByAuthorization,
    this.managedByRoleDefinitionId,
    this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedThirdPartyExtensions': ?pulumi.Input.mapOptionalInputValue<List<ThirdPartyExtensionResponse>, List<Map<String, dynamic>>>(allowedThirdPartyExtensions, (value) => pulumi.Input.encodeList<ThirdPartyExtensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationId': ?applicationId,
      'groupingTag': ?groupingTag,
      'managedByAuthorization': ?pulumi.Input.mapOptionalInputValue<ResourceProviderAuthorizationManagedByAuthorizationResponse, Map<String, dynamic>>(managedByAuthorization, (value) => value.toMap()),
      'managedByRoleDefinitionId': ?managedByRoleDefinitionId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory ResourceProviderAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderAuthorizationResponse(
      allowedThirdPartyExtensions: (() { final guardedValue = map['allowedThirdPartyExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThirdPartyExtensionResponse>(guardedValue, (value) => ThirdPartyExtensionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupingTag: (() { final guardedValue = map['groupingTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedByAuthorization: (() { final guardedValue = map['managedByAuthorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderAuthorizationManagedByAuthorizationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedByRoleDefinitionId: (() { final guardedValue = map['managedByRoleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
