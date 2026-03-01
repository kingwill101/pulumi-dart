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
    pulumi.Output<String>? address,
    pulumi.Output<String>? gateway,
    pulumi.Output<int>? linodeId,
    pulumi.Output<int>? prefix,
    pulumi.Output<bool>? public,
    pulumi.Output<String>? rdns,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? reserved,
    pulumi.Output<String>? subnetMask,
    pulumi.Output<String>? type,
    pulumi.Output<NetworkingIpVpcNat11>? vpcNat11,
  }) :
      address = pulumi.Input.asOptionalInput<String>(address),
      gateway = pulumi.Input.asOptionalInput<String>(gateway),
      linodeId = pulumi.Input.asOptionalInput<int>(linodeId),
      prefix = pulumi.Input.asOptionalInput<int>(prefix),
      public = pulumi.Input.asOptionalInput<bool>(public),
      rdns = pulumi.Input.asOptionalInput<String>(rdns),
      region = pulumi.Input.asOptionalInput<String>(region),
      reserved = pulumi.Input.asOptionalInput<bool>(reserved),
      subnetMask = pulumi.Input.asOptionalInput<String>(subnetMask),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpcNat11 = pulumi.Input.asOptionalInput<NetworkingIpVpcNat11>(vpcNat11);

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
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      gateway: map['gateway'] == null ? null : pulumi.Output.create<String>(map['gateway'] as String),
      linodeId: map['linodeId'] == null ? null : pulumi.Output.create<int>(map['linodeId'] as int),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<int>(map['prefix'] as int),
      public: map['public'] == null ? null : pulumi.Output.create<bool>(map['public'] as bool),
      rdns: map['rdns'] == null ? null : pulumi.Output.create<String>(map['rdns'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reserved: map['reserved'] == null ? null : pulumi.Output.create<bool>(map['reserved'] as bool),
      subnetMask: map['subnetMask'] == null ? null : pulumi.Output.create<String>(map['subnetMask'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpcNat11: map['vpcNat11'] == null ? null : pulumi.Output.create<NetworkingIpVpcNat11>(NetworkingIpVpcNat11.fromMap((map['vpcNat11'] as Map).cast<String, dynamic>())),
    );
  }
}

