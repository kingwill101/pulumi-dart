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
  const ProviderHubMetadataThirdPartyProviderAuthorizationResponse({
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
      authorizations: (() { final guardedValue = map['authorizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LightHouseAuthorizationResponse>(guardedValue, (value) => LightHouseAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedByTenantId: (() { final guardedValue = map['managedByTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

