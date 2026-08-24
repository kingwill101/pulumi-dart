// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_identity_providers_get_zero_trust_access_identity_providers_args_doc}
/// Arguments for getZeroTrustAccessIdentityProviders.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_identity_providers_get_zero_trust_access_identity_providers_args_doc}
class GetZeroTrustAccessIdentityProvidersArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Indicates to Access to only retrieve identity providers that have the System for Cross-Domain Identity Management (SCIM) enabled.
  final pulumi.Input<String?>? scimEnabled;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZeroTrustAccessIdentityProvidersArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [maxItems] Max items to fetch, default: 1000
  /// [scimEnabled] Indicates to Access to only retrieve identity providers that have the System for Cross-Domain Identity Management (SCIM) enabled.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessIdentityProvidersArgs({
    this.accountId,
    this.maxItems,
    this.scimEnabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'scimEnabled': ?scimEnabled,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessIdentityProvidersArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessIdentityProvidersArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      scimEnabled: (() { final guardedValue = map['scimEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
