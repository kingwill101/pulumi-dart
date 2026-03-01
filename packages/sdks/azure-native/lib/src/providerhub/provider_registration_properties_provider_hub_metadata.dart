// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_hub_metadata_provider_authentication.dart';
import 'provider_hub_metadata_third_party_provider_authorization.dart';
import 'resource_provider_authorization.dart';

/// The provider hub metadata.
class ProviderRegistrationPropertiesProviderHubMetadata {
  /// The direct RP role definition id.
  final String? directRpRoleDefinitionId;
  /// The global async operation resource type name.
  final String? globalAsyncOperationResourceTypeName;
  /// The provider authentication.
  final ProviderHubMetadataProviderAuthentication? providerAuthentication;
  /// The provider authorizations.
  final List<ResourceProviderAuthorization>? providerAuthorizations;
  /// The regional async operation resource type name.
  final String? regionalAsyncOperationResourceTypeName;
  /// The third party provider authorization.
  final ProviderHubMetadataThirdPartyProviderAuthorization? thirdPartyProviderAuthorization;

  /// Creates a new [ProviderRegistrationPropertiesProviderHubMetadata].
  /// [directRpRoleDefinitionId] The direct RP role definition id.
  /// [globalAsyncOperationResourceTypeName] The global async operation resource type name.
  /// [providerAuthentication] The provider authentication.
  /// [providerAuthorizations] The provider authorizations.
  /// [regionalAsyncOperationResourceTypeName] The regional async operation resource type name.
  /// [thirdPartyProviderAuthorization] The third party provider authorization.
  ProviderRegistrationPropertiesProviderHubMetadata({
    this.directRpRoleDefinitionId,
    this.globalAsyncOperationResourceTypeName,
    this.providerAuthentication,
    this.providerAuthorizations,
    this.regionalAsyncOperationResourceTypeName,
    this.thirdPartyProviderAuthorization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directRpRoleDefinitionId': ?directRpRoleDefinitionId,
      'globalAsyncOperationResourceTypeName': ?globalAsyncOperationResourceTypeName,
      'providerAuthentication': ?providerAuthentication == null ? null : providerAuthentication!.toMap(),
      'providerAuthorizations': ?providerAuthorizations == null ? null : pulumi.Input.encodeList<ResourceProviderAuthorization, Map<String, dynamic>>(providerAuthorizations!, (value) => value.toMap()),
      'regionalAsyncOperationResourceTypeName': ?regionalAsyncOperationResourceTypeName,
      'thirdPartyProviderAuthorization': ?thirdPartyProviderAuthorization == null ? null : thirdPartyProviderAuthorization!.toMap(),
    };
  }

  factory ProviderRegistrationPropertiesProviderHubMetadata.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationPropertiesProviderHubMetadata(
      directRpRoleDefinitionId: map['directRpRoleDefinitionId'] == null ? null : map['directRpRoleDefinitionId'] as String,
      globalAsyncOperationResourceTypeName: map['globalAsyncOperationResourceTypeName'] == null ? null : map['globalAsyncOperationResourceTypeName'] as String,
      providerAuthentication: map['providerAuthentication'] == null ? null : ProviderHubMetadataProviderAuthentication.fromMap((map['providerAuthentication'] as Map).cast<String, dynamic>()),
      providerAuthorizations: map['providerAuthorizations'] == null ? null : pulumi.Input.decodeList<ResourceProviderAuthorization>(map['providerAuthorizations'], (value) => ResourceProviderAuthorization.fromMap((value as Map).cast<String, dynamic>())),
      regionalAsyncOperationResourceTypeName: map['regionalAsyncOperationResourceTypeName'] == null ? null : map['regionalAsyncOperationResourceTypeName'] as String,
      thirdPartyProviderAuthorization: map['thirdPartyProviderAuthorization'] == null ? null : ProviderHubMetadataThirdPartyProviderAuthorization.fromMap((map['thirdPartyProviderAuthorization'] as Map).cast<String, dynamic>()),
    );
  }
}

