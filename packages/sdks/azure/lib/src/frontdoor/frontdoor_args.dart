// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_backend_pool.dart';
import 'frontdoor_backend_pool_health_probe.dart';
import 'frontdoor_backend_pool_load_balancing.dart';
import 'frontdoor_backend_pool_setting.dart';
import 'frontdoor_frontend_endpoint.dart';
import 'frontdoor_routing_rule.dart';

/// {@template pulumi_frontdoor_frontdoor_frontdoor_args_doc}
/// The set of arguments for Frontdoor.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_frontdoor_frontdoor_args_doc}
class FrontdoorArgs {
  /// A `backend_pool_health_probe` block as defined below.
  final pulumi.Input<List<FrontdoorBackendPoolHealthProbe>> backendPoolHealthProbes;
  /// A `backend_pool_load_balancing` block as defined below.
  final pulumi.Input<List<FrontdoorBackendPoolLoadBalancing>> backendPoolLoadBalancings;
  /// A `backend_pool_settings` block as defined below.
  final pulumi.Input<List<FrontdoorBackendPoolSetting>>? backendPoolSettings;
  /// A `backend_pool` block as defined below.
  ///
  /// > Azure by default allows specifying up to 50 Backend Pools - but this quota can be increased via Microsoft Support.
  final pulumi.Input<List<FrontdoorBackendPool>> backendPools;
  /// A friendly name for the Front Door service.
  final pulumi.Input<String>? friendlyName;
  /// A `frontend_endpoint` block as defined below.
  final pulumi.Input<List<FrontdoorFrontendEndpoint>> frontendEndpoints;
  /// Should the Front Door Load Balancer be Enabled? Defaults to `true`.
  final pulumi.Input<bool>? loadBalancerEnabled;
  /// Specifies the name of the Front Door service. Must be globally unique. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group in which the Front Door service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `routing_rule` block as defined below.
  final pulumi.Input<List<FrontdoorRoutingRule>> routingRules;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FrontdoorArgs].
  /// [backendPoolHealthProbes] A `backend_pool_health_probe` block as defined below.
  /// [backendPoolLoadBalancings] A `backend_pool_load_balancing` block as defined below.
  /// [backendPoolSettings] A `backend_pool_settings` block as defined below.
  /// [backendPools] A `backend_pool` block as defined below.
  /// [friendlyName] A friendly name for the Front Door service.
  /// [frontendEndpoints] A `frontend_endpoint` block as defined below.
  /// [loadBalancerEnabled] Should the Front Door Load Balancer be Enabled? Defaults to `true`.
  /// [name] Specifies the name of the Front Door service. Must be globally unique. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the Front Door service should exist. Changing this forces a new resource to be created.
  /// [routingRules] A `routing_rule` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  FrontdoorArgs({
    required pulumi.Output<List<FrontdoorBackendPoolHealthProbe>> backendPoolHealthProbes,
    required pulumi.Output<List<FrontdoorBackendPoolLoadBalancing>> backendPoolLoadBalancings,
    pulumi.Output<List<FrontdoorBackendPoolSetting>>? backendPoolSettings,
    required pulumi.Output<List<FrontdoorBackendPool>> backendPools,
    pulumi.Output<String>? friendlyName,
    required pulumi.Output<List<FrontdoorFrontendEndpoint>> frontendEndpoints,
    pulumi.Output<bool>? loadBalancerEnabled,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<List<FrontdoorRoutingRule>> routingRules,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      backendPoolHealthProbes = pulumi.Input.asInput<List<FrontdoorBackendPoolHealthProbe>>(backendPoolHealthProbes),
      backendPoolLoadBalancings = pulumi.Input.asInput<List<FrontdoorBackendPoolLoadBalancing>>(backendPoolLoadBalancings),
      backendPoolSettings = pulumi.Input.asOptionalInput<List<FrontdoorBackendPoolSetting>>(backendPoolSettings),
      backendPools = pulumi.Input.asInput<List<FrontdoorBackendPool>>(backendPools),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      frontendEndpoints = pulumi.Input.asInput<List<FrontdoorFrontendEndpoint>>(frontendEndpoints),
      loadBalancerEnabled = pulumi.Input.asOptionalInput<bool>(loadBalancerEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routingRules = pulumi.Input.asInput<List<FrontdoorRoutingRule>>(routingRules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPoolHealthProbes': pulumi.Input.mapInputValue<List<FrontdoorBackendPoolHealthProbe>, List<Map<String, dynamic>>>(backendPoolHealthProbes, (value) => pulumi.Input.encodeList<FrontdoorBackendPoolHealthProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendPoolLoadBalancings': pulumi.Input.mapInputValue<List<FrontdoorBackendPoolLoadBalancing>, List<Map<String, dynamic>>>(backendPoolLoadBalancings, (value) => pulumi.Input.encodeList<FrontdoorBackendPoolLoadBalancing, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendPoolSettings': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBackendPoolSetting>, List<Map<String, dynamic>>>(backendPoolSettings, (value) => pulumi.Input.encodeList<FrontdoorBackendPoolSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendPools': pulumi.Input.mapInputValue<List<FrontdoorBackendPool>, List<Map<String, dynamic>>>(backendPools, (value) => pulumi.Input.encodeList<FrontdoorBackendPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'friendlyName': ?friendlyName,
      'frontendEndpoints': pulumi.Input.mapInputValue<List<FrontdoorFrontendEndpoint>, List<Map<String, dynamic>>>(frontendEndpoints, (value) => pulumi.Input.encodeList<FrontdoorFrontendEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerEnabled': ?loadBalancerEnabled,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'routingRules': pulumi.Input.mapInputValue<List<FrontdoorRoutingRule>, List<Map<String, dynamic>>>(routingRules, (value) => pulumi.Input.encodeList<FrontdoorRoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory FrontdoorArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorArgs(
      backendPoolHealthProbes: pulumi.Output.create<List<FrontdoorBackendPoolHealthProbe>>(pulumi.Input.decodeList<FrontdoorBackendPoolHealthProbe>(map['backendPoolHealthProbes'], (value) => FrontdoorBackendPoolHealthProbe.fromMap((value as Map).cast<String, dynamic>()))),
      backendPoolLoadBalancings: pulumi.Output.create<List<FrontdoorBackendPoolLoadBalancing>>(pulumi.Input.decodeList<FrontdoorBackendPoolLoadBalancing>(map['backendPoolLoadBalancings'], (value) => FrontdoorBackendPoolLoadBalancing.fromMap((value as Map).cast<String, dynamic>()))),
      backendPoolSettings: map['backendPoolSettings'] == null ? null : pulumi.Output.create<List<FrontdoorBackendPoolSetting>>(pulumi.Input.decodeList<FrontdoorBackendPoolSetting>(map['backendPoolSettings'], (value) => FrontdoorBackendPoolSetting.fromMap((value as Map).cast<String, dynamic>()))),
      backendPools: pulumi.Output.create<List<FrontdoorBackendPool>>(pulumi.Input.decodeList<FrontdoorBackendPool>(map['backendPools'], (value) => FrontdoorBackendPool.fromMap((value as Map).cast<String, dynamic>()))),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      frontendEndpoints: pulumi.Output.create<List<FrontdoorFrontendEndpoint>>(pulumi.Input.decodeList<FrontdoorFrontendEndpoint>(map['frontendEndpoints'], (value) => FrontdoorFrontendEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      loadBalancerEnabled: map['loadBalancerEnabled'] == null ? null : pulumi.Output.create<bool>(map['loadBalancerEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routingRules: pulumi.Output.create<List<FrontdoorRoutingRule>>(pulumi.Input.decodeList<FrontdoorRoutingRule>(map['routingRules'], (value) => FrontdoorRoutingRule.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

