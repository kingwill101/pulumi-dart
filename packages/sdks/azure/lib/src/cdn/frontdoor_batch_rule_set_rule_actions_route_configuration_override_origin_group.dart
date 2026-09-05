// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideOriginGroup {
  /// The Front Door Origin Group resource ID that the request should be routed to.
  ///
  /// &gt; **Note:** If you remove the `originGroup` block from a rule that currently points at the only enabled origin in an Origin Group, apply the Batch Rule Set update first and then remove or disable the last origin in a separate apply. The service rejects deleting or disabling the last origin while the Origin Group is still associated with a route or a rule.
  final pulumi.Input<String> cdnFrontdoorOriginGroupId;
  /// The forwarding protocol the request is redirected as. Possible values are `MatchRequest`, `HttpOnly`, and `HttpsOnly`.
  final pulumi.Input<String> forwardingProtocol;

  /// Creates a new [FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideOriginGroup].
  /// [cdnFrontdoorOriginGroupId] The Front Door Origin Group resource ID that the request should be routed to.
  /// [forwardingProtocol] The forwarding protocol the request is redirected as. Possible values are `MatchRequest`, `HttpOnly`, and `HttpsOnly`.
  const FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideOriginGroup({
    required this.cdnFrontdoorOriginGroupId,
    required this.forwardingProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorOriginGroupId': cdnFrontdoorOriginGroupId,
      'forwardingProtocol': forwardingProtocol,
    };
  }

  factory FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideOriginGroup.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideOriginGroup(
      cdnFrontdoorOriginGroupId: pulumi.Input.fromValue(map['cdnFrontdoorOriginGroupId'] as String),
      forwardingProtocol: pulumi.Input.fromValue(map['forwardingProtocol'] as String),
    );
  }
}
