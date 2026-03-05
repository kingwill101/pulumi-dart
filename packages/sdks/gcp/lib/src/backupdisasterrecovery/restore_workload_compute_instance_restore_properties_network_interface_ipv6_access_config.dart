// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig {
  /// (Optional)
  final pulumi.Input<String>? externalIp;
  /// (Optional)
  final pulumi.Input<String>? externalIpv6;
  /// (Optional)
  final pulumi.Input<int>? externalIpv6PrefixLength;
  /// Required. The resource name of the backup instance.
  final pulumi.Input<String>? name;
  /// Possible values: ["NETWORK_TIER_UNSPECIFIED", "PREMIUM", "STANDARD"]
  final pulumi.Input<String>? networkTier;
  /// (Optional)
  final pulumi.Input<String>? publicPtrDomainName;
  /// (Optional)
  final pulumi.Input<bool>? setPublicPtr;
  /// Output only. Type of the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig].
  /// [externalIp] (Optional)
  /// [externalIpv6] (Optional)
  /// [externalIpv6PrefixLength] (Optional)
  /// [name] Required. The resource name of the backup instance.
  /// [networkTier] Possible values: ["NETWORK_TIER_UNSPECIFIED", "PREMIUM", "STANDARD"]
  /// [publicPtrDomainName] (Optional)
  /// [setPublicPtr] (Optional)
  /// [type] Output only. Type of the resource.
  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig({
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

  factory RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig(
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

