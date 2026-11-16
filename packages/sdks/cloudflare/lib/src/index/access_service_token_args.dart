// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_access_service_token_access_service_token_args_doc}
/// The set of arguments for AccessServiceToken.
/// {@endtemplate}
/// {@macro pulumi_index_access_service_token_access_service_token_args_doc}
class AccessServiceTokenArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// A version number identifying the current `clientSecret` associated with the service token. Incrementing it triggers a rotation; the previous secret will still be accepted until the time indicated by `previousClientSecretExpiresAt`. If the service token was reported as leaked, `previousClientSecretExpiresAt` is not required, may not be in the future, and the previous secret is discarded immediately.
  final pulumi.Input<double?>? clientSecretVersion;
  /// The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`, or the special value `forever` for non-expiring tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
  final pulumi.Input<String?>? duration;
  /// Whether the service token is enabled. A disabled service token cannot be used to authenticate; both its current and previous `clientSecret` stop being accepted, but the token itself is preserved and can be re-enabled. A service token reported as leaked is disabled automatically and cannot be re-enabled until its secret is rotated; attempting to do so returns a 409. Defaults to enabled when omitted on create.
  final pulumi.Input<bool?>? enabled;
  /// The name of the service token.
  final pulumi.Input<String> name;
  /// The expiration of the previous `clientSecret`. This can be modified at any point after a rotation. For example, you may extend it further into the future if you need more time to update services with the new secret; or move it into the past to immediately invalidate the previous token in case of compromise. Rotating a service token that was reported as leaked discards the previous secret entirely, so no grace period can be set.
  final pulumi.Input<String?>? previousClientSecretExpiresAt;
  /// Tags associated with the service token, as key-value pairs. On update, replaces all existing tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AccessServiceTokenArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [clientSecretVersion] A version number identifying the current `clientSecret` associated with the service token. Incrementing it triggers a rotation; the previous secret will still be accepted until the time indicated by `previousClientSecretExpiresAt`. If the service token was reported as leaked, `previousClientSecretExpiresAt` is not required, may not be in the future, and the previous secret is discarded immediately.
  /// [duration] The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`, or the special value `forever` for non-expiring tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
  /// [enabled] Whether the service token is enabled. A disabled service token cannot be used to authenticate; both its current and previous `clientSecret` stop being accepted, but the token itself is preserved and can be re-enabled. A service token reported as leaked is disabled automatically and cannot be re-enabled until its secret is rotated; attempting to do so returns a 409. Defaults to enabled when omitted on create.
  /// [name] The name of the service token.
  /// [previousClientSecretExpiresAt] The expiration of the previous `clientSecret`. This can be modified at any point after a rotation. For example, you may extend it further into the future if you need more time to update services with the new secret; or move it into the past to immediately invalidate the previous token in case of compromise. Rotating a service token that was reported as leaked discards the previous secret entirely, so no grace period can be set.
  /// [tags] Tags associated with the service token, as key-value pairs. On update, replaces all existing tags.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const AccessServiceTokenArgs({
    this.accountId,
    this.clientSecretVersion,
    this.duration,
    this.enabled,
    required this.name,
    this.previousClientSecretExpiresAt,
    this.tags,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'clientSecretVersion': ?clientSecretVersion,
      'duration': ?duration,
      'enabled': ?enabled,
      'name': name,
      'previousClientSecretExpiresAt': ?previousClientSecretExpiresAt,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory AccessServiceTokenArgs.fromMap(Map<String, dynamic> map) {
    return AccessServiceTokenArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretVersion: (() { final guardedValue = map['clientSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      previousClientSecretExpiresAt: (() { final guardedValue = map['previousClientSecretExpiresAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
