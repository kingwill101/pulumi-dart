// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_hub_metadata_provider_authentication.dart';
import 'provider_hub_metadata_third_party_provider_authorization.dart';
import 'resource_provider_authorization.dart';

/// The provider hub metadata.
class ProviderRegistrationPropertiesProviderHubMetadata {
  /// The direct RP role definition id.
  final pulumi.Input<String>? directRpRoleDefinitionId;
  /// The global async operation resource type name.
  final pulumi.Input<String>? globalAsyncOperationResourceTypeName;
  /// The provider authentication.
  final pulumi.Input<ProviderHubMetadataProviderAuthentication>? providerAuthentication;
  /// The provider authorizations.
  final pulumi.Input<List<ResourceProviderAuthorization>>? providerAuthorizations;
  /// The regional async operation resource type name.
  final pulumi.Input<String>? regionalAsyncOperationResourceTypeName;
  /// The third party provider authorization.
  final pulumi.Input<ProviderHubMetadataThirdPartyProviderAuthorization>? thirdPartyProviderAuthorization;

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
      'providerAuthentication': ?pulumi.Input.mapOptionalInputValue<ProviderHubMetadataProviderAuthentication, Map<String, dynamic>>(providerAuthentication, (value) => value.toMap()),
      'providerAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<ResourceProviderAuthorization>, List<Map<String, dynamic>>>(providerAuthorizations, (value) => pulumi.Input.encodeList<ResourceProviderAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionalAsyncOperationResourceTypeName': ?regionalAsyncOperationResourceTypeName,
      'thirdPartyProviderAuthorization': ?pulumi.Input.mapOptionalInputValue<ProviderHubMetadataThirdPartyProviderAuthorization, Map<String, dynamic>>(thirdPartyProviderAuthorization, (value) => value.toMap()),
    };
  }

  factory ProviderRegistrationPropertiesProviderHubMetadata.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationPropertiesProviderHubMetadata(
      directRpRoleDefinitionId: map['directRpRoleDefinitionId'] == null ? null : (map['directRpRoleDefinitionId'] as String).input(),
      globalAsyncOperationResourceTypeName: map['globalAsyncOperationResourceTypeName'] == null ? null : (map['globalAsyncOperationResourceTypeName'] as String).input(),
      providerAuthentication: map['providerAuthentication'] == null ? null : (ProviderHubMetadataProviderAuthentication.fromMap((map['providerAuthentication'] as Map).cast<String, dynamic>())).input(),
      providerAuthorizations: map['providerAuthorizations'] == null ? null : (pulumi.Input.decodeList<ResourceProviderAuthorization>(map['providerAuthorizations'], (value) => ResourceProviderAuthorization.fromMap((value as Map).cast<String, dynamic>()))).input(),
      regionalAsyncOperationResourceTypeName: map['regionalAsyncOperationResourceTypeName'] == null ? null : (map['regionalAsyncOperationResourceTypeName'] as String).input(),
      thirdPartyProviderAuthorization: map['thirdPartyProviderAuthorization'] == null ? null : (ProviderHubMetadataThirdPartyProviderAuthorization.fromMap((map['thirdPartyProviderAuthorization'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

