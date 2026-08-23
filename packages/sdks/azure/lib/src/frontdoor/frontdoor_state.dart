// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_backend_pool.dart';
import 'frontdoor_backend_pool_health_probe.dart';
import 'frontdoor_backend_pool_load_balancing.dart';
import 'frontdoor_backend_pool_setting.dart';
import 'frontdoor_explicit_resource_order.dart';
import 'frontdoor_frontend_endpoint.dart';
import 'frontdoor_routing_rule.dart';

/// Input properties used for looking up and filtering Frontdoor resources.
class FrontdoorState {
  /// A `backendPoolHealthProbe` block as defined below.
  final pulumi.Input<List<FrontdoorBackendPoolHealthProbe>>? backendPoolHealthProbes;
  /// A map/dictionary of Backend Pool Health Probe Names (key) to the Backend Pool Health Probe ID (value)
  final pulumi.Input<Map<String, String>>? backendPoolHealthProbesMap;
  /// A map/dictionary of Backend Pool Load Balancing Setting Names (key) to the Backend Pool Load Balancing Setting ID (value)
  final pulumi.Input<Map<String, String>>? backendPoolLoadBalancingSettingsMap;
  /// A `backendPoolLoadBalancing` block as defined below.
  final pulumi.Input<List<FrontdoorBackendPoolLoadBalancing>>? backendPoolLoadBalancings;
  /// A `backendPoolSettings` block as defined below.
  final pulumi.Input<List<FrontdoorBackendPoolSetting>>? backendPoolSettings;
  /// A `backendPool` block as defined below.
  ///
  /// &gt; Azure by default allows specifying up to 50 Backend Pools - but this quota can be increased via Microsoft Support.
  final pulumi.Input<List<FrontdoorBackendPool>>? backendPools;
  /// A map/dictionary of Backend Pool Names (key) to the Backend Pool ID (value)
  final pulumi.Input<Map<String, String>>? backendPoolsMap;
  /// The host that each frontendEndpoint must CNAME to.
  final pulumi.Input<String>? cname;
  final pulumi.Input<List<FrontdoorExplicitResourceOrder>>? explicitResourceOrders;
  /// A friendly name for the Front Door service.
  final pulumi.Input<String>? friendlyName;
  /// A `frontendEndpoint` block as defined below.
  final pulumi.Input<List<FrontdoorFrontendEndpoint>>? frontendEndpoints;
  /// A map/dictionary of Frontend Endpoint Names (key) to the Frontend Endpoint ID (value)
  final pulumi.Input<Map<String, String>>? frontendEndpointsMap;
  /// The unique ID of the Front Door which is embedded into the incoming headers `X-Azure-FDID` attribute and maybe used to filter traffic sent by the Front Door to your backend.
  final pulumi.Input<String>? headerFrontdoorId;
  /// Should the Front Door Load Balancer be Enabled? Defaults to `true`.
  final pulumi.Input<bool>? loadBalancerEnabled;
  /// Specifies the name of the Front Door service. Must be globally unique. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group in which the Front Door service should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `routingRule` block as defined below.
  final pulumi.Input<List<FrontdoorRoutingRule>>? routingRules;
  /// A map/dictionary of Routing Rule Names (key) to the Routing Rule ID (value)
  final pulumi.Input<Map<String, String>>? routingRulesMap;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FrontdoorState].
  /// [backendPoolHealthProbes] A `backendPoolHealthProbe` block as defined below.
  /// [backendPoolHealthProbesMap] A map/dictionary of Backend Pool Health Probe Names (key) to the Backend Pool Health Probe ID (value)
  /// [backendPoolLoadBalancingSettingsMap] A map/dictionary of Backend Pool Load Balancing Setting Names (key) to the Backend Pool Load Balancing Setting ID (value)
  /// [backendPoolLoadBalancings] A `backendPoolLoadBalancing` block as defined below.
  /// [backendPoolSettings] A `backendPoolSettings` block as defined below.
  /// [backendPools] A `backendPool` block as defined below.
  /// [backendPoolsMap] A map/dictionary of Backend Pool Names (key) to the Backend Pool ID (value)
  /// [cname] The host that each frontendEndpoint must CNAME to.
  /// [explicitResourceOrders] Optional.
  /// [friendlyName] A friendly name for the Front Door service.
  /// [frontendEndpoints] A `frontendEndpoint` block as defined below.
  /// [frontendEndpointsMap] A map/dictionary of Frontend Endpoint Names (key) to the Frontend Endpoint ID (value)
  /// [headerFrontdoorId] The unique ID of the Front Door which is embedded into the incoming headers `X-Azure-FDID` attribute and maybe used to filter traffic sent by the Front Door to your backend.
  /// [loadBalancerEnabled] Should the Front Door Load Balancer be Enabled? Defaults to `true`.
  /// [name] Specifies the name of the Front Door service. Must be globally unique. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the Front Door service should exist. Changing this forces a new resource to be created.
  /// [routingRules] A `routingRule` block as defined below.
  /// [routingRulesMap] A map/dictionary of Routing Rule Names (key) to the Routing Rule ID (value)
  /// [tags] A mapping of tags to assign to the resource.
  const FrontdoorState({
    this.backendPoolHealthProbes,
    this.backendPoolHealthProbesMap,
    this.backendPoolLoadBalancingSettingsMap,
    this.backendPoolLoadBalancings,
    this.backendPoolSettings,
    this.backendPools,
    this.backendPoolsMap,
    this.cname,
    this.explicitResourceOrders,
    this.friendlyName,
    this.frontendEndpoints,
    this.frontendEndpointsMap,
    this.headerFrontdoorId,
    this.loadBalancerEnabled,
    this.name,
    this.resourceGroupName,
    this.routingRules,
    this.routingRulesMap,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPoolHealthProbes': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBackendPoolHealthProbe>, List<Map<String, dynamic>>>(backendPoolHealthProbes, (value) => pulumi.Input.encodeList<FrontdoorBackendPoolHealthProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendPoolHealthProbesMap': ?backendPoolHealthProbesMap,
      'backendPoolLoadBalancingSettingsMap': ?backendPoolLoadBalancingSettingsMap,
      'backendPoolLoadBalancings': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBackendPoolLoadBalancing>, List<Map<String, dynamic>>>(backendPoolLoadBalancings, (value) => pulumi.Input.encodeList<FrontdoorBackendPoolLoadBalancing, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendPoolSettings': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBackendPoolSetting>, List<Map<String, dynamic>>>(backendPoolSettings, (value) => pulumi.Input.encodeList<FrontdoorBackendPoolSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendPools': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorBackendPool>, List<Map<String, dynamic>>>(backendPools, (value) => pulumi.Input.encodeList<FrontdoorBackendPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendPoolsMap': ?backendPoolsMap,
      'cname': ?cname,
      'explicitResourceOrders': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorExplicitResourceOrder>, List<Map<String, dynamic>>>(explicitResourceOrders, (value) => pulumi.Input.encodeList<FrontdoorExplicitResourceOrder, Map<String, dynamic>>(value, (value) => value.toMap())),
      'friendlyName': ?friendlyName,
      'frontendEndpoints': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorFrontendEndpoint>, List<Map<String, dynamic>>>(frontendEndpoints, (value) => pulumi.Input.encodeList<FrontdoorFrontendEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'frontendEndpointsMap': ?frontendEndpointsMap,
      'headerFrontdoorId': ?headerFrontdoorId,
      'loadBalancerEnabled': ?loadBalancerEnabled,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'routingRules': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorRoutingRule>, List<Map<String, dynamic>>>(routingRules, (value) => pulumi.Input.encodeList<FrontdoorRoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routingRulesMap': ?routingRulesMap,
      'tags': ?tags,
    };
  }

  factory FrontdoorState.fromMap(Map<String, dynamic> map) {
    return FrontdoorState(
      backendPoolHealthProbes: (() { final guardedValue = map['backendPoolHealthProbes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBackendPoolHealthProbe>(guardedValue, (value) => FrontdoorBackendPoolHealthProbe.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backendPoolHealthProbesMap: (() { final guardedValue = map['backendPoolHealthProbesMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      backendPoolLoadBalancingSettingsMap: (() { final guardedValue = map['backendPoolLoadBalancingSettingsMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      backendPoolLoadBalancings: (() { final guardedValue = map['backendPoolLoadBalancings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBackendPoolLoadBalancing>(guardedValue, (value) => FrontdoorBackendPoolLoadBalancing.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backendPoolSettings: (() { final guardedValue = map['backendPoolSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBackendPoolSetting>(guardedValue, (value) => FrontdoorBackendPoolSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backendPools: (() { final guardedValue = map['backendPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorBackendPool>(guardedValue, (value) => FrontdoorBackendPool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backendPoolsMap: (() { final guardedValue = map['backendPoolsMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      cname: (() { final guardedValue = map['cname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      explicitResourceOrders: (() { final guardedValue = map['explicitResourceOrders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorExplicitResourceOrder>(guardedValue, (value) => FrontdoorExplicitResourceOrder.fromMap((value as Map).cast<String, dynamic>()))); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendEndpoints: (() { final guardedValue = map['frontendEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorFrontendEndpoint>(guardedValue, (value) => FrontdoorFrontendEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      frontendEndpointsMap: (() { final guardedValue = map['frontendEndpointsMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      headerFrontdoorId: (() { final guardedValue = map['headerFrontdoorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerEnabled: (() { final guardedValue = map['loadBalancerEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingRules: (() { final guardedValue = map['routingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FrontdoorRoutingRule>(guardedValue, (value) => FrontdoorRoutingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routingRulesMap: (() { final guardedValue = map['routingRulesMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
