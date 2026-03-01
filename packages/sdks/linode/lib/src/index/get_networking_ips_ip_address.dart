// ignore_for_file: unused_element, unnecessary_cast

import 'get_networking_ips_ip_address_vpc_nat11.dart';

class GetNetworkingIpsIpAddress {
  /// The IPv4 address that is configured as a 1:1 NAT for this VPC interface.
  final String address;
  /// The default gateway for this address.
  final String gateway;
  /// The ID of the interface this address is assigned to.
  final int interfaceId;
  /// The ID of the Linode this address currently belongs to.
  final int linodeId;
  /// The number of bits set in the subnet mask.
  final int prefix;
  /// Whether this is a public or private IP address.
  final bool public;
  /// The reverse DNS assigned to this address. For public IPv4 addresses, this will be set to a default value provided by Linode if not explicitly set.
  final String rdns;
  /// The Region this IP address resides in. See all regions [here](https://api.linode.com/v4/regions).
  final String region;
  /// Whether this IP address is a reserved IP.
  final bool reserved;
  /// The mask that separates host bits from network bits for this address.
  final String subnetMask;
  /// The type of address this is (ipv4, ipv6, ipv6/pool, ipv6/range).
  final String type;
  /// Contains information about the NAT 1:1 mapping of a public IP address to a VPC subnet.
  final GetNetworkingIpsIpAddressVpcNat11 vpcNat11;

  /// Creates a new [GetNetworkingIpsIpAddress].
  /// [address] The IPv4 address that is configured as a 1:1 NAT for this VPC interface.
  /// [gateway] The default gateway for this address.
  /// [interfaceId] The ID of the interface this address is assigned to.
  /// [linodeId] The ID of the Linode this address currently belongs to.
  /// [prefix] The number of bits set in the subnet mask.
  /// [public] Whether this is a public or private IP address.
  /// [rdns] The reverse DNS assigned to this address. For public IPv4 addresses, this will be set to a default value provided by Linode if not explicitly set.
  /// [region] The Region this IP address resides in. See all regions [here](https://api.linode.com/v4/regions).
  /// [reserved] Whether this IP address is a reserved IP.
  /// [subnetMask] The mask that separates host bits from network bits for this address.
  /// [type] The type of address this is (ipv4, ipv6, ipv6/pool, ipv6/range).
  /// [vpcNat11] Contains information about the NAT 1:1 mapping of a public IP address to a VPC subnet.
  GetNetworkingIpsIpAddress({
    required this.address,
    required this.gateway,
    required this.interfaceId,
    required this.linodeId,
    required this.prefix,
    required this.public,
    required this.rdns,
    required this.region,
    required this.reserved,
    required this.subnetMask,
    required this.type,
    required this.vpcNat11,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'gateway': gateway,
      'interfaceId': interfaceId,
      'linodeId': linodeId,
      'prefix': prefix,
      'public': public,
      'rdns': rdns,
      'region': region,
      'reserved': reserved,
      'subnetMask': subnetMask,
      'type': type,
      'vpcNat11': vpcNat11.toMap(),
    };
  }

  factory GetNetworkingIpsIpAddress.fromMap(Map<String, dynamic> map) {
    return GetNetworkingIpsIpAddress(
      address: map['address'] as String,
      gateway: map['gateway'] as String,
      interfaceId: map['interfaceId'] as int,
      linodeId: map['linodeId'] as int,
      prefix: map['prefix'] as int,
      public: map['public'] as bool,
      rdns: map['rdns'] as String,
      region: map['region'] as String,
      reserved: map['reserved'] as bool,
      subnetMask: map['subnetMask'] as String,
      type: map['type'] as String,
      vpcNat11: GetNetworkingIpsIpAddressVpcNat11.fromMap((map['vpcNat11'] as Map).cast<String, dynamic>()),
    );
  }
}

