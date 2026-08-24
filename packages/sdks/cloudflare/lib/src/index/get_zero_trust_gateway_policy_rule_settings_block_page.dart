// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPolicyRuleSettingsBlockPage {
  /// Specify whether to pass the context information as query parameters.
  final pulumi.Input<bool> includeContext;
  /// Specify the URI to which the user is redirected.
  final pulumi.Input<String> targetUri;

  /// Creates a new [GetZeroTrustGatewayPolicyRuleSettingsBlockPage].
  /// [includeContext] Specify whether to pass the context information as query parameters.
  /// [targetUri] Specify the URI to which the user is redirected.
  const GetZeroTrustGatewayPolicyRuleSettingsBlockPage({
    required this.includeContext,
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeContext': includeContext,
      'targetUri': targetUri,
    };
  }

  factory GetZeroTrustGatewayPolicyRuleSettingsBlockPage.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyRuleSettingsBlockPage(
      includeContext: pulumi.Input.fromValue(map['includeContext'] as bool),
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
    );
  }
}
