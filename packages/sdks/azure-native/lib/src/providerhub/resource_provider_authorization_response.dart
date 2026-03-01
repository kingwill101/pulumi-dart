// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_provider_authorization_managed_by_authorization_response.dart';
import 'third_party_extension_response.dart';

class ResourceProviderAuthorizationResponse {
  /// The allowed third party extensions.
  final List<ThirdPartyExtensionResponse>? allowedThirdPartyExtensions;
  /// The application id.
  final String? applicationId;
  /// The grouping tag.
  final String? groupingTag;
  /// Managed by authorization.
  final ResourceProviderAuthorizationManagedByAuthorizationResponse? managedByAuthorization;
  /// The managed by role definition id.
  final String? managedByRoleDefinitionId;
  /// The role definition id.
  final String? roleDefinitionId;

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
      'allowedThirdPartyExtensions': ?allowedThirdPartyExtensions == null ? null : pulumi.Input.encodeList<ThirdPartyExtensionResponse, Map<String, dynamic>>(allowedThirdPartyExtensions!, (value) => value.toMap()),
      'applicationId': ?applicationId,
      'groupingTag': ?groupingTag,
      'managedByAuthorization': ?managedByAuthorization == null ? null : managedByAuthorization!.toMap(),
      'managedByRoleDefinitionId': ?managedByRoleDefinitionId,
      'roleDefinitionId': ?roleDefinitionId,
    };
  }

  factory ResourceProviderAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderAuthorizationResponse(
      allowedThirdPartyExtensions: map['allowedThirdPartyExtensions'] == null ? null : pulumi.Input.decodeList<ThirdPartyExtensionResponse>(map['allowedThirdPartyExtensions'], (value) => ThirdPartyExtensionResponse.fromMap((value as Map).cast<String, dynamic>())),
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      groupingTag: map['groupingTag'] == null ? null : map['groupingTag'] as String,
      managedByAuthorization: map['managedByAuthorization'] == null ? null : ResourceProviderAuthorizationManagedByAuthorizationResponse.fromMap((map['managedByAuthorization'] as Map).cast<String, dynamic>()),
      managedByRoleDefinitionId: map['managedByRoleDefinitionId'] == null ? null : map['managedByRoleDefinitionId'] as String,
      roleDefinitionId: map['roleDefinitionId'] == null ? null : map['roleDefinitionId'] as String,
    );
  }
}

