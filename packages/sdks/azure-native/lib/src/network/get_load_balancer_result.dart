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
  const GetLoadBalancerResult({
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
      'backendAddressPools': ?(() { final guardedValue = backendAddressPools; if (guardedValue == null) return null; return pulumi.Input.encodeList<BackendAddressPoolResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'frontendIPConfigurations': ?(() { final guardedValue = frontendIPConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<FrontendIPConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'inboundNatPools': ?(() { final guardedValue = inboundNatPools; if (guardedValue == null) return null; return pulumi.Input.encodeList<InboundNatPoolResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'inboundNatRules': ?(() { final guardedValue = inboundNatRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<InboundNatRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'loadBalancingRules': ?(() { final guardedValue = loadBalancingRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<LoadBalancingRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': name,
      'outboundRules': ?(() { final guardedValue = outboundRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<OutboundRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'probes': ?(() { final guardedValue = probes; if (guardedValue == null) return null; return pulumi.Input.encodeList<ProbeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backendAddressPools: (() { final guardedValue = map['backendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<BackendAddressPoolResponse>(guardedValue, (value) => BackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: map['etag'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      frontendIPConfigurations: (() { final guardedValue = map['frontendIPConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontendIPConfigurationResponse>(guardedValue, (value) => FrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inboundNatPools: (() { final guardedValue = map['inboundNatPools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InboundNatPoolResponse>(guardedValue, (value) => InboundNatPoolResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      inboundNatRules: (() { final guardedValue = map['inboundNatRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InboundNatRuleResponse>(guardedValue, (value) => InboundNatRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      loadBalancingRules: (() { final guardedValue = map['loadBalancingRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancingRuleResponse>(guardedValue, (value) => LoadBalancingRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      outboundRules: (() { final guardedValue = map['outboundRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<OutboundRuleResponse>(guardedValue, (value) => OutboundRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      probes: (() { final guardedValue = map['probes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProbeResponse>(guardedValue, (value) => ProbeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return LoadBalancerSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

