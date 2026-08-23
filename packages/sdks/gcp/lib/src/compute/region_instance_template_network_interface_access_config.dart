// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceTemplateNetworkInterfaceAccessConfig {
  /// The IP address that will be 1:1 mapped to the instance's
  /// network ip. If not given, one will be generated.
  final pulumi.Input<String>? natIp;
  /// The service-level to be provided for IPv6 traffic when the
  /// subnet has an external subnet. Only PREMIUM and STANDARD tier is valid for IPv6.
  final pulumi.Input<String>? networkTier;
  /// The DNS domain name for the public PTR record.The DNS domain name for the public PTR record.
  final pulumi.Input<String>? publicPtrDomainName;

  /// Creates a new [RegionInstanceTemplateNetworkInterfaceAccessConfig].
  /// [natIp] The IP address that will be 1:1 mapped to the instance's
  /// [networkTier] The service-level to be provided for IPv6 traffic when the
  /// [publicPtrDomainName] The DNS domain name for the public PTR record.The DNS domain name for the public PTR record.
  const RegionInstanceTemplateNetworkInterfaceAccessConfig({
    this.natIp,
    this.networkTier,
    this.publicPtrDomainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natIp': ?natIp,
      'networkTier': ?networkTier,
      'publicPtrDomainName': ?publicPtrDomainName,
    };
  }

  factory RegionInstanceTemplateNetworkInterfaceAccessConfig.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateNetworkInterfaceAccessConfig(
      natIp: (() { final guardedValue = map['natIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkTier: (() { final guardedValue = map['networkTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicPtrDomainName: (() { final guardedValue = map['publicPtrDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
