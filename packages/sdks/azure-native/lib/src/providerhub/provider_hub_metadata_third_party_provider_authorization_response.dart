// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'light_house_authorization_response.dart';

/// The third party provider authorization.
class ProviderHubMetadataThirdPartyProviderAuthorizationResponse {
  /// The authorizations.
  final pulumi.Input<List<LightHouseAuthorizationResponse>>? authorizations;
  /// The managed by tenant id.
  final pulumi.Input<String>? managedByTenantId;

  /// Creates a new [ProviderHubMetadataThirdPartyProviderAuthorizationResponse].
  /// [authorizations] The authorizations.
  /// [managedByTenantId] The managed by tenant id.
  ProviderHubMetadataThirdPartyProviderAuthorizationResponse({
    this.authorizations,
    this.managedByTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizations': ?pulumi.Input.mapOptionalInputValue<List<LightHouseAuthorizationResponse>, List<Map<String, dynamic>>>(authorizations, (value) => pulumi.Input.encodeList<LightHouseAuthorizationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedByTenantId': ?managedByTenantId,
    };
  }

  factory ProviderHubMetadataThirdPartyProviderAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return ProviderHubMetadataThirdPartyProviderAuthorizationResponse(
      authorizations: map['authorizations'] == null ? null : (pulumi.Input.decodeList<LightHouseAuthorizationResponse>(map['authorizations'], (value) => LightHouseAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      managedByTenantId: map['managedByTenantId'] == null ? null : (map['managedByTenantId'] as String).input(),
    );
  }
}

