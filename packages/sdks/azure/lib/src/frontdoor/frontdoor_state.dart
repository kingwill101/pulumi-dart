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
  /// A `backend_pool_health_probe` block as defined below.
  final pulumi.Input<List<FrontdoorBackendPoolHealthProbe>>? backendPoolHealthProbes;
  /// A map/dictionary of Backend Pool Health Probe Names (key) to the Backend Pool Health Probe ID (value)
  final pulumi.Input<Map<String, String>>? backendPoolHealthProbesMap;
  /// A map/dictionary of Backend Pool Load Balancing Setting Names (key) to the Backend Pool Load Balancing Setting ID (value)
  final pulumi.Input<Map<String, String>>? backendPoolLoadBalancingSettingsMap;
  /// A `backend_pool_load_balancing` block as defined below.
  final pulumi.Input<List<FrontdoorBackendPoolLoadBalancing>>? backendPoolLoadBalancings;
  /// A `backend_pool_settings` block as defined below.
  final pulumi.Input<List<FrontdoorBackendPoolSetting>>? backendPoolSettings;
  /// A `backend_pool` block as defined below.
  ///
  /// > Azure by default allows specifying up to 50 Backend Pools - but this quota can be increased via Microsoft Support.
  final pulumi.Input<List<FrontdoorBackendPool>>? backendPools;
  /// A map/dictionary of Backend Pool Names (key) to the Backend Pool ID (value)
  final pulumi.Input<Map<String, String>>? backendPoolsMap;
  /// The host that each frontendEndpoint must CNAME to.
  final pulumi.Input<String>? cname;
  final pulumi.Input<List<FrontdoorExplicitResourceOrder>>? explicitResourceOrders;
  /// A friendly name for the Front Door service.
  final pulumi.Input<String>? friendlyName;
  /// A `frontend_endpoint` block as defined below.
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
  /// A `routing_rule` block as defined below.
  final pulumi.Input<List<FrontdoorRoutingRule>>? routingRules;
  /// A map/dictionary of Routing Rule Names (key) to the Routing Rule ID (value)
  final pulumi.Input<Map<String, String>>? routingRulesMap;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FrontdoorState].
  /// [backendPoolHealthProbes] A `backend_pool_health_probe` block as defined below.
  /// [backendPoolHealthProbesMap] A map/dictionary of Backend Pool Health Probe Names (key) to the Backend Pool Health Probe ID (value)
  /// [backendPoolLoadBalancingSettingsMap] A map/dictionary of Backend Pool Load Balancing Setting Names (key) to the Backend Pool Load Balancing Setting ID (value)
  /// [backendPoolLoadBalancings] A `backend_pool_load_balancing` block as defined below.
  /// [backendPoolSettings] A `backend_pool_settings` block as defined below.
  /// [backendPools] A `backend_pool` block as defined below.
  /// [backendPoolsMap] A map/dictionary of Backend Pool Names (key) to the Backend Pool ID (value)
  /// [cname] The host that each frontendEndpoint must CNAME to.
  /// [explicitResourceOrders] Optional.
  /// [friendlyName] A friendly name for the Front Door service.
  /// [frontendEndpoints] A `frontend_endpoint` block as defined below.
  /// [frontendEndpointsMap] A map/dictionary of Frontend Endpoint Names (key) to the Frontend Endpoint ID (value)
  /// [headerFrontdoorId] The unique ID of the Front Door which is embedded into the incoming headers `X-Azure-FDID` attribute and maybe used to filter traffic sent by the Front Door to your backend.
  /// [loadBalancerEnabled] Should the Front Door Load Balancer be Enabled? Defaults to `true`.
  /// [name] Specifies the name of the Front Door service. Must be globally unique. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the Front Door service should exist. Changing this forces a new resource to be created.
  /// [routingRules] A `routing_rule` block as defined below.
  /// [routingRulesMap] A map/dictionary of Routing Rule Names (key) to the Routing Rule ID (value)
  /// [tags] A mapping of tags to assign to the resource.
  FrontdoorState({
    pulumi.Output<List<FrontdoorBackendPoolHealthProbe>>? backendPoolHealthProbes,
    pulumi.Output<Map<String, String>>? backendPoolHealthProbesMap,
    pulumi.Output<Map<String, String>>? backendPoolLoadBalancingSettingsMap,
    pulumi.Output<List<FrontdoorBackendPoolLoadBalancing>>? backendPoolLoadBalancings,
    pulumi.Output<List<FrontdoorBackendPoolSetting>>? backendPoolSettings,
    pulumi.Output<List<FrontdoorBackendPool>>? backendPools,
    pulumi.Output<Map<String, String>>? backendPoolsMap,
    pulumi.Output<String>? cname,
    pulumi.Output<List<FrontdoorExplicitResourceOrder>>? explicitResourceOrders,
    pulumi.Output<String>? friendlyName,
    pulumi.Output<List<FrontdoorFrontendEndpoint>>? frontendEndpoints,
    pulumi.Output<Map<String, String>>? frontendEndpointsMap,
    pulumi.Output<String>? headerFrontdoorId,
    pulumi.Output<bool>? loadBalancerEnabled,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<FrontdoorRoutingRule>>? routingRules,
    pulumi.Output<Map<String, String>>? routingRulesMap,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      backendPoolHealthProbes = pulumi.Input.asOptionalInput<List<FrontdoorBackendPoolHealthProbe>>(backendPoolHealthProbes),
      backendPoolHealthProbesMap = pulumi.Input.asOptionalInput<Map<String, String>>(backendPoolHealthProbesMap),
      backendPoolLoadBalancingSettingsMap = pulumi.Input.asOptionalInput<Map<String, String>>(backendPoolLoadBalancingSettingsMap),
      backendPoolLoadBalancings = pulumi.Input.asOptionalInput<List<FrontdoorBackendPoolLoadBalancing>>(backendPoolLoadBalancings),
      backendPoolSettings = pulumi.Input.asOptionalInput<List<FrontdoorBackendPoolSetting>>(backendPoolSettings),
      backendPools = pulumi.Input.asOptionalInput<List<FrontdoorBackendPool>>(backendPools),
      backendPoolsMap = pulumi.Input.asOptionalInput<Map<String, String>>(backendPoolsMap),
      cname = pulumi.Input.asOptionalInput<String>(cname),
      explicitResourceOrders = pulumi.Input.asOptionalInput<List<FrontdoorExplicitResourceOrder>>(explicitResourceOrders),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      frontendEndpoints = pulumi.Input.asOptionalInput<List<FrontdoorFrontendEndpoint>>(frontendEndpoints),
      frontendEndpointsMap = pulumi.Input.asOptionalInput<Map<String, String>>(frontendEndpointsMap),
      headerFrontdoorId = pulumi.Input.asOptionalInput<String>(headerFrontdoorId),
      loadBalancerEnabled = pulumi.Input.asOptionalInput<bool>(loadBalancerEnabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      routingRules = pulumi.Input.asOptionalInput<List<FrontdoorRoutingRule>>(routingRules),
      routingRulesMap = pulumi.Input.asOptionalInput<Map<String, String>>(routingRulesMap),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      backendPoolHealthProbes: map['backendPoolHealthProbes'] == null ? null : pulumi.Output.create<List<FrontdoorBackendPoolHealthProbe>>(pulumi.Input.decodeList<FrontdoorBackendPoolHealthProbe>(map['backendPoolHealthProbes'], (value) => FrontdoorBackendPoolHealthProbe.fromMap((value as Map).cast<String, dynamic>()))),
      backendPoolHealthProbesMap: map['backendPoolHealthProbesMap'] == null ? null : pulumi.Output.create<Map<String, String>>((map['backendPoolHealthProbesMap'] as Map).cast<String, String>()),
      backendPoolLoadBalancingSettingsMap: map['backendPoolLoadBalancingSettingsMap'] == null ? null : pulumi.Output.create<Map<String, String>>((map['backendPoolLoadBalancingSettingsMap'] as Map).cast<String, String>()),
      backendPoolLoadBalancings: map['backendPoolLoadBalancings'] == null ? null : pulumi.Output.create<List<FrontdoorBackendPoolLoadBalancing>>(pulumi.Input.decodeList<FrontdoorBackendPoolLoadBalancing>(map['backendPoolLoadBalancings'], (value) => FrontdoorBackendPoolLoadBalancing.fromMap((value as Map).cast<String, dynamic>()))),
      backendPoolSettings: map['backendPoolSettings'] == null ? null : pulumi.Output.create<List<FrontdoorBackendPoolSetting>>(pulumi.Input.decodeList<FrontdoorBackendPoolSetting>(map['backendPoolSettings'], (value) => FrontdoorBackendPoolSetting.fromMap((value as Map).cast<String, dynamic>()))),
      backendPools: map['backendPools'] == null ? null : pulumi.Output.create<List<FrontdoorBackendPool>>(pulumi.Input.decodeList<FrontdoorBackendPool>(map['backendPools'], (value) => FrontdoorBackendPool.fromMap((value as Map).cast<String, dynamic>()))),
      backendPoolsMap: map['backendPoolsMap'] == null ? null : pulumi.Output.create<Map<String, String>>((map['backendPoolsMap'] as Map).cast<String, String>()),
      cname: map['cname'] == null ? null : pulumi.Output.create<String>(map['cname'] as String),
      explicitResourceOrders: map['explicitResourceOrders'] == null ? null : pulumi.Output.create<List<FrontdoorExplicitResourceOrder>>(pulumi.Input.decodeList<FrontdoorExplicitResourceOrder>(map['explicitResourceOrders'], (value) => FrontdoorExplicitResourceOrder.fromMap((value as Map).cast<String, dynamic>()))),
      friendlyName: map['friendlyName'] == null ? null : pulumi.Output.create<String>(map['friendlyName'] as String),
      frontendEndpoints: map['frontendEndpoints'] == null ? null : pulumi.Output.create<List<FrontdoorFrontendEndpoint>>(pulumi.Input.decodeList<FrontdoorFrontendEndpoint>(map['frontendEndpoints'], (value) => FrontdoorFrontendEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      frontendEndpointsMap: map['frontendEndpointsMap'] == null ? null : pulumi.Output.create<Map<String, String>>((map['frontendEndpointsMap'] as Map).cast<String, String>()),
      headerFrontdoorId: map['headerFrontdoorId'] == null ? null : pulumi.Output.create<String>(map['headerFrontdoorId'] as String),
      loadBalancerEnabled: map['loadBalancerEnabled'] == null ? null : pulumi.Output.create<bool>(map['loadBalancerEnabled'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routingRules: map['routingRules'] == null ? null : pulumi.Output.create<List<FrontdoorRoutingRule>>(pulumi.Input.decodeList<FrontdoorRoutingRule>(map['routingRules'], (value) => FrontdoorRoutingRule.fromMap((value as Map).cast<String, dynamic>()))),
      routingRulesMap: map['routingRulesMap'] == null ? null : pulumi.Output.create<Map<String, String>>((map['routingRulesMap'] as Map).cast<String, String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

