// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig {
  final pulumi.Input<String?>? authorizationEndpoint;
  final pulumi.Input<String?>? issuer;
  final pulumi.Input<String?>? resource;
  final pulumi.Input<String?>? revocationEndpoint;
  final pulumi.Input<String?>? tokenEndpoint;

  /// Creates a new [ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig].
  /// [authorizationEndpoint] Optional.
  /// [issuer] Optional.
  /// [resource] Optional.
  /// [revocationEndpoint] Optional.
  /// [tokenEndpoint] Optional.
  const ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig({
    this.authorizationEndpoint,
    this.issuer,
    this.resource,
    this.revocationEndpoint,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationEndpoint': ?authorizationEndpoint,
      'issuer': ?issuer,
      'resource': ?resource,
      'revocationEndpoint': ?revocationEndpoint,
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig(
      authorizationEndpoint: (() { final guardedValue = map['authorizationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revocationEndpoint: (() { final guardedValue = map['revocationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
