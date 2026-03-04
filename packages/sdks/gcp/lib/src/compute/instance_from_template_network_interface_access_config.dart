// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromTemplateNetworkInterfaceAccessConfig {
  /// The IP address that is be 1:1 mapped to the instance's network ip.
  final pulumi.Input<String>? natIp;

  /// The networking tier used for configuring this instance. One of PREMIUM or STANDARD.
  final pulumi.Input<String>? networkTier;

  /// The DNS domain name for the public PTR record.
  final pulumi.Input<String>? publicPtrDomainName;

  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final pulumi.Input<String>? securityPolicy;

  /// Creates a new [InstanceFromTemplateNetworkInterfaceAccessConfig].
  /// [natIp] The IP address that is be 1:1 mapped to the instance's network ip.
  /// [networkTier] The networking tier used for configuring this instance. One of PREMIUM or STANDARD.
  /// [publicPtrDomainName] The DNS domain name for the public PTR record.
  /// [securityPolicy] A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  InstanceFromTemplateNetworkInterfaceAccessConfig({
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

  factory InstanceFromTemplateNetworkInterfaceAccessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceFromTemplateNetworkInterfaceAccessConfig(
      natIp: (() {
        final guardedValue = map['natIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkTier: (() {
        final guardedValue = map['networkTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicPtrDomainName: (() {
        final guardedValue = map['publicPtrDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityPolicy: (() {
        final guardedValue = map['securityPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
