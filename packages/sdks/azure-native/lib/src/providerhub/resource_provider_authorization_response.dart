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
  ResourceProviderAuthorizationResponse({
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
      allowedThirdPartyExtensions: map['allowedThirdPartyExtensions'] == null ? null : (pulumi.Input.decodeList<ThirdPartyExtensionResponse>(map['allowedThirdPartyExtensions']!, (value) => ThirdPartyExtensionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      applicationId: map['applicationId'] == null ? null : (map['applicationId']! as String).input(),
      groupingTag: map['groupingTag'] == null ? null : (map['groupingTag']! as String).input(),
      managedByAuthorization: map['managedByAuthorization'] == null ? null : (ResourceProviderAuthorizationManagedByAuthorizationResponse.fromMap((map['managedByAuthorization']! as Map).cast<String, dynamic>())).input(),
      managedByRoleDefinitionId: map['managedByRoleDefinitionId'] == null ? null : (map['managedByRoleDefinitionId']! as String).input(),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : (map['roleDefinitionId']! as String).input(),
    );
  }
}

