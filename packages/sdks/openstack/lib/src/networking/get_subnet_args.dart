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
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dhcpEnabled: (() { final guardedValue = map['dhcpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsPublishFixedIp: (() { final guardedValue = map['dnsPublishFixedIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gatewayIp: (() { final guardedValue = map['gatewayIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipv6AddressMode: (() { final guardedValue = map['ipv6AddressMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6RaMode: (() { final guardedValue = map['ipv6RaMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentId: (() { final guardedValue = map['segmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetpoolId: (() { final guardedValue = map['subnetpoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

