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
  /// Whether the service token is enabled. A disabled service token cannot be used to authenticate; both its current and previous `clientSecret` stop being accepted, but the token itself is preserved and can be re-enabled. A service token reported as leaked is disabled automatically and cannot be re-enabled until its secret is rotated; attempting to do so returns a 409. Defaults to enabled when omitted on create.
  final bool? enabled;
  final String? expiresAt;
  final GetZeroTrustAccessServiceTokenFilter? filter;
  /// UUID.
  final String? id;
  /// Where the leaked `clientSecret` was found, if provided by the reporter. Omitted if the token has not been reported as leaked.
  final String? leakReportUrl;
  /// When a secret scanning partner reported this service token's `clientSecret` as leaked. A leaked service token is disabled and must be rotated before it can be re-enabled. Cleared once the secret is rotated. Omitted if the token has not been reported as leaked.
  final String? leakReportedAt;
  /// The secret scanning partner that reported the leak. Omitted if the token has not been reported as leaked.
  final String? leakReporter;
  /// The name of the service token.
  final String? name;
  /// UUID.
  final String? serviceTokenId;
  /// Tags associated with the service token, as key-value pairs. On update, replaces all existing tags.
  final Map<String, String>? tags;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetZeroTrustAccessServiceTokenResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [clientId] The Client ID for the service token. Access will check for this value in the `CF-Access-Client-ID` request header.
  /// [duration] The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`, or the special value `forever` for non-expiring tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
  /// [enabled] Whether the service token is enabled. A disabled service token cannot be used to authenticate; both its current and previous `clientSecret` stop being accepted, but the token itself is preserved and can be re-enabled. A service token reported as leaked is disabled automatically and cannot be re-enabled until its secret is rotated; attempting to do so returns a 409. Defaults to enabled when omitted on create.
  /// [expiresAt] Optional.
  /// [filter] Optional.
  /// [id] UUID.
  /// [leakReportUrl] Where the leaked `clientSecret` was found, if provided by the reporter. Omitted if the token has not been reported as leaked.
  /// [leakReportedAt] When a secret scanning partner reported this service token's `clientSecret` as leaked. A leaked service token is disabled and must be rotated before it can be re-enabled. Cleared once the secret is rotated. Omitted if the token has not been reported as leaked.
  /// [leakReporter] The secret scanning partner that reported the leak. Omitted if the token has not been reported as leaked.
  /// [name] The name of the service token.
  /// [serviceTokenId] UUID.
  /// [tags] Tags associated with the service token, as key-value pairs. On update, replaces all existing tags.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessServiceTokenResult({
    this.accountId,
    this.clientId,
    this.duration,
    this.enabled,
    this.expiresAt,
    this.filter,
    this.id,
    this.leakReportUrl,
    this.leakReportedAt,
    this.leakReporter,
    this.name,
    this.serviceTokenId,
    this.tags,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'clientId': ?clientId,
      'duration': ?duration,
      'enabled': ?enabled,
      'expiresAt': ?expiresAt,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'leakReportUrl': ?leakReportUrl,
      'leakReportedAt': ?leakReportedAt,
      'leakReporter': ?leakReporter,
      'name': ?name,
      'serviceTokenId': ?serviceTokenId,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessServiceTokenResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessServiceTokenResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustAccessServiceTokenFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      leakReportUrl: (() { final guardedValue = map['leakReportUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      leakReportedAt: (() { final guardedValue = map['leakReportedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      leakReporter: (() { final guardedValue = map['leakReporter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceTokenId: (() { final guardedValue = map['serviceTokenId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
