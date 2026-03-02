// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_address_pool_response.dart';
import 'extended_location_response.dart';
import 'frontend_ipconfiguration_response.dart';
import 'inbound_nat_pool_response.dart';
import 'inbound_nat_rule_response.dart';
import 'load_balancer_sku_response.dart';
import 'load_balancing_rule_response.dart';
import 'outbound_rule_response.dart';
import 'probe_response.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Collection of backend address pools used by a load balancer.
  final List<BackendAddressPoolResponse>? backendAddressPools;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The extended location of the load balancer.
  final ExtendedLocationResponse? extendedLocation;
  /// Object representing the frontend IPs to be used for the load balancer.
  final List<FrontendIPConfigurationResponse>? frontendIPConfigurations;
  /// Resource ID.
  final String? id;
  /// Defines an external port range for inbound NAT to a single backend port on NICs associated with a load balancer. Inbound NAT rules are created automatically for each NIC associated with the Load Balancer using an external port from this range. Defining an Inbound NAT pool on your Load Balancer is mutually exclusive with defining inbound NAT rules. Inbound NAT pools are referenced from virtual machine scale sets. NICs that are associated with individual virtual machines cannot reference an inbound NAT pool. They have to reference individual inbound NAT rules.
  final List<InboundNatPoolResponse>? inboundNatPools;
  /// Collection of inbound NAT Rules used by a load balancer. Defining inbound NAT rules on your load balancer is mutually exclusive with defining an inbound NAT pool. Inbound NAT pools are referenced from virtual machine scale sets. NICs that are associated with individual virtual machines cannot reference an Inbound NAT pool. They have to reference individual inbound NAT rules.
  final List<InboundNatRuleResponse>? inboundNatRules;
  /// Object collection representing the load balancing rules Gets the provisioning.
  final List<LoadBalancingRuleResponse>? loadBalancingRules;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The outbound rules.
  final List<OutboundRuleResponse>? outboundRules;
  /// Collection of probe objects used in the load balancer.
  final List<ProbeResponse>? probes;
  /// The provisioning state of the load balancer resource.
  final String provisioningState;
  /// The resource GUID property of the load balancer resource.
  final String resourceGuid;
  /// The load balancer SKU.
  final LoadBalancerSkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetLoadBalancerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backendAddressPools] Collection of backend address pools used by a load balancer.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [extendedLocation] The extended location of the load balancer.
  /// [frontendIPConfigurations] Object representing the frontend IPs to be used for the load balancer.
  /// [id] Resource ID.
  /// [inboundNatPools] Defines an external port range for inbound NAT to a single backend port on NICs associated with a load balancer. Inbound NAT rules are created automatically for each NIC associated with the Load Balancer using an external port from this range. Defining an Inbound NAT pool on your Load Balancer is mutually exclusive with defining inbound NAT rules. Inbound NAT pools are referenced from virtual machine scale sets. NICs that are associated with individual virtual machines cannot reference an inbound NAT pool. They have to reference individual inbound NAT rules.
  /// [inboundNatRules] Collection of inbound NAT Rules used by a load balancer. Defining inbound NAT rules on your load balancer is mutually exclusive with defining an inbound NAT pool. Inbound NAT pools are referenced from virtual machine scale sets. NICs that are associated with individual virtual machines cannot reference an Inbound NAT pool. They have to reference individual inbound NAT rules.
  /// [loadBalancingRules] Object collection representing the load balancing rules Gets the provisioning.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [outboundRules] The outbound rules.
  /// [probes] Collection of probe objects used in the load balancer.
  /// [provisioningState] The provisioning state of the load balancer resource.
  /// [resourceGuid] The resource GUID property of the load balancer resource.
  /// [sku] The load balancer SKU.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetLoadBalancerResult({
    required this.azureApiVersion,
    this.backendAddressPools,
    required this.etag,
    this.extendedLocation,
    this.frontendIPConfigurations,
    this.id,
    this.inboundNatPools,
    this.inboundNatRules,
    this.loadBalancingRules,
    this.location,
    required this.name,
    this.outboundRules,
    this.probes,
    required this.provisioningState,
    required this.resourceGuid,
    this.sku,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'backendAddressPools': ?backendAddressPools == null ? null : pulumi.Input.encodeList<BackendAddressPoolResponse, Map<String, dynamic>>(backendAddressPools!, (value) => value.toMap()),
      'etag': etag,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'frontendIPConfigurations': ?frontendIPConfigurations == null ? null : pulumi.Input.encodeList<FrontendIPConfigurationResponse, Map<String, dynamic>>(frontendIPConfigurations!, (value) => value.toMap()),
      'id': ?id,
      'inboundNatPools': ?inboundNatPools == null ? null : pulumi.Input.encodeList<InboundNatPoolResponse, Map<String, dynamic>>(inboundNatPools!, (value) => value.toMap()),
      'inboundNatRules': ?inboundNatRules == null ? null : pulumi.Input.encodeList<InboundNatRuleResponse, Map<String, dynamic>>(inboundNatRules!, (value) => value.toMap()),
      'loadBalancingRules': ?loadBalancingRules == null ? null : pulumi.Input.encodeList<LoadBalancingRuleResponse, Map<String, dynamic>>(loadBalancingRules!, (value) => value.toMap()),
      'location': ?location,
      'name': name,
      'outboundRules': ?outboundRules == null ? null : pulumi.Input.encodeList<OutboundRuleResponse, Map<String, dynamic>>(outboundRules!, (value) => value.toMap()),
      'probes': ?probes == null ? null : pulumi.Input.encodeList<ProbeResponse, Map<String, dynamic>>(probes!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'sku': ?sku == null ? null : sku!.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backendAddressPools: map['backendAddressPools'] == null ? null : pulumi.Input.decodeList<BackendAddressPoolResponse>(map['backendAddressPools']!, (value) => BackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      frontendIPConfigurations: map['frontendIPConfigurations'] == null ? null : pulumi.Input.decodeList<FrontendIPConfigurationResponse>(map['frontendIPConfigurations']!, (value) => FrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id']! as String,
      inboundNatPools: map['inboundNatPools'] == null ? null : pulumi.Input.decodeList<InboundNatPoolResponse>(map['inboundNatPools']!, (value) => InboundNatPoolResponse.fromMap((value as Map).cast<String, dynamic>())),
      inboundNatRules: map['inboundNatRules'] == null ? null : pulumi.Input.decodeList<InboundNatRuleResponse>(map['inboundNatRules']!, (value) => InboundNatRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancingRules: map['loadBalancingRules'] == null ? null : pulumi.Input.decodeList<LoadBalancingRuleResponse>(map['loadBalancingRules']!, (value) => LoadBalancingRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      outboundRules: map['outboundRules'] == null ? null : pulumi.Input.decodeList<OutboundRuleResponse>(map['outboundRules']!, (value) => OutboundRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      probes: map['probes'] == null ? null : pulumi.Input.decodeList<ProbeResponse>(map['probes']!, (value) => ProbeResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      sku: map['sku'] == null ? null : LoadBalancerSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

