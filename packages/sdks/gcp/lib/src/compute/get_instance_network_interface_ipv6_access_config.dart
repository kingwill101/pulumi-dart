// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceNetworkInterfaceIpv6AccessConfig {
  /// The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  final pulumi.Input<String> externalIpv6;

  /// The prefix length of the external IPv6 range.
  final pulumi.Input<String> externalIpv6PrefixLength;

  /// The name of the instance. One of `name` or `self_link` must be provided.
  final pulumi.Input<String> name;

  /// The [networking tier][network-tier] used for configuring this instance. One of `PREMIUM` or `STANDARD`.
  final pulumi.Input<String> networkTier;

  /// The DNS domain name for the public PTR record.
  final pulumi.Input<String> publicPtrDomainName;

  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [GetInstanceNetworkInterfaceIpv6AccessConfig].
  /// [externalIpv6] The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  /// [externalIpv6PrefixLength] The prefix length of the external IPv6 range.
  /// [name] The name of the instance. One of `name` or `self_link` must be provided.
  /// [networkTier] The [networking tier][network-tier] used for configuring this instance. One of `PREMIUM` or `STANDARD`.
  /// [publicPtrDomainName] The DNS domain name for the public PTR record.
  /// [securityPolicy] A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  GetInstanceNetworkInterfaceIpv6AccessConfig({
    required this.externalIpv6,
    required this.externalIpv6PrefixLength,
    required this.name,
    required this.networkTier,
    required this.publicPtrDomainName,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpv6': externalIpv6,
      'externalIpv6PrefixLength': externalIpv6PrefixLength,
      'name': name,
      'networkTier': networkTier,
      'publicPtrDomainName': publicPtrDomainName,
      'securityPolicy': securityPolicy,
    };
  }

  factory GetInstanceNetworkInterfaceIpv6AccessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceNetworkInterfaceIpv6AccessConfig(
      externalIpv6: pulumi.Input.fromValue(map['externalIpv6'] as String),
      externalIpv6PrefixLength: pulumi.Input.fromValue(
        map['externalIpv6PrefixLength'] as String,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkTier: pulumi.Input.fromValue(map['networkTier'] as String),
      publicPtrDomainName: pulumi.Input.fromValue(
        map['publicPtrDomainName'] as String,
      ),
      securityPolicy: pulumi.Input.fromValue(map['securityPolicy'] as String),
    );
  }
}
