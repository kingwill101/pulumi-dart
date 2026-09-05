// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_batch_rule_set_rule_action_route_configuration_override_caching.dart';
import 'get_frontdoor_batch_rule_set_rule_action_route_configuration_override_origin_group.dart';

class GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverride {
  /// A `caching` block as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideCaching>> cachings;
  /// An `originGroup` block as defined below.
  final pulumi.Input<List<GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideOriginGroup>> originGroups;

  /// Creates a new [GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverride].
  /// [cachings] A `caching` block as defined below.
  /// [originGroups] An `originGroup` block as defined below.
  const GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverride({
    required this.cachings,
    required this.originGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachings': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideCaching>, List<Map<String, dynamic>>>(cachings, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideCaching, Map<String, dynamic>>(value, (value) => value.toMap())),
      'originGroups': pulumi.Input.mapInputValue<List<GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideOriginGroup>, List<Map<String, dynamic>>>(originGroups, (value) => pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideOriginGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverride.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverride(
      cachings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideCaching>(map['cachings']!, (value) => GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideCaching.fromMap((value as Map).cast<String, dynamic>()))),
      originGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideOriginGroup>(map['originGroups']!, (value) => GetFrontdoorBatchRuleSetRuleActionRouteConfigurationOverrideOriginGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
