// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_batch_rule_set_rule_actions_route_configuration_override_caching.dart';
import 'frontdoor_batch_rule_set_rule_actions_route_configuration_override_origin_group.dart';

class FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverride {
  /// A `caching` block as defined below.
  final pulumi.Input<FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideCaching> caching;
  /// An `originGroup` block as defined below.
  final pulumi.Input<FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideOriginGroup?>? originGroup;

  /// Creates a new [FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverride].
  /// [caching] A `caching` block as defined below.
  /// [originGroup] An `originGroup` block as defined below.
  const FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverride({
    required this.caching,
    this.originGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': pulumi.Input.mapInputValue<FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideCaching, Map<String, dynamic>>(caching, (value) => value.toMap()),
      'originGroup': ?pulumi.Input.mapOptionalInputValue<FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideOriginGroup, Map<String, dynamic>>(originGroup, (value) => value.toMap()),
    };
  }

  factory FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverride.fromMap(Map<String, dynamic> map) {
    return FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverride(
      caching: pulumi.Input.fromValue(FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideCaching.fromMap((map['caching']! as Map).cast<String, dynamic>())),
      originGroup: (() { final guardedValue = map['originGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorBatchRuleSetRuleActionsRouteConfigurationOverrideOriginGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
