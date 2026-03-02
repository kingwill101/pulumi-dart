// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'networking_ip_vpc_nat11.dart';

/// Input properties used for looking up and filtering NetworkingIp resources.
class NetworkingIpState {
  /// The IPv4 address that is configured as a 1:1 NAT for this VPC interface.
  final pulumi.Input<String>? address;
  /// The default gateway for this address.
  final pulumi.Input<String>? gateway;
  /// The ID of the Linode to allocate an IPv4 address for. **Required** when `reserved` is `false` or not set. Updating this field on an ephemeral IP will trigger a recreation. Conflicts with `region`.
  final pulumi.Input<int>? linodeId;
  /// The number of bits set in the subnet mask.
  final pulumi.Input<int>? prefix;
  /// Whether the IP address is public. Defaults to true.
  final pulumi.Input<bool>? public;
  /// The reverse DNS assigned to this address. For public IPv4 addresses, this will be set to a default value provided by Linode if not explicitly set.
  final pulumi.Input<String>? rdns;
  /// The region for the reserved IPv4 address. Required when reserved is true and linode_id is not set.
  final pulumi.Input<String>? region;
  /// Whether the IPv4 address should be reserved.
  final pulumi.Input<bool>? reserved;
  /// The mask that separates host bits from network bits for this address.
  final pulumi.Input<String>? subnetMask;
  /// The type of IP address. (ipv4, ipv6, etc.)
  final pulumi.Input<String>? type;
  /// Contains information about the NAT 1:1 mapping of a public IP address to a VPC subnet.
  final pulumi.Input<NetworkingIpVpcNat11>? vpcNat11;

  /// Creates a new [NetworkingIpState].
  /// [address] The IPv4 address that is configured as a 1:1 NAT for this VPC interface.
  /// [gateway] The default gateway for this address.
  /// [linodeId] The ID of the Linode to allocate an IPv4 address for. **Required** when `reserved` is `false` or not set. Updating this field on an ephemeral IP will trigger a recreation. Conflicts with `region`.
  /// [prefix] The number of bits set in the subnet mask.
  /// [public] Whether the IP address is public. Defaults to true.
  /// [rdns] The reverse DNS assigned to this address. For public IPv4 addresses, this will be set to a default value provided by Linode if not explicitly set.
  /// [region] The region for the reserved IPv4 address. Required when reserved is true and linode_id is not set.
  /// [reserved] Whether the IPv4 address should be reserved.
  /// [subnetMask] The mask that separates host bits from network bits for this address.
  /// [type] The type of IP address. (ipv4, ipv6, etc.)
  /// [vpcNat11] Contains information about the NAT 1:1 mapping of a public IP address to a VPC subnet.
  NetworkingIpState({
    this.address,
    this.gateway,
    this.linodeId,
    this.prefix,
    this.public,
    this.rdns,
    this.region,
    this.reserved,
    this.subnetMask,
    this.type,
    this.vpcNat11,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'gateway': ?gateway,
      'linodeId': ?linodeId,
      'prefix': ?prefix,
      'public': ?public,
      'rdns': ?rdns,
      'region': ?region,
      'reserved': ?reserved,
      'subnetMask': ?subnetMask,
      'type': ?type,
      'vpcNat11': ?pulumi.Input.mapOptionalInputValue<NetworkingIpVpcNat11, Map<String, dynamic>>(vpcNat11, (value) => value.toMap()),
    };
  }

  factory NetworkingIpState.fromMap(Map<String, dynamic> map) {
    return NetworkingIpState(
      address: map['address'] == null ? null : (map['address'] as String).input(),
      gateway: map['gateway'] == null ? null : (map['gateway'] as String).input(),
      linodeId: map['linodeId'] == null ? null : (map['linodeId'] as int).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as int).input(),
      public: map['public'] == null ? null : (map['public'] as bool).input(),
      rdns: map['rdns'] == null ? null : (map['rdns'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      reserved: map['reserved'] == null ? null : (map['reserved'] as bool).input(),
      subnetMask: map['subnetMask'] == null ? null : (map['subnetMask'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      vpcNat11: map['vpcNat11'] == null ? null : (NetworkingIpVpcNat11.fromMap((map['vpcNat11'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

