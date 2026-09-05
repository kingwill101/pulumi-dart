// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustAccessServiceToken resources.
class ZeroTrustAccessServiceTokenState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The Client ID for the service token. Access will check for this value in the `CF-Access-Client-ID` request header.
  final pulumi.Input<String?>? clientId;
  /// The Client Secret for the service token. Access will check for this value in the `CF-Access-Client-Secret` request header.
  final pulumi.Input<String?>? clientSecret;
  /// A version number identifying the current `clientSecret` associated with the service token. Incrementing it triggers a rotation; the previous secret will still be accepted until the time indicated by `previousClientSecretExpiresAt`.
  final pulumi.Input<double?>? clientSecretVersion;
  /// The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`, or the special value `forever` for non-expiring tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
  final pulumi.Input<String?>? duration;
  /// Whether the service token is enabled. A disabled service token cannot be used to authenticate; both its current and previous `clientSecret` stop being accepted, but the token itself is preserved and can be re-enabled at any time. Defaults to enabled when omitted on create.
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<String?>? expiresAt;
  /// The name of the service token.
  final pulumi.Input<String?>? name;
  /// The expiration of the previous `clientSecret`. This can be modified at any point after a rotation. For example, you may extend it further into the future if you need more time to update services with the new secret; or move it into the past to immediately invalidate the previous token in case of compromise.
  final pulumi.Input<String?>? previousClientSecretExpiresAt;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZeroTrustAccessServiceTokenState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [clientId] The Client ID for the service token. Access will check for this value in the `CF-Access-Client-ID` request header.
  /// [clientSecret] The Client Secret for the service token. Access will check for this value in the `CF-Access-Client-Secret` request header.
  /// [clientSecretVersion] A version number identifying the current `clientSecret` associated with the service token. Incrementing it triggers a rotation; the previous secret will still be accepted until the time indicated by `previousClientSecretExpiresAt`.
  /// [duration] The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`, or the special value `forever` for non-expiring tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
  /// [enabled] Whether the service token is enabled. A disabled service token cannot be used to authenticate; both its current and previous `clientSecret` stop being accepted, but the token itself is preserved and can be re-enabled at any time. Defaults to enabled when omitted on create.
  /// [expiresAt] Optional.
  /// [name] The name of the service token.
  /// [previousClientSecretExpiresAt] The expiration of the previous `clientSecret`. This can be modified at any point after a rotation. For example, you may extend it further into the future if you need more time to update services with the new secret; or move it into the past to immediately invalidate the previous token in case of compromise.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const ZeroTrustAccessServiceTokenState({
    this.accountId,
    this.clientId,
    this.clientSecret,
    this.clientSecretVersion,
    this.duration,
    this.enabled,
    this.expiresAt,
    this.name,
    this.previousClientSecretExpiresAt,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'clientSecretVersion': ?clientSecretVersion,
      'duration': ?duration,
      'enabled': ?enabled,
      'expiresAt': ?expiresAt,
      'name': ?name,
      'previousClientSecretExpiresAt': ?previousClientSecretExpiresAt,
      'zoneId': ?zoneId,
    };
  }

  factory ZeroTrustAccessServiceTokenState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessServiceTokenState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretVersion: (() { final guardedValue = map['clientSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expiresAt: (() { final guardedValue = map['expiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      previousClientSecretExpiresAt: (() { final guardedValue = map['previousClientSecretExpiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
