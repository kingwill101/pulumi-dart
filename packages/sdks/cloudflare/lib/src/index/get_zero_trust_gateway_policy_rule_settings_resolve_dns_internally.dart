// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally {
  /// Specify the fallback behavior to apply when the internal DNS response code differs from 'NOERROR' or when the response data contains only CNAME records for 'A' or 'AAAA' queries.
  /// Available values: "none", "publicDns".
  final pulumi.Input<String> fallback;
  /// Specify the internal DNS view identifier to pass to the internal DNS service.
  final pulumi.Input<String> viewId;

  /// Creates a new [GetZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally].
  /// [fallback] Specify the fallback behavior to apply when the internal DNS response code differs from 'NOERROR' or when the response data contains only CNAME records for 'A' or 'AAAA' queries.
  /// [viewId] Specify the internal DNS view identifier to pass to the internal DNS service.
  const GetZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally({
    required this.fallback,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallback': fallback,
      'viewId': viewId,
    };
  }

  factory GetZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyRuleSettingsResolveDnsInternally(
      fallback: pulumi.Input.fromValue(map['fallback'] as String),
      viewId: pulumi.Input.fromValue(map['viewId'] as String),
    );
  }
}
