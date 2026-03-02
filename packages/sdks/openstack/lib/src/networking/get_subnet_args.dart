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
    this.cidr,
    this.description,
    this.dhcpEnabled,
    this.dnsPublishFixedIp,
    this.gatewayIp,
    this.ipVersion,
    this.ipv6AddressMode,
    this.ipv6RaMode,
    this.name,
    this.networkId,
    this.region,
    this.segmentId,
    this.subnetId,
    this.subnetpoolId,
    this.tags,
    this.tenantId,
  });

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
      cidr: map['cidr'] == null ? null : (map['cidr'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dhcpEnabled: map['dhcpEnabled'] == null ? null : (map['dhcpEnabled'] as bool).input(),
      dnsPublishFixedIp: map['dnsPublishFixedIp'] == null ? null : (map['dnsPublishFixedIp'] as bool).input(),
      gatewayIp: map['gatewayIp'] == null ? null : (map['gatewayIp'] as String).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as int).input(),
      ipv6AddressMode: map['ipv6AddressMode'] == null ? null : (map['ipv6AddressMode'] as String).input(),
      ipv6RaMode: map['ipv6RaMode'] == null ? null : (map['ipv6RaMode'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      segmentId: map['segmentId'] == null ? null : (map['segmentId'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      subnetpoolId: map['subnetpoolId'] == null ? null : (map['subnetpoolId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

