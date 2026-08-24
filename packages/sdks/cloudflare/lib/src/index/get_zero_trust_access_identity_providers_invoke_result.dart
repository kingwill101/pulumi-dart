// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_identity_providers_result.dart';

/// Result data returned by getZeroTrustAccessIdentityProviders.
class GetZeroTrustAccessIdentityProvidersInvokeResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustAccessIdentityProvidersResult>? results;
  /// Indicates to Access to only retrieve identity providers that have the System for Cross-Domain Identity Management (SCIM) enabled.
  final String? scimEnabled;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetZeroTrustAccessIdentityProvidersInvokeResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [scimEnabled] Indicates to Access to only retrieve identity providers that have the System for Cross-Domain Identity Management (SCIM) enabled.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessIdentityProvidersInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
    this.scimEnabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustAccessIdentityProvidersResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scimEnabled': ?scimEnabled,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessIdentityProvidersInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessIdentityProvidersInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustAccessIdentityProvidersResult>(guardedValue, (value) => GetZeroTrustAccessIdentityProvidersResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      scimEnabled: (() { final guardedValue = map['scimEnabled']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
