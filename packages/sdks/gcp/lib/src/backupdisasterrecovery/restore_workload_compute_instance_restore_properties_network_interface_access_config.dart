// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig {
  /// (Optional)
  final pulumi.Input<String>? externalIp;
  /// (Optional)
  final pulumi.Input<String>? externalIpv6;
  /// (Optional)
  final pulumi.Input<int>? externalIpv6PrefixLength;
  /// Optional. The name of this access configuration.
  final pulumi.Input<String>? name;
  /// Possible values are: `NETWORK_TIER_UNSPECIFIED`, `PREMIUM`, `STANDARD`.
  final pulumi.Input<String>? networkTier;
  /// (Optional)
  final pulumi.Input<String>? publicPtrDomainName;
  /// (Optional)
  final pulumi.Input<bool>? setPublicPtr;
  /// Optional. The type of configuration.
  /// Possible values are: `ACCESS_TYPE_UNSPECIFIED`, `ONE_TO_ONE_NAT`, `DIRECT_IPV6`.
  final pulumi.Input<String>? type;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig].
  /// [externalIp] (Optional)
  /// [externalIpv6] (Optional)
  /// [externalIpv6PrefixLength] (Optional)
  /// [name] Optional. The name of this access configuration.
  /// [networkTier] Possible values are: `NETWORK_TIER_UNSPECIFIED`, `PREMIUM`, `STANDARD`.
  /// [publicPtrDomainName] (Optional)
  /// [setPublicPtr] (Optional)
  /// [type] Optional. The type of configuration.
  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig({
    this.externalIp,
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    this.networkTier,
    this.publicPtrDomainName,
    this.setPublicPtr,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': ?externalIp,
      'externalIpv6': ?externalIpv6,
      'externalIpv6PrefixLength': ?externalIpv6PrefixLength,
      'name': ?name,
      'networkTier': ?networkTier,
      'publicPtrDomainName': ?publicPtrDomainName,
      'setPublicPtr': ?setPublicPtr,
      'type': ?type,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig(
      externalIp: map['externalIp'] == null ? null : (map['externalIp'] as String).input(),
      externalIpv6: map['externalIpv6'] == null ? null : (map['externalIpv6'] as String).input(),
      externalIpv6PrefixLength: map['externalIpv6PrefixLength'] == null ? null : (map['externalIpv6PrefixLength'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkTier: map['networkTier'] == null ? null : (map['networkTier'] as String).input(),
      publicPtrDomainName: map['publicPtrDomainName'] == null ? null : (map['publicPtrDomainName'] as String).input(),
      setPublicPtr: map['setPublicPtr'] == null ? null : (map['setPublicPtr'] as bool).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

