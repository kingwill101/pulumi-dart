// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideOriginGroup {
  /// The ID of the Front Door Origin Group associated with this action.
  final pulumi.Input<String> cdnFrontdoorOriginGroupId;
  /// The forwarding protocol applied to this action.
  final pulumi.Input<String> forwardingProtocol;

  /// Creates a new [GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideOriginGroup].
  /// [cdnFrontdoorOriginGroupId] The ID of the Front Door Origin Group associated with this action.
  /// [forwardingProtocol] The forwarding protocol applied to this action.
  const GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideOriginGroup({
    required this.cdnFrontdoorOriginGroupId,
    required this.forwardingProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorOriginGroupId': cdnFrontdoorOriginGroupId,
      'forwardingProtocol': forwardingProtocol,
    };
  }

  factory GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideOriginGroup.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideOriginGroup(
      cdnFrontdoorOriginGroupId: pulumi.Input.fromValue(map['cdnFrontdoorOriginGroupId'] as String),
      forwardingProtocol: pulumi.Input.fromValue(map['forwardingProtocol'] as String),
    );
  }
}
