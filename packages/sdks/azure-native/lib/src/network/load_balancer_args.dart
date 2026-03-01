// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool.dart';
import 'extended_location.dart';
import 'frontend_ipconfiguration.dart';
import 'inbound_nat_pool.dart';
import 'inbound_nat_rule_network.dart';
import 'load_balancer_sku.dart';
import 'load_balancing_rule.dart';
import 'outbound_rule.dart';
import 'probe.dart';

/// {@template pulumi_network_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_network_load_balancer_args_doc}
class LoadBalancerArgs {
  /// Collection of backend address pools used by a load balancer.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<BackendAddressPool>>? backendAddressPools;
  /// The extended location of the load balancer.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Object representing the frontend IPs to be used for the load balancer.
  final pulumi.Input<List<FrontendIPConfiguration>>? frontendIPConfigurations;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Defines an external port range for inbound NAT to a single backend port on NICs associated with a load balancer. Inbound NAT rules are created automatically for each NIC associated with the Load Balancer using an external port from this range. Defining an Inbound NAT pool on your Load Balancer is mutually exclusive with defining inbound NAT rules. Inbound NAT pools are referenced from virtual machine scale sets. NICs that are associated with individual virtual machines cannot reference an inbound NAT pool. They have to reference individual inbound NAT rules.
  final pulumi.Input<List<InboundNatPool>>? inboundNatPools;
  /// Collection of inbound NAT Rules used by a load balancer. Defining inbound NAT rules on your load balancer is mutually exclusive with defining an inbound NAT pool. Inbound NAT pools are referenced from virtual machine scale sets. NICs that are associated with individual virtual machines cannot reference an Inbound NAT pool. They have to reference individual inbound NAT rules.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<InboundNatRuleNetwork>>? inboundNatRules;
  /// The name of the load balancer.
  final pulumi.Input<String>? loadBalancerName;
  /// Object collection representing the load balancing rules Gets the provisioning.
  final pulumi.Input<List<LoadBalancingRule>>? loadBalancingRules;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The outbound rules.
  final pulumi.Input<List<OutboundRule>>? outboundRules;
  /// Collection of probe objects used in the load balancer.
  final pulumi.Input<List<Probe>>? probes;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The load balancer SKU.
  final pulumi.Input<LoadBalancerSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LoadBalancerArgs].
  /// [backendAddressPools] Collection of backend address pools used by a load balancer.
  /// [extendedLocation] The extended location of the load balancer.
  /// [frontendIPConfigurations] Object representing the frontend IPs to be used for the load balancer.
  /// [id] Resource ID.
  /// [inboundNatPools] Defines an external port range for inbound NAT to a single backend port on NICs associated with a load balancer. Inbound NAT rules are created automatically for each NIC associated with the Load Balancer using an external port from this range. Defining an Inbound NAT pool on your Load Balancer is mutually exclusive with defining inbound NAT rules. Inbound NAT pools are referenced from virtual machine scale sets. NICs that are associated with individual virtual machines cannot reference an inbound NAT pool. They have to reference individual inbound NAT rules.
  /// [inboundNatRules] Collection of inbound NAT Rules used by a load balancer. Defining inbound NAT rules on your load balancer is mutually exclusive with defining an inbound NAT pool. Inbound NAT pools are referenced from virtual machine scale sets. NICs that are associated with individual virtual machines cannot reference an Inbound NAT pool. They have to reference individual inbound NAT rules.
  /// [loadBalancerName] The name of the load balancer.
  /// [loadBalancingRules] Object collection representing the load balancing rules Gets the provisioning.
  /// [location] Resource location.
  /// [outboundRules] The outbound rules.
  /// [probes] Collection of probe objects used in the load balancer.
  /// [resourceGroupName] The name of the resource group.
  /// [sku] The load balancer SKU.
  /// [tags] Resource tags.
  LoadBalancerArgs({
    pulumi.Output<List<BackendAddressPool>>? backendAddressPools,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<List<FrontendIPConfiguration>>? frontendIPConfigurations,
    pulumi.Output<String>? id,
    pulumi.Output<List<InboundNatPool>>? inboundNatPools,
    pulumi.Output<List<InboundNatRuleNetwork>>? inboundNatRules,
    pulumi.Output<String>? loadBalancerName,
    pulumi.Output<List<LoadBalancingRule>>? loadBalancingRules,
    pulumi.Output<String>? location,
    pulumi.Output<List<OutboundRule>>? outboundRules,
    pulumi.Output<List<Probe>>? probes,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<LoadBalancerSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      backendAddressPools = pulumi.Input.asOptionalInput<List<BackendAddressPool>>(backendAddressPools),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      frontendIPConfigurations = pulumi.Input.asOptionalInput<List<FrontendIPConfiguration>>(frontendIPConfigurations),
      id = pulumi.Input.asOptionalInput<String>(id),
      inboundNatPools = pulumi.Input.asOptionalInput<List<InboundNatPool>>(inboundNatPools),
      inboundNatRules = pulumi.Input.asOptionalInput<List<InboundNatRuleNetwork>>(inboundNatRules),
      loadBalancerName = pulumi.Input.asOptionalInput<String>(loadBalancerName),
      loadBalancingRules = pulumi.Input.asOptionalInput<List<LoadBalancingRule>>(loadBalancingRules),
      location = pulumi.Input.asOptionalInput<String>(location),
      outboundRules = pulumi.Input.asOptionalInput<List<OutboundRule>>(outboundRules),
      probes = pulumi.Input.asOptionalInput<List<Probe>>(probes),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<LoadBalancerSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<BackendAddressPool>, List<Map<String, dynamic>>>(backendAddressPools, (value) => pulumi.Input.encodeList<BackendAddressPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'frontendIPConfigurations': ?pulumi.Input.mapOptionalInputValue<List<FrontendIPConfiguration>, List<Map<String, dynamic>>>(frontendIPConfigurations, (value) => pulumi.Input.encodeList<FrontendIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'inboundNatPools': ?pulumi.Input.mapOptionalInputValue<List<InboundNatPool>, List<Map<String, dynamic>>>(inboundNatPools, (value) => pulumi.Input.encodeList<InboundNatPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inboundNatRules': ?inboundNatRules,
      'loadBalancerName': ?loadBalancerName,
      'loadBalancingRules': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancingRule>, List<Map<String, dynamic>>>(loadBalancingRules, (value) => pulumi.Input.encodeList<LoadBalancingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'outboundRules': ?pulumi.Input.mapOptionalInputValue<List<OutboundRule>, List<Map<String, dynamic>>>(outboundRules, (value) => pulumi.Input.encodeList<OutboundRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'probes': ?pulumi.Input.mapOptionalInputValue<List<Probe>, List<Map<String, dynamic>>>(probes, (value) => pulumi.Input.encodeList<Probe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<LoadBalancerSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      backendAddressPools: map['backendAddressPools'] == null ? null : pulumi.Output.create<List<BackendAddressPool>>(pulumi.Input.decodeList<BackendAddressPool>(map['backendAddressPools'], (value) => BackendAddressPool.fromMap((value as Map).cast<String, dynamic>()))),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      frontendIPConfigurations: map['frontendIPConfigurations'] == null ? null : pulumi.Output.create<List<FrontendIPConfiguration>>(pulumi.Input.decodeList<FrontendIPConfiguration>(map['frontendIPConfigurations'], (value) => FrontendIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      inboundNatPools: map['inboundNatPools'] == null ? null : pulumi.Output.create<List<InboundNatPool>>(pulumi.Input.decodeList<InboundNatPool>(map['inboundNatPools'], (value) => InboundNatPool.fromMap((value as Map).cast<String, dynamic>()))),
      inboundNatRules: map['inboundNatRules'] == null ? null : pulumi.Output.create<List<InboundNatRuleNetwork>>((map['inboundNatRules'] as List).cast<InboundNatRuleNetwork>()),
      loadBalancerName: map['loadBalancerName'] == null ? null : pulumi.Output.create<String>(map['loadBalancerName'] as String),
      loadBalancingRules: map['loadBalancingRules'] == null ? null : pulumi.Output.create<List<LoadBalancingRule>>(pulumi.Input.decodeList<LoadBalancingRule>(map['loadBalancingRules'], (value) => LoadBalancingRule.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      outboundRules: map['outboundRules'] == null ? null : pulumi.Output.create<List<OutboundRule>>(pulumi.Input.decodeList<OutboundRule>(map['outboundRules'], (value) => OutboundRule.fromMap((value as Map).cast<String, dynamic>()))),
      probes: map['probes'] == null ? null : pulumi.Output.create<List<Probe>>(pulumi.Input.decodeList<Probe>(map['probes'], (value) => Probe.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<LoadBalancerSku>(LoadBalancerSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

