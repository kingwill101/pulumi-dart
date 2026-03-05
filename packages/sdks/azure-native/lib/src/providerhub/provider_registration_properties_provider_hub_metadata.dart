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
      directRpRoleDefinitionId: (() { final guardedValue = map['directRpRoleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalAsyncOperationResourceTypeName: (() { final guardedValue = map['globalAsyncOperationResourceTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerAuthentication: (() { final guardedValue = map['providerAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderHubMetadataProviderAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerAuthorizations: (() { final guardedValue = map['providerAuthorizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceProviderAuthorization>(guardedValue, (value) => ResourceProviderAuthorization.fromMap((value as Map).cast<String, dynamic>()))); })(),
      regionalAsyncOperationResourceTypeName: (() { final guardedValue = map['regionalAsyncOperationResourceTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thirdPartyProviderAuthorization: (() { final guardedValue = map['thirdPartyProviderAuthorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderHubMetadataThirdPartyProviderAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

