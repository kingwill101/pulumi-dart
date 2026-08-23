// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerIpamPoolStaticCidr resources.
class NetworkManagerIpamPoolStaticCidrState {
  /// Specifies a list of IPv4 or IPv6 IP address prefixes which will be allocated to the Static CIDR.
  ///
  /// &gt; **Note:** Exactly one of `addressPrefixes` or `numberOfIpAddressesToAllocate` must be specified.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// The ID of the Network Manager IP Address Management (IPAM) Pool. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  final pulumi.Input<String>? ipamPoolId;
  /// The name which should be used for this Network Manager IPAM Pool Static CIDR. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  final pulumi.Input<String>? name;
  /// The number of IP addresses to allocate to the Static CIDR. The value must be a string representing a positive integer which is a positive power of 2, e.g., `"16"`.
  ///
  /// &gt; **Note:** Exactly one of `addressPrefixes` or `numberOfIpAddressesToAllocate` must be specified.
  final pulumi.Input<String>? numberOfIpAddressesToAllocate;

  /// Creates a new [NetworkManagerIpamPoolStaticCidrState].
  /// [addressPrefixes] Specifies a list of IPv4 or IPv6 IP address prefixes which will be allocated to the Static CIDR.
  /// [ipamPoolId] The ID of the Network Manager IP Address Management (IPAM) Pool. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  /// [name] The name which should be used for this Network Manager IPAM Pool Static CIDR. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  /// [numberOfIpAddressesToAllocate] The number of IP addresses to allocate to the Static CIDR. The value must be a string representing a positive integer which is a positive power of 2, e.g., `"16"`.
  const NetworkManagerIpamPoolStaticCidrState({
    this.addressPrefixes,
    this.ipamPoolId,
    this.name,
    this.numberOfIpAddressesToAllocate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'ipamPoolId': ?ipamPoolId,
      'name': ?name,
      'numberOfIpAddressesToAllocate': ?numberOfIpAddressesToAllocate,
    };
  }

  factory NetworkManagerIpamPoolStaticCidrState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerIpamPoolStaticCidrState(
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipamPoolId: (() { final guardedValue = map['ipamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfIpAddressesToAllocate: (() { final guardedValue = map['numberOfIpAddressesToAllocate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
