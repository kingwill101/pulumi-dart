// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo {
  final pulumi.Input<String> clientId;
  final pulumi.Input<List<String>> redirectUris;
  final pulumi.Input<String> scope;
  final pulumi.Input<String> tokenEndpointAuthMethod;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo].
  /// [clientId] Required.
  /// [redirectUris] Required.
  /// [scope] Required.
  /// [tokenEndpointAuthMethod] Required.
  const GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo({
    required this.clientId,
    required this.redirectUris,
    required this.scope,
    required this.tokenEndpointAuthMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'redirectUris': redirectUris,
      'scope': scope,
      'tokenEndpointAuthMethod': tokenEndpointAuthMethod,
    };
  }

  factory GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpServerAuthConfigSummaryRegistrationInfo(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      redirectUris: pulumi.Input.fromValue((map['redirectUris'] as List).cast<String>()),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      tokenEndpointAuthMethod: pulumi.Input.fromValue(map['tokenEndpointAuthMethod'] as String),
    );
  }
}
