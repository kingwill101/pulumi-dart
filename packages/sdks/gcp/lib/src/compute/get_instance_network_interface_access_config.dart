// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceNetworkInterfaceAccessConfig {
  /// If the instance has an access config, either the given external ip (in the `nat_ip` field) or the ephemeral (generated) ip (if you didn't provide one).
  final pulumi.Input<String> natIp;
  /// The [networking tier][network-tier] used for configuring this instance. One of `PREMIUM` or `STANDARD`.
  final pulumi.Input<String> networkTier;
  /// The DNS domain name for the public PTR record.
  final pulumi.Input<String> publicPtrDomainName;
  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [GetInstanceNetworkInterfaceAccessConfig].
  /// [natIp] If the instance has an access config, either the given external ip (in the `nat_ip` field) or the ephemeral (generated) ip (if you didn't provide one).
  /// [networkTier] The [networking tier][network-tier] used for configuring this instance. One of `PREMIUM` or `STANDARD`.
  /// [publicPtrDomainName] The DNS domain name for the public PTR record.
  /// [securityPolicy] A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  GetInstanceNetworkInterfaceAccessConfig({
    required this.natIp,
    required this.networkTier,
    required this.publicPtrDomainName,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natIp': natIp,
      'networkTier': networkTier,
      'publicPtrDomainName': publicPtrDomainName,
      'securityPolicy': securityPolicy,
    };
  }

  factory GetInstanceNetworkInterfaceAccessConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkInterfaceAccessConfig(
      natIp: (map['natIp'] as String).input(),
      networkTier: (map['networkTier'] as String).input(),
      publicPtrDomainName: (map['publicPtrDomainName'] as String).input(),
      securityPolicy: (map['securityPolicy'] as String).input(),
    );
  }
}

