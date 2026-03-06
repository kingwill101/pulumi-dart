// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceNetworkInterfaceAccessConfig {
  /// The IP address that will be 1:1 mapped to the instance's
  /// network ip. If not given, one will be generated.
  final pulumi.Input<String>? natIp;
  /// The service-level to be provided for IPv6 traffic when the
  /// subnet has an external subnet. Only PREMIUM or STANDARD tier is valid for IPv6.
  final pulumi.Input<String>? networkTier;
  /// The domain name to be used when creating DNSv6
  /// records for the external IPv6 ranges..
  final pulumi.Input<String>? publicPtrDomainName;
  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final pulumi.Input<String>? securityPolicy;

  /// Creates a new [InstanceNetworkInterfaceAccessConfig].
  /// [natIp] The IP address that will be 1:1 mapped to the instance's
  /// [networkTier] The service-level to be provided for IPv6 traffic when the
  /// [publicPtrDomainName] The domain name to be used when creating DNSv6
  /// [securityPolicy] A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  const InstanceNetworkInterfaceAccessConfig({
    this.natIp,
    this.networkTier,
    this.publicPtrDomainName,
    this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natIp': ?natIp,
      'networkTier': ?networkTier,
      'publicPtrDomainName': ?publicPtrDomainName,
      'securityPolicy': ?securityPolicy,
    };
  }

  factory InstanceNetworkInterfaceAccessConfig.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkInterfaceAccessConfig(
      natIp: (() { final guardedValue = map['natIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkTier: (() { final guardedValue = map['networkTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicPtrDomainName: (() { final guardedValue = map['publicPtrDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityPolicy: (() { final guardedValue = map['securityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

