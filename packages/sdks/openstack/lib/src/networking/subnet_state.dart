// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_allocation_pool.dart';

/// Input properties used for looking up and filtering Subnet resources.
class SubnetState {
  /// The collection of ags assigned on the subnet, which have been
  /// explicitly and implicitly added.
  final pulumi.Input<List<String>>? allTags;
  /// A block declaring the start and end range of
  /// the IP addresses available for use with DHCP in this subnet. Multiple
  /// `allocation_pool` blocks can be declared, providing the subnet with more
  /// than one range of IP addresses to use with DHCP. However, each IP range
  /// must be from the same CIDR that the subnet is part of.
  /// The `allocation_pool` block is documented below.
  final pulumi.Input<List<SubnetAllocationPool>>? allocationPools;
  /// CIDR representing IP range for this subnet, based on IP
  /// version. You can omit this option if you are creating a subnet from a
  /// subnet pool.
  final pulumi.Input<String>? cidr;
  /// Human-readable description of the subnet. Changing this
  /// updates the name of the existing subnet.
  final pulumi.Input<String>? description;
  /// An array of DNS name server names used by hosts
  /// in this subnet. Changing this updates the DNS name servers for the existing
  /// subnet.
  final pulumi.Input<List<String>>? dnsNameservers;
  /// Whether to publish DNS records for IPs
  /// from this subnet. Defaults is false.
  final pulumi.Input<bool>? dnsPublishFixedIp;
  /// The administrative state of the network.
  /// Acceptable values are "true" and "false". Changing this value enables or
  /// disables the DHCP capabilities of the existing subnet. Defaults to true.
  final pulumi.Input<bool>? enableDhcp;
  /// Default gateway used by devices in this subnet.
  /// Leaving this blank and not setting `no_gateway` will cause a default
  /// gateway of `.1` to be used. Changing this updates the gateway IP of the
  /// existing subnet.
  final pulumi.Input<String>? gatewayIp;
  /// IP version, either 4 (default) or 6. Changing this creates a
  /// new subnet.
  final pulumi.Input<int>? ipVersion;
  /// The IPv6 address mode. Valid values are
  /// `dhcpv6-stateful`, `dhcpv6-stateless`, or `slaac`.
  final pulumi.Input<String>? ipv6AddressMode;
  /// The IPv6 Router Advertisement mode. Valid values
  /// are `dhcpv6-stateful`, `dhcpv6-stateless`, or `slaac`.
  final pulumi.Input<String>? ipv6RaMode;
  /// The name of the subnet. Changing this updates the name of
  /// the existing subnet.
  final pulumi.Input<String>? name;
  /// The UUID of the parent network. Changing this
  /// creates a new subnet.
  final pulumi.Input<String>? networkId;
  /// Do not set a gateway IP on this subnet. Changing
  /// this removes or adds a default gateway IP of the existing subnet.
  final pulumi.Input<bool>? noGateway;
  /// The prefix length to use when creating a subnet
  /// from a subnet pool. The default subnet pool prefix length that was defined
  /// when creating the subnet pool will be used if not provided. Changing this
  /// creates a new subnet.
  final pulumi.Input<int>? prefixLength;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron subnet. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// subnet.
  final pulumi.Input<String>? region;
  /// The segment ID of the subnet. This is used to
  /// specify which segment the subnet belongs to when using Neutron's routed
  /// provider networks. Available when neutron segment extension is enabled.
  final pulumi.Input<String>? segmentId;
  /// An array of service types used by the subnet.
  /// Changing this updates the service types for the existing subnet.
  final pulumi.Input<List<String>>? serviceTypes;
  /// The ID of the subnetpool associated with the subnet.
  final pulumi.Input<String>? subnetpoolId;
  /// A set of string tags for the subnet.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the subnet. Required if admin wants to
  /// create a subnet for another tenant. Changing this creates a new subnet.
  final pulumi.Input<String>? tenantId;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [SubnetState].
  /// [allTags] The collection of ags assigned on the subnet, which have been
  /// [allocationPools] A block declaring the start and end range of
  /// [cidr] CIDR representing IP range for this subnet, based on IP
  /// [description] Human-readable description of the subnet. Changing this
  /// [dnsNameservers] An array of DNS name server names used by hosts
  /// [dnsPublishFixedIp] Whether to publish DNS records for IPs
  /// [enableDhcp] The administrative state of the network.
  /// [gatewayIp] Default gateway used by devices in this subnet.
  /// [ipVersion] IP version, either 4 (default) or 6. Changing this creates a
  /// [ipv6AddressMode] The IPv6 address mode. Valid values are
  /// [ipv6RaMode] The IPv6 Router Advertisement mode. Valid values
  /// [name] The name of the subnet. Changing this updates the name of
  /// [networkId] The UUID of the parent network. Changing this
  /// [noGateway] Do not set a gateway IP on this subnet. Changing
  /// [prefixLength] The prefix length to use when creating a subnet
  /// [region] The region in which to obtain the V2 Networking client.
  /// [segmentId] The segment ID of the subnet. This is used to
  /// [serviceTypes] An array of service types used by the subnet.
  /// [subnetpoolId] The ID of the subnetpool associated with the subnet.
  /// [tags] A set of string tags for the subnet.
  /// [tenantId] The owner of the subnet. Required if admin wants to
  /// [valueSpecs] Map of additional options.
  SubnetState({
    this.allTags,
    this.allocationPools,
    this.cidr,
    this.description,
    this.dnsNameservers,
    this.dnsPublishFixedIp,
    this.enableDhcp,
    this.gatewayIp,
    this.ipVersion,
    this.ipv6AddressMode,
    this.ipv6RaMode,
    this.name,
    this.networkId,
    this.noGateway,
    this.prefixLength,
    this.region,
    this.segmentId,
    this.serviceTypes,
    this.subnetpoolId,
    this.tags,
    this.tenantId,
    this.valueSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTags': ?allTags,
      'allocationPools': ?pulumi.Input.mapOptionalInputValue<List<SubnetAllocationPool>, List<Map<String, dynamic>>>(allocationPools, (value) => pulumi.Input.encodeList<SubnetAllocationPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cidr': ?cidr,
      'description': ?description,
      'dnsNameservers': ?dnsNameservers,
      'dnsPublishFixedIp': ?dnsPublishFixedIp,
      'enableDhcp': ?enableDhcp,
      'gatewayIp': ?gatewayIp,
      'ipVersion': ?ipVersion,
      'ipv6AddressMode': ?ipv6AddressMode,
      'ipv6RaMode': ?ipv6RaMode,
      'name': ?name,
      'networkId': ?networkId,
      'noGateway': ?noGateway,
      'prefixLength': ?prefixLength,
      'region': ?region,
      'segmentId': ?segmentId,
      'serviceTypes': ?serviceTypes,
      'subnetpoolId': ?subnetpoolId,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory SubnetState.fromMap(Map<String, dynamic> map) {
    return SubnetState(
      allTags: map['allTags'] == null ? null : ((map['allTags']! as List).cast<String>()).input(),
      allocationPools: map['allocationPools'] == null ? null : (pulumi.Input.decodeList<SubnetAllocationPool>(map['allocationPools']!, (value) => SubnetAllocationPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cidr: map['cidr'] == null ? null : (map['cidr']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dnsNameservers: map['dnsNameservers'] == null ? null : ((map['dnsNameservers']! as List).cast<String>()).input(),
      dnsPublishFixedIp: map['dnsPublishFixedIp'] == null ? null : (map['dnsPublishFixedIp']! as bool).input(),
      enableDhcp: map['enableDhcp'] == null ? null : (map['enableDhcp']! as bool).input(),
      gatewayIp: map['gatewayIp'] == null ? null : (map['gatewayIp']! as String).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion']! as int).input(),
      ipv6AddressMode: map['ipv6AddressMode'] == null ? null : (map['ipv6AddressMode']! as String).input(),
      ipv6RaMode: map['ipv6RaMode'] == null ? null : (map['ipv6RaMode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId']! as String).input(),
      noGateway: map['noGateway'] == null ? null : (map['noGateway']! as bool).input(),
      prefixLength: map['prefixLength'] == null ? null : (map['prefixLength']! as int).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      segmentId: map['segmentId'] == null ? null : (map['segmentId']! as String).input(),
      serviceTypes: map['serviceTypes'] == null ? null : ((map['serviceTypes']! as List).cast<String>()).input(),
      subnetpoolId: map['subnetpoolId'] == null ? null : (map['subnetpoolId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      valueSpecs: map['valueSpecs'] == null ? null : ((map['valueSpecs']! as Map).cast<String, String>()).input(),
    );
  }
}

