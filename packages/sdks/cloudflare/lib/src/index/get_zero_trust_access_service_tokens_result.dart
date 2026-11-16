// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessServiceTokensResult {
  /// The Client ID for the service token. Access will check for this value in the `CF-Access-Client-ID` request header.
  final pulumi.Input<String> clientId;
  /// The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`, or the special value `forever` for non-expiring tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
  final pulumi.Input<String> duration;
  /// Whether the service token is enabled. A disabled service token cannot be used to authenticate; both its current and previous `clientSecret` stop being accepted, but the token itself is preserved and can be re-enabled. A service token reported as leaked is disabled automatically and cannot be re-enabled until its secret is rotated; attempting to do so returns a 409. Defaults to enabled when omitted on create.
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> expiresAt;
  /// The ID of the service token.
  final pulumi.Input<String> id;
  /// Where the leaked `clientSecret` was found, if provided by the reporter. Omitted if the token has not been reported as leaked.
  final pulumi.Input<String> leakReportUrl;
  /// When a secret scanning partner reported this service token's `clientSecret` as leaked. A leaked service token is disabled and must be rotated before it can be re-enabled. Cleared once the secret is rotated. Omitted if the token has not been reported as leaked.
  final pulumi.Input<String> leakReportedAt;
  /// The secret scanning partner that reported the leak. Omitted if the token has not been reported as leaked.
  final pulumi.Input<String> leakReporter;
  /// The name of the service token.
  final pulumi.Input<String> name;
  /// Tags associated with the service token, as key-value pairs. On update, replaces all existing tags.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetZeroTrustAccessServiceTokensResult].
  /// [clientId] The Client ID for the service token. Access will check for this value in the `CF-Access-Client-ID` request header.
  /// [duration] The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`, or the special value `forever` for non-expiring tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
  /// [enabled] Whether the service token is enabled. A disabled service token cannot be used to authenticate; both its current and previous `clientSecret` stop being accepted, but the token itself is preserved and can be re-enabled. A service token reported as leaked is disabled automatically and cannot be re-enabled until its secret is rotated; attempting to do so returns a 409. Defaults to enabled when omitted on create.
  /// [expiresAt] Required.
  /// [id] The ID of the service token.
  /// [leakReportUrl] Where the leaked `clientSecret` was found, if provided by the reporter. Omitted if the token has not been reported as leaked.
  /// [leakReportedAt] When a secret scanning partner reported this service token's `clientSecret` as leaked. A leaked service token is disabled and must be rotated before it can be re-enabled. Cleared once the secret is rotated. Omitted if the token has not been reported as leaked.
  /// [leakReporter] The secret scanning partner that reported the leak. Omitted if the token has not been reported as leaked.
  /// [name] The name of the service token.
  /// [tags] Tags associated with the service token, as key-value pairs. On update, replaces all existing tags.
  const GetZeroTrustAccessServiceTokensResult({
    required this.clientId,
    required this.duration,
    required this.enabled,
    required this.expiresAt,
    required this.id,
    required this.leakReportUrl,
    required this.leakReportedAt,
    required this.leakReporter,
    required this.name,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'duration': duration,
      'enabled': enabled,
      'expiresAt': expiresAt,
      'id': id,
      'leakReportUrl': leakReportUrl,
      'leakReportedAt': leakReportedAt,
      'leakReporter': leakReporter,
      'name': name,
      'tags': tags,
    };
  }

  factory GetZeroTrustAccessServiceTokensResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessServiceTokensResult(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expiresAt: pulumi.Input.fromValue(map['expiresAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      leakReportUrl: pulumi.Input.fromValue(map['leakReportUrl'] as String),
      leakReportedAt: pulumi.Input.fromValue(map['leakReportedAt'] as String),
      leakReporter: pulumi.Input.fromValue(map['leakReporter'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
