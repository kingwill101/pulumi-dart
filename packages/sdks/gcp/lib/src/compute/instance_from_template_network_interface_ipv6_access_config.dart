// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromTemplateNetworkInterfaceIpv6AccessConfig {
  /// The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  final pulumi.Input<String>? externalIpv6;
  /// The prefix length of the external IPv6 range.
  final pulumi.Input<String>? externalIpv6PrefixLength;
  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6
  final pulumi.Input<String> networkTier;
  /// The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  final pulumi.Input<String>? publicPtrDomainName;
  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final pulumi.Input<String>? securityPolicy;

  /// Creates a new [InstanceFromTemplateNetworkInterfaceIpv6AccessConfig].
  /// [externalIpv6] The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  /// [externalIpv6PrefixLength] The prefix length of the external IPv6 range.
  /// [name] A unique name for the resource, required by GCE.
  /// [networkTier] The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6
  /// [publicPtrDomainName] The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  /// [securityPolicy] A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  const InstanceFromTemplateNetworkInterfaceIpv6AccessConfig({
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    required this.networkTier,
    this.publicPtrDomainName,
    this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpv6': ?externalIpv6,
      'externalIpv6PrefixLength': ?externalIpv6PrefixLength,
      'name': ?name,
      'networkTier': networkTier,
      'publicPtrDomainName': ?publicPtrDomainName,
      'securityPolicy': ?securityPolicy,
    };
  }

  factory InstanceFromTemplateNetworkInterfaceIpv6AccessConfig.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateNetworkInterfaceIpv6AccessConfig(
      externalIpv6: (() { final guardedValue = map['externalIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalIpv6PrefixLength: (() { final guardedValue = map['externalIpv6PrefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkTier: pulumi.Input.fromValue(map['networkTier'] as String),
      publicPtrDomainName: (() { final guardedValue = map['publicPtrDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityPolicy: (() { final guardedValue = map['securityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
