// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPoliciesResultRuleSettingsBlockPage {
  /// Specify whether to pass the context information as query parameters.
  final pulumi.Input<bool> includeContext;
  /// Specify the URI to which the user is redirected.
  final pulumi.Input<String> targetUri;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultRuleSettingsBlockPage].
  /// [includeContext] Specify whether to pass the context information as query parameters.
  /// [targetUri] Specify the URI to which the user is redirected.
  const GetZeroTrustGatewayPoliciesResultRuleSettingsBlockPage({
    required this.includeContext,
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeContext': includeContext,
      'targetUri': targetUri,
    };
  }

  factory GetZeroTrustGatewayPoliciesResultRuleSettingsBlockPage.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultRuleSettingsBlockPage(
      includeContext: pulumi.Input.fromValue(map['includeContext'] as bool),
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
    );
  }
}
