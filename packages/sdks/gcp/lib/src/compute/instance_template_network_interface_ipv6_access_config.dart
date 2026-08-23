// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceTemplateNetworkInterfaceIpv6AccessConfig {
  /// The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. The field is output only, an IPv6 address from a subnetwork associated with the instance will be allocated dynamically.
  final pulumi.Input<String>? externalIpv6;
  /// The prefix length of the external IPv6 range.
  final pulumi.Input<String>? externalIpv6PrefixLength;
  /// The name of the instance template. If you leave
  /// this blank, the provider will auto-generate a unique name.
  final pulumi.Input<String>? name;
  /// The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6
  final pulumi.Input<String> networkTier;
  /// The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  final pulumi.Input<String>? publicPtrDomainName;

  /// Creates a new [InstanceTemplateNetworkInterfaceIpv6AccessConfig].
  /// [externalIpv6] The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. The field is output only, an IPv6 address from a subnetwork associated with the instance will be allocated dynamically.
  /// [externalIpv6PrefixLength] The prefix length of the external IPv6 range.
  /// [name] The name of the instance template. If you leave
  /// [networkTier] The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6
  /// [publicPtrDomainName] The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  const InstanceTemplateNetworkInterfaceIpv6AccessConfig({
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    required this.networkTier,
    this.publicPtrDomainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpv6': ?externalIpv6,
      'externalIpv6PrefixLength': ?externalIpv6PrefixLength,
      'name': ?name,
      'networkTier': networkTier,
      'publicPtrDomainName': ?publicPtrDomainName,
    };
  }

  factory InstanceTemplateNetworkInterfaceIpv6AccessConfig.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateNetworkInterfaceIpv6AccessConfig(
      externalIpv6: (() { final guardedValue = map['externalIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalIpv6PrefixLength: (() { final guardedValue = map['externalIpv6PrefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkTier: pulumi.Input.fromValue(map['networkTier'] as String),
      publicPtrDomainName: (() { final guardedValue = map['publicPtrDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
