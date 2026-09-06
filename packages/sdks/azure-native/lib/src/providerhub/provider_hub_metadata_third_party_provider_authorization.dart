// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'light_house_authorization.dart';

/// The third party provider authorization.
class ProviderHubMetadataThirdPartyProviderAuthorization {
  /// The authorizations.
  final pulumi.Input<List<LightHouseAuthorization>?>? authorizations;
  /// The managed by tenant id.
  final pulumi.Input<String?>? managedByTenantId;

  /// Creates a new [ProviderHubMetadataThirdPartyProviderAuthorization].
  /// [authorizations] The authorizations.
  /// [managedByTenantId] The managed by tenant id.
  const ProviderHubMetadataThirdPartyProviderAuthorization({
    this.authorizations,
    this.managedByTenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizations': ?pulumi.Input.mapOptionalInputValue<List<LightHouseAuthorization>, List<Map<String, dynamic>>>(authorizations, (value) => pulumi.Input.encodeList<LightHouseAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedByTenantId': ?managedByTenantId,
    };
  }

  factory ProviderHubMetadataThirdPartyProviderAuthorization.fromMap(Map<String, dynamic> map) {
    return ProviderHubMetadataThirdPartyProviderAuthorization(
      authorizations: (() { final guardedValue = map['authorizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LightHouseAuthorization>(guardedValue, (value) => LightHouseAuthorization.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedByTenantId: (() { final guardedValue = map['managedByTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
