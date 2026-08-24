// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationOauthConfigurationGrant {
  /// The lifetime of the access token. Must be in the format `300ms` or `2h45m`. Valid time units are ns, us (or µs), ms, s, m, h.
  final pulumi.Input<String?>? accessTokenLifetime;
  /// The duration of the OAuth session. Must be in the format `300ms` or `2h45m`. Valid time units are ns, us (or µs), ms, s, m, h.
  final pulumi.Input<String?>? sessionDuration;

  /// Creates a new [ZeroTrustAccessApplicationOauthConfigurationGrant].
  /// [accessTokenLifetime] The lifetime of the access token. Must be in the format `300ms` or `2h45m`. Valid time units are ns, us (or µs), ms, s, m, h.
  /// [sessionDuration] The duration of the OAuth session. Must be in the format `300ms` or `2h45m`. Valid time units are ns, us (or µs), ms, s, m, h.
  const ZeroTrustAccessApplicationOauthConfigurationGrant({
    this.accessTokenLifetime,
    this.sessionDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenLifetime': ?accessTokenLifetime,
      'sessionDuration': ?sessionDuration,
    };
  }

  factory ZeroTrustAccessApplicationOauthConfigurationGrant.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationOauthConfigurationGrant(
      accessTokenLifetime: (() { final guardedValue = map['accessTokenLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionDuration: (() { final guardedValue = map['sessionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
