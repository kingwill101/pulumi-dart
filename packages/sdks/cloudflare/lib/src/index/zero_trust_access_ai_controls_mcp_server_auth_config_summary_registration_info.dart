// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo {
  final pulumi.Input<String?>? clientId;
  final pulumi.Input<List<String>?>? redirectUris;
  final pulumi.Input<String?>? scope;
  final pulumi.Input<String?>? tokenEndpointAuthMethod;

  /// Creates a new [ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo].
  /// [clientId] Optional.
  /// [redirectUris] Optional.
  /// [scope] Optional.
  /// [tokenEndpointAuthMethod] Optional.
  const ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo({
    this.clientId,
    this.redirectUris,
    this.scope,
    this.tokenEndpointAuthMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'redirectUris': ?redirectUris,
      'scope': ?scope,
      'tokenEndpointAuthMethod': ?tokenEndpointAuthMethod,
    };
  }

  factory ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUris: (() { final guardedValue = map['redirectUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpointAuthMethod: (() { final guardedValue = map['tokenEndpointAuthMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
