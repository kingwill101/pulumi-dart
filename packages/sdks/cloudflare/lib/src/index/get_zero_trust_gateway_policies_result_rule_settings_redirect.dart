// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPoliciesResultRuleSettingsRedirect {
  /// Specify whether to pass the context information as query parameters.
  final pulumi.Input<bool> includeContext;
  /// Specify whether to append the path and query parameters from the original request to target_uri.
  final pulumi.Input<bool> preservePathAndQuery;
  /// Specify the URI to which the user is redirected.
  final pulumi.Input<String> targetUri;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultRuleSettingsRedirect].
  /// [includeContext] Specify whether to pass the context information as query parameters.
  /// [preservePathAndQuery] Specify whether to append the path and query parameters from the original request to target_uri.
  /// [targetUri] Specify the URI to which the user is redirected.
  const GetZeroTrustGatewayPoliciesResultRuleSettingsRedirect({
    required this.includeContext,
    required this.preservePathAndQuery,
    required this.targetUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeContext': includeContext,
      'preservePathAndQuery': preservePathAndQuery,
      'targetUri': targetUri,
    };
  }

  factory GetZeroTrustGatewayPoliciesResultRuleSettingsRedirect.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultRuleSettingsRedirect(
      includeContext: pulumi.Input.fromValue(map['includeContext'] as bool),
      preservePathAndQuery: pulumi.Input.fromValue(map['preservePathAndQuery'] as bool),
      targetUri: pulumi.Input.fromValue(map['targetUri'] as String),
    );
  }
}
