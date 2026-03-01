// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerIpamPoolStaticCidr resources.
class NetworkManagerIpamPoolStaticCidrState {
  /// Specifies a list of IPv4 or IPv6 IP address prefixes which will be allocated to the Static CIDR.
  ///
  /// > **Note:** Exactly one of `address_prefixes` or `number_of_ip_addresses_to_allocate` must be specified.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// The ID of the Network Manager IP Address Management (IPAM) Pool. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  final pulumi.Input<String>? ipamPoolId;
  /// The name which should be used for this Network Manager IPAM Pool Static CIDR. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  final pulumi.Input<String>? name;
  /// The number of IP addresses to allocate to the Static CIDR. The value must be a string representing a positive integer which is a positive power of 2, e.g., `"16"`.
  ///
  /// > **Note:** Exactly one of `address_prefixes` or `number_of_ip_addresses_to_allocate` must be specified.
  final pulumi.Input<String>? numberOfIpAddressesToAllocate;

  /// Creates a new [NetworkManagerIpamPoolStaticCidrState].
  /// [addressPrefixes] Specifies a list of IPv4 or IPv6 IP address prefixes which will be allocated to the Static CIDR.
  /// [ipamPoolId] The ID of the Network Manager IP Address Management (IPAM) Pool. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  /// [name] The name which should be used for this Network Manager IPAM Pool Static CIDR. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  /// [numberOfIpAddressesToAllocate] The number of IP addresses to allocate to the Static CIDR. The value must be a string representing a positive integer which is a positive power of 2, e.g., `"16"`.
  NetworkManagerIpamPoolStaticCidrState({
    pulumi.Output<List<String>>? addressPrefixes,
    pulumi.Output<String>? ipamPoolId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? numberOfIpAddressesToAllocate,
  }) :
      addressPrefixes = pulumi.Input.asOptionalInput<List<String>>(addressPrefixes),
      ipamPoolId = pulumi.Input.asOptionalInput<String>(ipamPoolId),
      name = pulumi.Input.asOptionalInput<String>(name),
      numberOfIpAddressesToAllocate = pulumi.Input.asOptionalInput<String>(numberOfIpAddressesToAllocate);

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
      addressPrefixes: map['addressPrefixes'] == null ? null : pulumi.Output.create<List<String>>((map['addressPrefixes'] as List).cast<String>()),
      ipamPoolId: map['ipamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipamPoolId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      numberOfIpAddressesToAllocate: map['numberOfIpAddressesToAllocate'] == null ? null : pulumi.Output.create<String>(map['numberOfIpAddressesToAllocate'] as String),
    );
  }
}

