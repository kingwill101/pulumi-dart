// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig {
  final pulumi.Input<String> authorizationEndpoint;
  final pulumi.Input<String> issuer;
  final pulumi.Input<String> resource;
  final pulumi.Input<String> revocationEndpoint;
  final pulumi.Input<String> tokenEndpoint;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig].
  /// [authorizationEndpoint] Required.
  /// [issuer] Required.
  /// [resource] Required.
  /// [revocationEndpoint] Required.
  /// [tokenEndpoint] Required.
  const GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig({
    required this.authorizationEndpoint,
    required this.issuer,
    required this.resource,
    required this.revocationEndpoint,
    required this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationEndpoint': authorizationEndpoint,
      'issuer': issuer,
      'resource': resource,
      'revocationEndpoint': revocationEndpoint,
      'tokenEndpoint': tokenEndpoint,
    };
  }

  factory GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryConfig(
      authorizationEndpoint: pulumi.Input.fromValue(map['authorizationEndpoint'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      resource: pulumi.Input.fromValue(map['resource'] as String),
      revocationEndpoint: pulumi.Input.fromValue(map['revocationEndpoint'] as String),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
    );
  }
}
