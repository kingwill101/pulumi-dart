// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_subnet_get_subnet_args_doc}
/// Arguments for getSubnet.
/// {@endtemplate}
/// {@macro pulumi_networking_get_subnet_get_subnet_args_doc}
class GetSubnetArgs {
  /// The CIDR of the subnet.
  final pulumi.Input<String>? cidr;
  /// Human-readable description of the subnet.
  final pulumi.Input<String>? description;
  /// If the subnet has DHCP enabled.
  final pulumi.Input<bool>? dhcpEnabled;
  /// If the subnet publishes DNS records.
  final pulumi.Input<bool>? dnsPublishFixedIp;
  /// The IP of the subnet's gateway.
  final pulumi.Input<String>? gatewayIp;
  /// The IP version of the subnet (either 4 or 6).
  final pulumi.Input<int>? ipVersion;
  /// The IPv6 address mode. Valid values are
  /// `dhcpv6-stateful`, `dhcpv6-stateless`, or `slaac`.
  final pulumi.Input<String>? ipv6AddressMode;
  /// The IPv6 Router Advertisement mode. Valid values
  /// are `dhcpv6-stateful`, `dhcpv6-stateless`, or `slaac`.
  final pulumi.Input<String>? ipv6RaMode;
  /// The name of the subnet.
  final pulumi.Input<String>? name;
  /// The ID of the network the subnet belongs to.
  final pulumi.Input<String>? networkId;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve subnet ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The ID of the segment the subnet belongs to.
  /// Available when neutron segment extension is enabled.
  final pulumi.Input<String>? segmentId;
  /// The ID of the subnet.
  final pulumi.Input<String>? subnetId;
  /// The ID of the subnetpool associated with the subnet.
  final pulumi.Input<String>? subnetpoolId;
  /// The list of subnet tags to filter.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the subnet.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetSubnetArgs].
  /// [cidr] The CIDR of the subnet.
  /// [description] Human-readable description of the subnet.
  /// [dhcpEnabled] If the subnet has DHCP enabled.
  /// [dnsPublishFixedIp] If the subnet publishes DNS records.
  /// [gatewayIp] The IP of the subnet's gateway.
  /// [ipVersion] The IP version of the subnet (either 4 or 6).
  /// [ipv6AddressMode] The IPv6 address mode. Valid values are
  /// [ipv6RaMode] The IPv6 Router Advertisement mode. Valid values
  /// [name] The name of the subnet.
  /// [networkId] The ID of the network the subnet belongs to.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [segmentId] The ID of the segment the subnet belongs to.
  /// [subnetId] The ID of the subnet.
  /// [subnetpoolId] The ID of the subnetpool associated with the subnet.
  /// [tags] The list of subnet tags to filter.
  /// [tenantId] The owner of the subnet.
  GetSubnetArgs({
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? dhcpEnabled,
    pulumi.Output<bool>? dnsPublishFixedIp,
    pulumi.Output<String>? gatewayIp,
    pulumi.Output<int>? ipVersion,
    pulumi.Output<String>? ipv6AddressMode,
    pulumi.Output<String>? ipv6RaMode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? segmentId,
    pulumi.Output<String>? subnetId,
    pulumi.Output<String>? subnetpoolId,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? tenantId,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      description = pulumi.Input.asOptionalInput<String>(description),
      dhcpEnabled = pulumi.Input.asOptionalInput<bool>(dhcpEnabled),
      dnsPublishFixedIp = pulumi.Input.asOptionalInput<bool>(dnsPublishFixedIp),
      gatewayIp = pulumi.Input.asOptionalInput<String>(gatewayIp),
      ipVersion = pulumi.Input.asOptionalInput<int>(ipVersion),
      ipv6AddressMode = pulumi.Input.asOptionalInput<String>(ipv6AddressMode),
      ipv6RaMode = pulumi.Input.asOptionalInput<String>(ipv6RaMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkId = pulumi.Input.asOptionalInput<String>(networkId),
      region = pulumi.Input.asOptionalInput<String>(region),
      segmentId = pulumi.Input.asOptionalInput<String>(segmentId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      subnetpoolId = pulumi.Input.asOptionalInput<String>(subnetpoolId),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'description': ?description,
      'dhcpEnabled': ?dhcpEnabled,
      'dnsPublishFixedIp': ?dnsPublishFixedIp,
      'gatewayIp': ?gatewayIp,
      'ipVersion': ?ipVersion,
      'ipv6AddressMode': ?ipv6AddressMode,
      'ipv6RaMode': ?ipv6RaMode,
      'name': ?name,
      'networkId': ?networkId,
      'region': ?region,
      'segmentId': ?segmentId,
      'subnetId': ?subnetId,
      'subnetpoolId': ?subnetpoolId,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetSubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetArgs(
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dhcpEnabled: map['dhcpEnabled'] == null ? null : pulumi.Output.create<bool>(map['dhcpEnabled'] as bool),
      dnsPublishFixedIp: map['dnsPublishFixedIp'] == null ? null : pulumi.Output.create<bool>(map['dnsPublishFixedIp'] as bool),
      gatewayIp: map['gatewayIp'] == null ? null : pulumi.Output.create<String>(map['gatewayIp'] as String),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<int>(map['ipVersion'] as int),
      ipv6AddressMode: map['ipv6AddressMode'] == null ? null : pulumi.Output.create<String>(map['ipv6AddressMode'] as String),
      ipv6RaMode: map['ipv6RaMode'] == null ? null : pulumi.Output.create<String>(map['ipv6RaMode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkId: map['networkId'] == null ? null : pulumi.Output.create<String>(map['networkId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      segmentId: map['segmentId'] == null ? null : pulumi.Output.create<String>(map['segmentId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      subnetpoolId: map['subnetpoolId'] == null ? null : pulumi.Output.create<String>(map['subnetpoolId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

