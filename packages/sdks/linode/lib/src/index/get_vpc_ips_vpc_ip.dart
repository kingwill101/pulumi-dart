// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_ips_vpc_ip_ipv6_address.dart';

class GetVpcIpsVpcIp {
  /// True if the VPC interface is in use, meaning that the Linode was powered on using the config_id to which the interface belongs. Otherwise false.
  final pulumi.Input<bool> active;
  /// An IPv4 address configured for this VPC interface. These follow the RFC 1918 private address format. Null if an address_range.
  final pulumi.Input<String> address;
  /// A range of IPv4 addresses configured for this VPC interface. Null if a single address.
  final pulumi.Input<String> addressRange;
  /// The globally general entity identifier for the Linode configuration profile where the VPC is included.
  final pulumi.Input<int> configId;
  /// The default gateway for the VPC subnet that the IP or IP range belongs to.
  final pulumi.Input<String> gateway;
  /// The globally general API entity identifier for the Linode interface.
  final pulumi.Input<int> interfaceId;
  /// The addresses within the prefix that the interface is associated with.
  final pulumi.Input<List<GetVpcIpsVpcIpIpv6Address>> ipv6Addresses;
  /// The is_public setting for the interface associated with this address.
  final pulumi.Input<bool> ipv6IsPublic;
  /// The /64 prefix, in CIDR notation, assigned to an interface.
  final pulumi.Input<String> ipv6Range;
  /// The identifier for the Linode the VPC interface currently belongs to.
  final pulumi.Input<int> linodeId;
  /// The public IP address used for NAT 1:1 with the VPC. This is empty if NAT 1:1 isn't used.
  final pulumi.Input<String> nat11;
  /// The number of bits set in the subnet mask.
  final pulumi.Input<int> prefix;
  /// The region of the VPC.
  final pulumi.Input<String> region;
  /// The id of the VPC Subnet for this interface.
  final pulumi.Input<int> subnetId;
  /// The mask that separates host bits from network bits for the address or address_range.
  final pulumi.Input<String> subnetMask;
  /// The id of the parent VPC for the list of VPC IPs.
  ///
  /// * `filter` - (Optional) A set of filters used to select Linode VPC IPs that meet certain requirements.
  final pulumi.Input<int> vpcId;

  /// Creates a new [GetVpcIpsVpcIp].
  /// [active] True if the VPC interface is in use, meaning that the Linode was powered on using the config_id to which the interface belongs. Otherwise false.
  /// [address] An IPv4 address configured for this VPC interface. These follow the RFC 1918 private address format. Null if an address_range.
  /// [addressRange] A range of IPv4 addresses configured for this VPC interface. Null if a single address.
  /// [configId] The globally general entity identifier for the Linode configuration profile where the VPC is included.
  /// [gateway] The default gateway for the VPC subnet that the IP or IP range belongs to.
  /// [interfaceId] The globally general API entity identifier for the Linode interface.
  /// [ipv6Addresses] The addresses within the prefix that the interface is associated with.
  /// [ipv6IsPublic] The is_public setting for the interface associated with this address.
  /// [ipv6Range] The /64 prefix, in CIDR notation, assigned to an interface.
  /// [linodeId] The identifier for the Linode the VPC interface currently belongs to.
  /// [nat11] The public IP address used for NAT 1:1 with the VPC. This is empty if NAT 1:1 isn't used.
  /// [prefix] The number of bits set in the subnet mask.
  /// [region] The region of the VPC.
  /// [subnetId] The id of the VPC Subnet for this interface.
  /// [subnetMask] The mask that separates host bits from network bits for the address or address_range.
  /// [vpcId] The id of the parent VPC for the list of VPC IPs.
  const GetVpcIpsVpcIp({
    required this.active,
    required this.address,
    required this.addressRange,
    required this.configId,
    required this.gateway,
    required this.interfaceId,
    required this.ipv6Addresses,
    required this.ipv6IsPublic,
    required this.ipv6Range,
    required this.linodeId,
    required this.nat11,
    required this.prefix,
    required this.region,
    required this.subnetId,
    required this.subnetMask,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'address': address,
      'addressRange': addressRange,
      'configId': configId,
      'gateway': gateway,
      'interfaceId': interfaceId,
      'ipv6Addresses': pulumi.Input.mapInputValue<List<GetVpcIpsVpcIpIpv6Address>, List<Map<String, dynamic>>>(ipv6Addresses, (value) => pulumi.Input.encodeList<GetVpcIpsVpcIpIpv6Address, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipv6IsPublic': ipv6IsPublic,
      'ipv6Range': ipv6Range,
      'linodeId': linodeId,
      'nat11': nat11,
      'prefix': prefix,
      'region': region,
      'subnetId': subnetId,
      'subnetMask': subnetMask,
      'vpcId': vpcId,
    };
  }

  factory GetVpcIpsVpcIp.fromMap(Map<String, dynamic> map) {
    return GetVpcIpsVpcIp(
      active: pulumi.Input.fromValue(map['active'] as bool),
      address: pulumi.Input.fromValue(map['address'] as String),
      addressRange: pulumi.Input.fromValue(map['addressRange'] as String),
      configId: pulumi.Input.fromValue(map['configId'] as int),
      gateway: pulumi.Input.fromValue(map['gateway'] as String),
      interfaceId: pulumi.Input.fromValue(map['interfaceId'] as int),
      ipv6Addresses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcIpsVpcIpIpv6Address>(map['ipv6Addresses']!, (value) => GetVpcIpsVpcIpIpv6Address.fromMap((value as Map).cast<String, dynamic>()))),
      ipv6IsPublic: pulumi.Input.fromValue(map['ipv6IsPublic'] as bool),
      ipv6Range: pulumi.Input.fromValue(map['ipv6Range'] as String),
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
      nat11: pulumi.Input.fromValue(map['nat11'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as int),
      region: pulumi.Input.fromValue(map['region'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as int),
      subnetMask: pulumi.Input.fromValue(map['subnetMask'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as int),
    );
  }
}

