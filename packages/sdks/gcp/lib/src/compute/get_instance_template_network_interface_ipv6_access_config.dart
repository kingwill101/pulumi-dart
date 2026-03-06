// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTemplateNetworkInterfaceIpv6AccessConfig {
  /// The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. The field is output only, an IPv6 address from a subnetwork associated with the instance will be allocated dynamically.
  final pulumi.Input<String> externalIpv6;
  /// The prefix length of the external IPv6 range.
  final pulumi.Input<String> externalIpv6PrefixLength;
  /// The name of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  final pulumi.Input<String> name;
  /// The [networking tier][network-tier] used for configuring
  /// this instance template. This field can take the following values: PREMIUM or
  /// STANDARD. If this field is not specified, it is assumed to be PREMIUM.
  final pulumi.Input<String> networkTier;
  /// The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  final pulumi.Input<String> publicPtrDomainName;

  /// Creates a new [GetInstanceTemplateNetworkInterfaceIpv6AccessConfig].
  /// [externalIpv6] The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. The field is output only, an IPv6 address from a subnetwork associated with the instance will be allocated dynamically.
  /// [externalIpv6PrefixLength] The prefix length of the external IPv6 range.
  /// [name] The name of the instance template. One of `name`, `filter` or `self_link_unique` must be provided.
  /// [networkTier] The [networking tier][network-tier] used for configuring
  /// [publicPtrDomainName] The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  const GetInstanceTemplateNetworkInterfaceIpv6AccessConfig({
    required this.externalIpv6,
    required this.externalIpv6PrefixLength,
    required this.name,
    required this.networkTier,
    required this.publicPtrDomainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpv6': externalIpv6,
      'externalIpv6PrefixLength': externalIpv6PrefixLength,
      'name': name,
      'networkTier': networkTier,
      'publicPtrDomainName': publicPtrDomainName,
    };
  }

  factory GetInstanceTemplateNetworkInterfaceIpv6AccessConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateNetworkInterfaceIpv6AccessConfig(
      externalIpv6: pulumi.Input.fromValue(map['externalIpv6'] as String),
      externalIpv6PrefixLength: pulumi.Input.fromValue(map['externalIpv6PrefixLength'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkTier: pulumi.Input.fromValue(map['networkTier'] as String),
      publicPtrDomainName: pulumi.Input.fromValue(map['publicPtrDomainName'] as String),
    );
  }
}

