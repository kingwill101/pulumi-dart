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
      externalIp: (() { final guardedValue = map['externalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalIpv6: (() { final guardedValue = map['externalIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalIpv6PrefixLength: (() { final guardedValue = map['externalIpv6PrefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkTier: (() { final guardedValue = map['networkTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicPtrDomainName: (() { final guardedValue = map['publicPtrDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      setPublicPtr: (() { final guardedValue = map['setPublicPtr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

