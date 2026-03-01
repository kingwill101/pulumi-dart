// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_allocation_pool.dart';

/// {@template pulumi_networking_subnet_subnet_args_doc}
/// The set of arguments for Subnet.
/// {@endtemplate}
/// {@macro pulumi_networking_subnet_subnet_args_doc}
class SubnetArgs {
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
  final pulumi.Input<String> networkId;
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

  /// Creates a new [SubnetArgs].
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
  SubnetArgs({
    pulumi.Output<List<SubnetAllocationPool>>? allocationPools,
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? dnsNameservers,
    pulumi.Output<bool>? dnsPublishFixedIp,
    pulumi.Output<bool>? enableDhcp,
    pulumi.Output<String>? gatewayIp,
    pulumi.Output<int>? ipVersion,
    pulumi.Output<String>? ipv6AddressMode,
    pulumi.Output<String>? ipv6RaMode,
    pulumi.Output<String>? name,
    required pulumi.Output<String> networkId,
    pulumi.Output<bool>? noGateway,
    pulumi.Output<int>? prefixLength,
    pulumi.Output<String>? region,
    pulumi.Output<String>? segmentId,
    pulumi.Output<List<String>>? serviceTypes,
    pulumi.Output<String>? subnetpoolId,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tenantId,
    pulumi.Output<Map<String, String>>? valueSpecs,
  }) :
      allocationPools = pulumi.Input.asOptionalInput<List<SubnetAllocationPool>>(allocationPools),
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      description = pulumi.Input.asOptionalInput<String>(description),
      dnsNameservers = pulumi.Input.asOptionalInput<List<String>>(dnsNameservers),
      dnsPublishFixedIp = pulumi.Input.asOptionalInput<bool>(dnsPublishFixedIp),
      enableDhcp = pulumi.Input.asOptionalInput<bool>(enableDhcp),
      gatewayIp = pulumi.Input.asOptionalInput<String>(gatewayIp),
      ipVersion = pulumi.Input.asOptionalInput<int>(ipVersion),
      ipv6AddressMode = pulumi.Input.asOptionalInput<String>(ipv6AddressMode),
      ipv6RaMode = pulumi.Input.asOptionalInput<String>(ipv6RaMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkId = pulumi.Input.asInput<String>(networkId),
      noGateway = pulumi.Input.asOptionalInput<bool>(noGateway),
      prefixLength = pulumi.Input.asOptionalInput<int>(prefixLength),
      region = pulumi.Input.asOptionalInput<String>(region),
      segmentId = pulumi.Input.asOptionalInput<String>(segmentId),
      serviceTypes = pulumi.Input.asOptionalInput<List<String>>(serviceTypes),
      subnetpoolId = pulumi.Input.asOptionalInput<String>(subnetpoolId),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      'networkId': networkId,
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

  factory SubnetArgs.fromMap(Map<String, dynamic> map) {
    return SubnetArgs(
      allocationPools: map['allocationPools'] == null ? null : pulumi.Output.create<List<SubnetAllocationPool>>(pulumi.Input.decodeList<SubnetAllocationPool>(map['allocationPools'], (value) => SubnetAllocationPool.fromMap((value as Map).cast<String, dynamic>()))),
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnsNameservers: map['dnsNameservers'] == null ? null : pulumi.Output.create<List<String>>((map['dnsNameservers'] as List).cast<String>()),
      dnsPublishFixedIp: map['dnsPublishFixedIp'] == null ? null : pulumi.Output.create<bool>(map['dnsPublishFixedIp'] as bool),
      enableDhcp: map['enableDhcp'] == null ? null : pulumi.Output.create<bool>(map['enableDhcp'] as bool),
      gatewayIp: map['gatewayIp'] == null ? null : pulumi.Output.create<String>(map['gatewayIp'] as String),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<int>(map['ipVersion'] as int),
      ipv6AddressMode: map['ipv6AddressMode'] == null ? null : pulumi.Output.create<String>(map['ipv6AddressMode'] as String),
      ipv6RaMode: map['ipv6RaMode'] == null ? null : pulumi.Output.create<String>(map['ipv6RaMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkId: pulumi.Output.create<String>(map['networkId'] as String),
      noGateway: map['noGateway'] == null ? null : pulumi.Output.create<bool>(map['noGateway'] as bool),
      prefixLength: map['prefixLength'] == null ? null : pulumi.Output.create<int>(map['prefixLength'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      segmentId: map['segmentId'] == null ? null : pulumi.Output.create<String>(map['segmentId'] as String),
      serviceTypes: map['serviceTypes'] == null ? null : pulumi.Output.create<List<String>>((map['serviceTypes'] as List).cast<String>()),
      subnetpoolId: map['subnetpoolId'] == null ? null : pulumi.Output.create<String>(map['subnetpoolId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      valueSpecs: map['valueSpecs'] == null ? null : pulumi.Output.create<Map<String, String>>((map['valueSpecs'] as Map).cast<String, String>()),
    );
  }
}

