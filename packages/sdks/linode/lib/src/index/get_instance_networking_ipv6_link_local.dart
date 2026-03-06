// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_networking_ipv6_link_local_vpc_nat11.dart';

class GetInstanceNetworkingIpv6LinkLocal {
  /// The address.
  final pulumi.Input<String> address;
  /// The default gateway for this address.
  final pulumi.Input<String> gateway;
  /// The globally general API entity identifier for the Linode interface.
  final pulumi.Input<int> interfaceId;
  /// The Linode instance's ID.
  final pulumi.Input<int> linodeId;
  /// The network prefix.
  final pulumi.Input<int> prefix;
  /// Whether this is a public or private IP address.
  final pulumi.Input<bool> public;
  /// The reverse DNS assigned to this address.
  final pulumi.Input<String> rdns;
  /// (Filterable) The Region this address resides in.
  final pulumi.Input<String> region;
  /// The subnet mask.
  final pulumi.Input<String> subnetMask;
  /// The type of address this is.
  final pulumi.Input<String> type;
  /// IPv4 address configured as a 1:1 NAT for this Interface.
  final pulumi.Input<GetInstanceNetworkingIpv6LinkLocalVpcNat11> vpcNat11;

  /// Creates a new [GetInstanceNetworkingIpv6LinkLocal].
  /// [address] The address.
  /// [gateway] The default gateway for this address.
  /// [interfaceId] The globally general API entity identifier for the Linode interface.
  /// [linodeId] The Linode instance's ID.
  /// [prefix] The network prefix.
  /// [public] Whether this is a public or private IP address.
  /// [rdns] The reverse DNS assigned to this address.
  /// [region] (Filterable) The Region this address resides in.
  /// [subnetMask] The subnet mask.
  /// [type] The type of address this is.
  /// [vpcNat11] IPv4 address configured as a 1:1 NAT for this Interface.
  const GetInstanceNetworkingIpv6LinkLocal({
    required this.address,
    required this.gateway,
    required this.interfaceId,
    required this.linodeId,
    required this.prefix,
    required this.public,
    required this.rdns,
    required this.region,
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
      'subnetMask': subnetMask,
      'type': type,
      'vpcNat11': pulumi.Input.mapInputValue<GetInstanceNetworkingIpv6LinkLocalVpcNat11, Map<String, dynamic>>(vpcNat11, (value) => value.toMap()),
    };
  }

  factory GetInstanceNetworkingIpv6LinkLocal.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkingIpv6LinkLocal(
      address: pulumi.Input.fromValue(map['address'] as String),
      gateway: pulumi.Input.fromValue(map['gateway'] as String),
      interfaceId: pulumi.Input.fromValue(map['interfaceId'] as int),
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
      prefix: pulumi.Input.fromValue(map['prefix'] as int),
      public: pulumi.Input.fromValue(map['public'] as bool),
      rdns: pulumi.Input.fromValue(map['rdns'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      subnetMask: pulumi.Input.fromValue(map['subnetMask'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      vpcNat11: pulumi.Input.fromValue(GetInstanceNetworkingIpv6LinkLocalVpcNat11.fromMap((map['vpcNat11']! as Map).cast<String, dynamic>())),
    );
  }
}

