// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerFrontendIpConfiguration {
  /// The Frontend IP Configuration ID of a Gateway SKU Load Balancer.
  final pulumi.Input<String>? gatewayLoadBalancerFrontendIpConfigurationId;
  /// The id of the Frontend IP Configuration.
  final pulumi.Input<String>? id;
  /// The list of IDs of inbound rules that use this frontend IP.
  final pulumi.Input<List<String>>? inboundNatRules;
  /// The list of IDs of load balancing rules that use this frontend IP.
  final pulumi.Input<List<String>>? loadBalancerRules;
  /// Specifies the name of the frontend IP configuration.
  final pulumi.Input<String> name;
  /// The list of IDs outbound rules that use this frontend IP.
  final pulumi.Input<List<String>>? outboundRules;
  /// Private IP Address to assign to the Load Balancer. The last one and first four IPs in any range are reserved and cannot be manually assigned.
  final pulumi.Input<String>? privateIpAddress;
  /// The allocation method for the Private IP Address used by this Load Balancer. Possible values as `Dynamic` and `Static`.
  final pulumi.Input<String>? privateIpAddressAllocation;
  /// The version of IP that the Private IP Address is. Possible values are `IPv4` or `IPv6`.
  final pulumi.Input<String>? privateIpAddressVersion;
  /// The ID of a Public IP Address which should be associated with the Load Balancer.
  final pulumi.Input<String>? publicIpAddressId;
  /// The ID of a Public IP Prefix which should be associated with the Load Balancer. Public IP Prefix can only be used with outbound rules.
  final pulumi.Input<String>? publicIpPrefixId;
  /// The ID of the Subnet which should be associated with the IP Configuration.
  final pulumi.Input<String>? subnetId;
  /// Specifies a list of Availability Zones in which the IP Address for this Load Balancer should be located.
  ///
  /// > **Note:** Availability Zones are only supported with a [Standard SKU](https://docs.microsoft.com/azure/load-balancer/load-balancer-standard-availability-zones) and [in select regions](https://docs.microsoft.com/azure/availability-zones/az-overview) at this time.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [LoadBalancerFrontendIpConfiguration].
  /// [gatewayLoadBalancerFrontendIpConfigurationId] The Frontend IP Configuration ID of a Gateway SKU Load Balancer.
  /// [id] The id of the Frontend IP Configuration.
  /// [inboundNatRules] The list of IDs of inbound rules that use this frontend IP.
  /// [loadBalancerRules] The list of IDs of load balancing rules that use this frontend IP.
  /// [name] Specifies the name of the frontend IP configuration.
  /// [outboundRules] The list of IDs outbound rules that use this frontend IP.
  /// [privateIpAddress] Private IP Address to assign to the Load Balancer. The last one and first four IPs in any range are reserved and cannot be manually assigned.
  /// [privateIpAddressAllocation] The allocation method for the Private IP Address used by this Load Balancer. Possible values as `Dynamic` and `Static`.
  /// [privateIpAddressVersion] The version of IP that the Private IP Address is. Possible values are `IPv4` or `IPv6`.
  /// [publicIpAddressId] The ID of a Public IP Address which should be associated with the Load Balancer.
  /// [publicIpPrefixId] The ID of a Public IP Prefix which should be associated with the Load Balancer. Public IP Prefix can only be used with outbound rules.
  /// [subnetId] The ID of the Subnet which should be associated with the IP Configuration.
  /// [zones] Specifies a list of Availability Zones in which the IP Address for this Load Balancer should be located.
  LoadBalancerFrontendIpConfiguration({
    this.gatewayLoadBalancerFrontendIpConfigurationId,
    this.id,
    this.inboundNatRules,
    this.loadBalancerRules,
    required this.name,
    this.outboundRules,
    this.privateIpAddress,
    this.privateIpAddressAllocation,
    this.privateIpAddressVersion,
    this.publicIpAddressId,
    this.publicIpPrefixId,
    this.subnetId,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayLoadBalancerFrontendIpConfigurationId': ?gatewayLoadBalancerFrontendIpConfigurationId,
      'id': ?id,
      'inboundNatRules': ?inboundNatRules,
      'loadBalancerRules': ?loadBalancerRules,
      'name': name,
      'outboundRules': ?outboundRules,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddressAllocation': ?privateIpAddressAllocation,
      'privateIpAddressVersion': ?privateIpAddressVersion,
      'publicIpAddressId': ?publicIpAddressId,
      'publicIpPrefixId': ?publicIpPrefixId,
      'subnetId': ?subnetId,
      'zones': ?zones,
    };
  }

  factory LoadBalancerFrontendIpConfiguration.fromMap(Map<String, dynamic> map) {
    return LoadBalancerFrontendIpConfiguration(
      gatewayLoadBalancerFrontendIpConfigurationId: map['gatewayLoadBalancerFrontendIpConfigurationId'] == null ? null : (map['gatewayLoadBalancerFrontendIpConfigurationId'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      inboundNatRules: map['inboundNatRules'] == null ? null : ((map['inboundNatRules'] as List).cast<String>()).input(),
      loadBalancerRules: map['loadBalancerRules'] == null ? null : ((map['loadBalancerRules'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      outboundRules: map['outboundRules'] == null ? null : ((map['outboundRules'] as List).cast<String>()).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      privateIpAddressAllocation: map['privateIpAddressAllocation'] == null ? null : (map['privateIpAddressAllocation'] as String).input(),
      privateIpAddressVersion: map['privateIpAddressVersion'] == null ? null : (map['privateIpAddressVersion'] as String).input(),
      publicIpAddressId: map['publicIpAddressId'] == null ? null : (map['publicIpAddressId'] as String).input(),
      publicIpPrefixId: map['publicIpPrefixId'] == null ? null : (map['publicIpPrefixId'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

