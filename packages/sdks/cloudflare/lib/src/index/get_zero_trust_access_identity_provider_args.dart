// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_identity_provider_filter.dart';

/// {@template pulumi_index_get_zero_trust_access_identity_provider_get_zero_trust_access_identity_provider_args_doc}
/// Arguments for getZeroTrustAccessIdentityProvider.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_identity_provider_get_zero_trust_access_identity_provider_args_doc}
class GetZeroTrustAccessIdentityProviderArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustAccessIdentityProviderFilter?>? filter;
  /// UUID.
  final pulumi.Input<String?>? identityProviderId;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZeroTrustAccessIdentityProviderArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [filter] Optional.
  /// [identityProviderId] UUID.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessIdentityProviderArgs({
    this.accountId,
    this.filter,
    this.identityProviderId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustAccessIdentityProviderFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'identityProviderId': ?identityProviderId,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessIdentityProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessIdentityProviderArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustAccessIdentityProviderFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityProviderId: (() { final guardedValue = map['identityProviderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
