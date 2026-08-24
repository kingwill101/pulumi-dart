// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_service_token_filter.dart';

/// {@template pulumi_index_get_zero_trust_access_service_token_get_zero_trust_access_service_token_args_doc}
/// Arguments for getZeroTrustAccessServiceToken.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_service_token_get_zero_trust_access_service_token_args_doc}
class GetZeroTrustAccessServiceTokenArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustAccessServiceTokenFilter?>? filter;
  /// UUID.
  final pulumi.Input<String?>? serviceTokenId;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZeroTrustAccessServiceTokenArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [filter] Optional.
  /// [serviceTokenId] UUID.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessServiceTokenArgs({
    this.accountId,
    this.filter,
    this.serviceTokenId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustAccessServiceTokenFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'serviceTokenId': ?serviceTokenId,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessServiceTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessServiceTokenArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustAccessServiceTokenFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceTokenId: (() { final guardedValue = map['serviceTokenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
