// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_access_service_token_filter.dart';

/// Result data returned by getZeroTrustAccessServiceToken.
class GetZeroTrustAccessServiceTokenResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// The Client ID for the service token. Access will check for this value in the `CF-Access-Client-ID` request header.
  final String? clientId;
  /// The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`, or the special value `forever` for non-expiring tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
  final String? duration;
  final String? expiresAt;
  final GetZeroTrustAccessServiceTokenFilter? filter;
  /// UUID.
  final String? id;
  /// The name of the service token.
  final String? name;
  /// UUID.
  final String? serviceTokenId;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetZeroTrustAccessServiceTokenResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [clientId] The Client ID for the service token. Access will check for this value in the `CF-Access-Client-ID` request header.
  /// [duration] The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`, or the special value `forever` for non-expiring tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
  /// [expiresAt] Optional.
  /// [filter] Optional.
  /// [id] UUID.
  /// [name] The name of the service token.
  /// [serviceTokenId] UUID.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessServiceTokenResult({
    this.accountId,
    this.clientId,
    this.duration,
    this.expiresAt,
    this.filter,
    this.id,
    this.name,
    this.serviceTokenId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'clientId': ?clientId,
      'duration': ?duration,
      'expiresAt': ?expiresAt,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'name': ?name,
      'serviceTokenId': ?serviceTokenId,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessServiceTokenResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessServiceTokenResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustAccessServiceTokenFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceTokenId: (() { final guardedValue = map['serviceTokenId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
